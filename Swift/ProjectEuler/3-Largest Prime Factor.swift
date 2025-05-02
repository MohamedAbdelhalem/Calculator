import Foundation

func primeNumbers (_ until : Int) -> [Int] {
    var prime : [Int] = []
    var number : Int
    var x : Int = 2
    var result : Int = 0
    var loop : Int = 1
    
    while loop < until + 1{
        number = loop
        x = 2
        result = 0
        while x < number {
            if ((Float(number) / Float(x)) - Float(number / x)) == 0{
                result = result + 1
            }else{
                result += 0
            }
            x += 1
        }
        if number > 1{
            if result == 0{
                prime += [Int(number)]
            }
        }
        loop += 1
    }
    return prime
}

var param : Double = 600851475143
var result : [Int] = []
for i in primeNumbers(3000) where i > 2{
    if (param / Double(i)).truncatingRemainder(dividingBy: 1) == 0.0{
        result += [i]
    }
}
print(result.last)


