func multiply(_ until : Int) -> Int{
    var result: Int = 0
    for n in 1...until - 1 {
        if n % 3 == 0 || n % 5 == 0 {
            result += n
        }
    }
    return result
}

var res = multiply(1000)
print(res)

