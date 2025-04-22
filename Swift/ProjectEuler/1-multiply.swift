func multiply(_ until : Int) -> Int{
    var result: Int = 0
    var array: [Int] = []
    for n in 1...until - 1 {
        if n % 3 == 0 || n % 5 == 0 {
            result += n
            array.append(n)
        }
    }
    print(array)
    return result
}

var res = multiply(10)
print(res)

