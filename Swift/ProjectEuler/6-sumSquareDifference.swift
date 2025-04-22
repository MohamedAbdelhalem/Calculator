func sumSquareDifference (_ n : Int){
    var squareNumber: Int = 0
    var sumSquareNum: Int = 0
    
    for i in 1...n {
        squareNumber += i * i
        sumSquareNum += i
    }
    sumSquareNum *= sumSquareNum
    print(squareNumber)
    print(sumSquareNum)
    print(sumSquareNum - squareNumber)
}

sumSquareDifference(100)
