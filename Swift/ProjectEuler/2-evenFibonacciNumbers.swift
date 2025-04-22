func fibonacci (_ until : Int, _ ends : Int) -> [Int]{
    var array : [Int] = []
    for i in 0...until {
        if i > 1 {
            if array[array.count - 1] + array[array.count - 2] < ends {
                array += [array[array.count - 1] + array[array.count - 2]]
            }
        }else{
            array += [i]
        }
    }
    return array
}

var arr = fibonacci(50,4000000)
var evenArray : Int128 = 0
for i in arr{
    if i % 2 == 0{
        evenArray += Int128(i)
    }
}
print(arr)
print("The sum of Even Fibonacci Numbers is : " + String(evenArray))
