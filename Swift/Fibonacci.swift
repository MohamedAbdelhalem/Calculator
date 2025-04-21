func fibonacci (_ until : Int) -> [Int]{
    var array : [Int] = []
    for i in 0...until {
        if i > 1 {
            array += [array[array.count - 1] + array[array.count - 2]]
        }else{
            array += [i]
        }
    }
    return array
}

var arr = fibonacci(10)
print(arr)
