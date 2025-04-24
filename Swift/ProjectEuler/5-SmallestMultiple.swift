var until : Int = 20
var num : Int = 0
var temp : Int = 0
var list : [Int] = []
var allLists : [Int] = []
for x in 1...9999999999 {
    for i in 1...until {
        if (Float(x) / Float(i)).truncatingRemainder(dividingBy: 1) == 0.0  && temp == 0 {
            temp += 1
            num += 1
        }
        temp = 0
    }
    if num > until {
        list += [x]
        break
    }
    num = 1
}
print(list[0])
print("Done")
