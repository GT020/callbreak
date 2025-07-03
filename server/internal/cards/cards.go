package cards

type Suit string

const (
	Spades   Suit = "spades"
	Hearts   Suit = "hearts"
	Diamonds Suit = "diamonds"
	Clubs    Suit = "clubs"
)

type Rank int

const (
	Ace   Rank = 1
	Two   Rank = 2
	Three Rank = 3
	Four  Rank = 4
	Five  Rank = 5
	Six   Rank = 6
	Seven Rank = 7
	Eight Rank = 8
	Nine  Rank = 9
	Ten   Rank = 10
	Jack  Rank = 11
	Queen Rank = 12
	King  Rank = 13
)

type Card struct {
	Suit Suit
	Rank Rank
}

func GetSetOfSuit(suit Suit) []Card {
	var cards []Card
	for i := Ace; i <= King; i++ {
		cards = append(cards, Card{Suit: suit, Rank: i})
	}
	return cards
}
