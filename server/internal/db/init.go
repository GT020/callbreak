package db

import (
	"callbreak/internal/config"
	"fmt"
	"log"
	"time"

	"gorm.io/driver/mysql"
	"gorm.io/driver/postgres"
	"gorm.io/driver/sqlite"
	"gorm.io/gorm"
	"gorm.io/gorm/logger"
)

var DB *gorm.DB

func ConnectDB(cfg *config.DBConfig) (*gorm.DB, error) {
	var dialector gorm.Dialector

	switch cfg.Driver {
	case "sqlite":
		dsn := cfg.DSN
		if dsn == "" {
			dsn = "test.db"
		}
		log.Println(dsn)
		dialector = sqlite.Open(dsn)
	case "postgres":
		dsn := cfg.DSN
		if dsn == "" {
			ssl := cfg.SSLMode
			dsn = fmt.Sprintf("host=%s port=%d user=%s password=%s dbname=%s sslmode=%s",
				cfg.Host, cfg.Port, cfg.User, cfg.Password, cfg.Name, ssl)
		}
		dialector = postgres.Open(dsn)
	case "mysql":
		dsn := cfg.DSN
		if dsn == "" {
			tls := ""
			if cfg.SSLMode == "require" {
				tls = "?tls=true"
			} else {
				tls = "?tls=false"
			}
			dsn = fmt.Sprintf("%s:%s@tcp(%s:%d)/%s%s&parseTime=True&loc=Local",
				cfg.User, cfg.Password, cfg.Host, cfg.Port, cfg.Name, tls)
		}
		dialector = mysql.Open(dsn)
	default:
		return nil, fmt.Errorf("unsupported database driver: %s", cfg.Driver)
	}

	db, err := gorm.Open(dialector, &gorm.Config{
		Logger: logger.Default.LogMode(logger.Warn),
	})
	if err != nil {
		return nil, err
	}

	// Optional connection pool tuning
	sqlDB, err := db.DB()
	if err != nil {
		return nil, err
	}
	sqlDB.SetMaxOpenConns(10)
	sqlDB.SetMaxIdleConns(5)
	sqlDB.SetConnMaxLifetime(1 * time.Hour)

	return db, nil
}
