import UIKit

//- Send in a polished resume, cover letter as to why you should be accepted for the internship, and the completed code challenge (code challenge should be uploaded to github and a repository link should be sent in the email, do NOT copy and paste your code into the email)
//- Email to Alan Barth abarth@mtec.edu by 2/24/23
//- The app consists of 21 screens and will be heavily involved with a service called firebase. I would start learning what firebase is and how to use it to best prepare.



//In the instructions for the code challenge it said you would get 2 poker hands whereas the given function is an array of hands. I have fixed the instruction to match that you will be given an array of poker hands (which could be more than just two


/// determineWinner will take in an array of "Poker" hands and determine which hand is better (according to texas holdem rules).
///
/// Traditionally in Texas Holdem you are only given 2 cards and then 5 other cards are placed flipped up in front of everyone.
///
/// In our version each player is given 5 cards with no cards placed on the table.
///
/// Based on just the 5 cards given in a hand. You are to determine what type of winning hands a player has and which is best.
///
/// For example a player may have a 2 of a kind and a 3 of a kind in a single hand. 3 of a kind is better than 2 of a kind and should be used to determine if their hand is better than any of the other players hands.
///
///
/// - Returns: Hand - Which is the hand that won. It is expected that the handType property("2 of a kind", "3 of a kind", "4 of a kind", etc) will have a value when returning the winning hand.
///



enum Suit {
    case spades, clubs, hearts, diamonds
}

enum PlayingCardValue: Int {
    case one = 1, two, three, four, five, six, seven, eight, nine, ten, jack, queen, king, ace
}

struct Card {
    var suit: Suit
    var value: PlayingCardValue
}

struct Hand {
    let cards: [Card]
    var handType: String? // Bonus points for changing from a string to a custom enum of all the winningHands
    
    init?(cards: [Card]) {
        guard cards.count == 5 else { return nil }
        self.cards = cards
    }
}
    enum WinningHand {
        case highCard
        case onePair
        case twoPair
        case threeOfAKind
        case straight
        case flush
        case fullHouse
        case fourOfAKind
        case straightFlush
    }

    func getWinningHand(hand: Hand) -> WinningHand {
        // TODO: Implement this function to determine the winning hand for a given hand
        func hasFlush(hand: Hand) -> Bool {
            let firstSuit = hand.cards[0].suit
            for card in hand.cards {
                if card.suit != firstSuit {
                    return false
                }
            }
            return true
        }
        func hasStraight(hand: Hand) -> Bool {
            let sortedValues = hand.cards.map { $0.value.rawValue }.sorted()
            for i in 0..<4 {
                if sortedValues[i+1] - sortedValues[i] != 1 {
                    return false
                }
            }
            return true
        }
        func hasPairs(hand: Hand) -> Int {
            var count = 0
            var values = Set<PlayingCardValue>()
            for card in hand.cards {
                if values.contains(card.value) {
                    count += 1
                } else {
                    values.insert(card.value)
                }
            }
            return count
        }
        func hasThreeOfAKind(hand: Hand) -> Bool {
            var counts = [PlayingCardValue: Int]()
            for card in hand.cards {
                counts[card.value, default: 0] += 1
            }
            for count in counts.values {
                if count == 3 {
                    return true
                }
            }
            return false
        }
        func hasFourOfAKind(hand: Hand) -> Bool {
            var counts = [PlayingCardValue: Int]()
            for card in hand.cards {
                counts[card.value, default: 0] += 1
            }
            for count in counts.values {
                if count == 4 {
                    return true
                }
            }
            return false
        }
        func getWinningHand(hand: Hand) -> WinningHand {
            if hasFlush(hand: hand) && hasStraight(hand: hand) {
                return .straightFlush
            } else if hasFourOfAKind(hand: hand) {
                return .fourOfAKind
            } else if hasThreeOfAKind(hand: hand) && hasPairs(hand: hand) == 1 {
                return .fullHouse
            } else if hasFlush(hand: hand) {
                return .flush
            } else if hasStraight(hand: hand) {
                return .straight
            } else if hasThreeOfAKind(hand: hand) {
                return .threeOfAKind
            } else if hasPairs(hand: hand) == 2 {
                return .twoPair
            } else if hasPairs(hand: hand) == 1 {
                return .onePair
            } else {
                return .highCard
            }
        }

    }

    func compareHands(hand1: Hand, hand2: Hand) -> Hand {
        // TODO: Implement this function to compare two hands and return the winning hand
    }

    func determineWinner(hands: [Hand]) -> Hand {
        var currentBestHand = hands[0]
        for hand in hands {
            let currentHandType = getWinningHand(hand: hand)
            let bestHandType = getWinningHand(hand: currentBestHand)
            if currentHandType > bestHandType {
                currentBestHand = hand
            } else if currentHandType == bestHandType {
                let winner = compareHands(hand1: hand, hand2: currentBestHand)
                if winner == hand {
                    currentBestHand = hand
                }
            }
        }
        return currentBestHand
    }
