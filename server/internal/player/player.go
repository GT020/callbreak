package player

import "callbreak/internal/cards"

type Player struct {
	ID       string
	UserName string
	Email    string
	Cards    []cards.Card
}
