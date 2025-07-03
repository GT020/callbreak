package config

import (
	"fmt"
	"strings"

	"github.com/spf13/viper"
)

type DBConfig struct {
	Driver   string
	Host     string
	Port     int
	User     string
	Password string
	Name     string
	SSLMode  string
	DSN      string // optional override
}

type GRPConfig struct {
	Host string
	Port int
}

type AppConfig struct {
	DB   DBConfig
	GRPC GRPConfig
}

func LoadConfig() (*AppConfig, error) {
	viper.SetConfigName("default")
	viper.SetConfigType("yaml")
	viper.AddConfigPath("./config/")
	viper.AutomaticEnv()
	viper.SetEnvKeyReplacer(strings.NewReplacer(".", "_"))

	// Defaults
	viper.SetDefault("db.sslmode", "disable")

	err := viper.ReadInConfig() // config.yaml
	if err != nil {
		fmt.Println("No default.yaml found, relying on environment variables")
	}

	var cfg AppConfig
	if err := viper.Unmarshal(&cfg); err != nil {
		return nil, fmt.Errorf("unable to decode config: %w", err)
	}

	return &cfg, nil
}
