var fibonacciArray : [Int] = []
for i in 0...10 {
    if i > 1 {
        fibonacciArray += [fibonacciArray[fibonacciArray.count - 1] + fibonacciArray[fibonacciArray.count - 2]]
    }else{
        fibonacciArray += [i]
    }
}
print(fibonacciArray)
