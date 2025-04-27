import Foundation
var pUntil : Int = 20

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

func smallestMultiple (_ pUntil : Int) -> Int{
    var num : [Int] = []
    var val : Int = 1
    var pm = primeNumbers(pUntil)
    //print(pm)
    var x : Int = 1
    var root : Double = 0.0
    var tempList : [Int] = []
    var tempList2 : [Int] = []
    var primeNumberList: [Int] = []
    var arr : [(Int,Int)] = [(0,0)]
    
    for i in 1...pUntil {
        if !pm.contains(i){
            while x < i + 1 {
                x += 1
                root = pow(Double(i), (1.0 / Double(x)))
                if Double(root).truncatingRemainder(dividingBy: 1) == 0.0 && pm.contains(Int(root)){
                    tempList += [Int(root)]
                    primeNumberList += [Int((pow(Double(root), Double(x))))]
                    arr += [(Int(root), x)]
                }
            }
            x = 1
        }
    }
    //print(arr)
    for ik in arr where ik.0 != 0 {
        if !num.contains(ik.0) {
            num += [ik.0]
        }
    }
    //print(num)
    for n in num {
        tempList2 = []
        for item in arr where item.0 == n {
            tempList2 += [item.1]
        }
        for n2 in 1...Int(tempList2.last!) {
            val *= n
        }
    }
    for r in 1...num.count {
        pm.removeFirst()
    }
    
    for i in pm {
        val *= i
    }
    return val
}

print("The smallest multiple of " + String(pUntil)+" is " + String(smallestMultiple(pUntil)))
