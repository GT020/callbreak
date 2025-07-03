package cards

import (
	"crypto/rand"
	"math/big"
)

type Deck struct {
	Cards []Card
	Size  int
	Start int
}

func NewDeck(cards []Card) Deck {
	return Deck{
		Cards: cards,
		Size:  len(cards),
		Start: 0,
	}
}

func GetDefaultDeck() Deck {
	cards := GetSetOfSuit(Spades)
	cards = append(cards, GetSetOfSuit(Hearts)...)
	cards = append(cards, GetSetOfSuit(Clubs)...)
	cards = append(cards, GetSetOfSuit(Diamonds)...)
	return Deck{
		Cards: cards,
		Size:  len(cards),
		Start: 0,
	}
}

func (d *Deck) AddCard(card Card) {
	d.Cards = append(d.Cards, card)
	d.Size++
}

func (d *Deck) Shuffle() {
	max := big.NewInt(52)

	for i := range d.Cards {
		j, _ := rand.Int(rand.Reader, max)
		k := int(j.Int64())
		d.Cards[i], d.Cards[k] = d.Cards[k], d.Cards[i]
	}
}

func (d *Deck) Draw(count int) []Card {
	deck := d.Cards[d.Start : d.Start+count]
	d.Start += count
	return deck
}

func (d *Deck) Reset() {
	d.Shuffle()
	d.Start = 0
}

func (d *Deck) IsEmpty() bool {
	return d.Start >= d.Size
}
