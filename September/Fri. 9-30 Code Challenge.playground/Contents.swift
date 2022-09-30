import UIKit

func heron(a: Double, b: Double, c: Double) -> Double {
    let s = (a + b + c) / 2
    return Double(String(format: "%.2f", sqrt(s * (s-a) * (s-b) * (s-c))))!
}
print(heron(a: 10, b: 10, c: 20))
