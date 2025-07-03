package db

import (
	"os/user"

	"gorm.io/gorm"
)

func InitMigrations(db *gorm.DB) error {
	err := db.AutoMigrate(&user.User{})
	return err
}
