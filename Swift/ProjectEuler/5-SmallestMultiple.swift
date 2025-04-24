var num : Int = 0
var temp : Int = 0
var list : [Int] = []
var allLists : [Int] = []
for x in 1...9999 {
    for i in 1...10 {
        if (Float(x) / Float(i)).truncatingRemainder(dividingBy: 1) == 0.0  && temp == 0 {
            temp += 1
            num += 1
        }
        temp = 0
    }
    if num > 10{
        list += [x]
    }
    num = 1
}
print(list[0])
