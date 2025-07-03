package game_manager

import "callbreak/internal/callbreak"

type GameType string

const (
	CallbreakGame GameType = "callbreak"
)

type GameManager struct {
	Games map[string]*callbreak.Callbreak
}

func NewGameManager() *GameManager {
	return &GameManager{
		Games: make(map[string]*callbreak.Callbreak),
	}
}

// Create a new Game

func (g *GameManager) CreateGame() string {
	options := callbreak.CallbreakOptions{
		MaxTrick: 13,
	}
	game := callbreak.NewCallBreak(options)
	g.Games[game.ID] = game
	return game.ID
}
