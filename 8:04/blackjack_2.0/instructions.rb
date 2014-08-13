=begin

1) fix value calculation
2) fix the way aces get calculated

Write a script to play blackjack.

Level 1:
* The program should be fully object-oriented
* The player starts with $100 and bets are $10
* The only options are hit and stand

* Players can play as long as they can afford it, and can
  leave after any round.
* The dealer reshuffles after every round
* The included test file should pass (defining Card, Deck, and Hand)
* Push your homework up to your repository on github

Level 1.5:
* Add graphics to your script: https://github.com/jdan/rubycards

Level 2:
* Ignore the included spec file, and test drive development yourself
* Write specs for any other classes you use (Player? Game?)

Level 3:
* Allow variable bets
* Allow double-downs
* Dealer only reshuffles when the deck runs out
  * Allow for multiple decks
### 2. Blackjack

1.
  * Add a Person class, with Player and Dealer subclasses
  * Make Hand and Deck Enumerable. What functionality
      does that add?

2.
  * Write tests for Player and Dealer

3.
  * Encapsulate the entire game in an object and test
    it. You may want to allow the game to specify an
    IO stream to be able to test it. See:
    http://ruby-doc.org/stdlib-2.1.2/libdoc/stringio/rdoc/StringIO.html.

=end
