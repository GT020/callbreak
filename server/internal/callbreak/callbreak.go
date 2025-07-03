package callbreak

import (
	"callbreak/internal/cards"
	"callbreak/internal/player"

	"github.com/rs/xid"
)

const CALLBREAK_MAX_PLAYERS = 4

type Callbreak struct {
	ID           string
	TrumpSuite   cards.Suit
	CurrentTrick int
	MaxTrick     int
	Deck         cards.Deck
	Players      []player.Player
}

type CallbreakOptions struct {
	MaxTrick int
}

func NewCallBreak(options CallbreakOptions) *Callbreak {
	deck := cards.GetDefaultDeck()
	deck.Shuffle()
	id := xid.New()
	c := &Callbreak{
		ID:           id.String(),
		TrumpSuite:   cards.Spades,
		CurrentTrick: 0,
		MaxTrick:     options.MaxTrick,
		Deck:         deck,
		Players:      make([]player.Player, 0, CALLBREAK_MAX_PLAYERS),
	}
	return c
}

func (c *Callbreak) ShuffleDeck() {
	c.Deck.Shuffle()
}

func (c *Callbreak) Deal(player *player.Player, count int) {
	cards := c.Deck.Draw(count)
	player.Cards = append(player.Cards, cards...)
}

func (c *Callbreak) Join(player player.Player) {
	c.Players = append(c.Players, player)
}
