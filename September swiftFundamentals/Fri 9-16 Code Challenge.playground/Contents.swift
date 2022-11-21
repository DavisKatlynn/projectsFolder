import UIKit

func getGrade(_ s1: Int, _ s2: Int, _ s3: Int) -> String {
    let average = (s1 + s2 + s3) / 3;
    var returnMesage = ""
    if average > 89 {
        return "A"
    } else if average is > 80 {
        return "B"
} else if average is > 70 {
        return "C"
    } else if average is > 60 {
        return "D"
    } else; {
            return "F"
        }
}
print(getGrade(79, 91, 85))
        
        
        
        
        
        
        
   
