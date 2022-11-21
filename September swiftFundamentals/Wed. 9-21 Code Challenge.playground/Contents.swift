import UIKit

func sinceMidnight(hour: Int, minute: Int, second: Int) -> Int {
    return(hour * 3600000) + (second * 1000) + (minute * 100)
    
}

(sinceMidnight(hour: 7, minute: 51, second: 0))

    
