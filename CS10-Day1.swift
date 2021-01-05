import Foundation

//MARK: - 이진 덧셈기
func halfadder(_ bitA:Bool, _ bitB:Bool) -> [Bool] {
    let sum = bitA != bitB
    let carry = bitA && bitB
    return [carry,sum]
}

func fulladder(_ bitA:Bool, _ bitB:Bool, _ carry:Bool) -> [Bool] {
    let first = halfadder(bitA, bitB)
    let second = halfadder(first[1], carry)
    return [first[0]||second[0], second[1]]
}

func byteadder(_ byteA:[Bool], _ byteB:[Bool]) -> [Bool] {
    var answer : [Bool] = []
    var carry = false
    let largeByte:[Bool]
    let smallByte:[Bool]
    
    // setting largeByte and smallByte
    if byteA.count > byteB.count {
        largeByte = byteA
        smallByte = byteB
    } else if byteA.count < byteB.count {
        largeByte = byteB
        smallByte = byteA
    } else {
        largeByte = byteA
        smallByte = byteB
    }
    
    //loop largeByte
    for i in 0..<largeByte.count {
        if i < smallByte.count {
            //if the idx doesn't exceeds the size of smallByte, run fulladder
            let nowBit = fulladder(byteA[i], byteB[i], carry)
            carry = nowBit[0]
            answer.append(nowBit[1])
        } else if !carry{
            //if the idx exceeds the size of smallByte and carry is empty, just append
            answer.append(largeByte[i])
        } else{
            // carry is true, run halfadder
            let nowBit = halfadder(largeByte[i], carry)
            carry = nowBit[0]
            answer.append(nowBit[1])
        }
    }
    answer.append(carry)
    return answer
}

//MARK: - 진법 변환기
func dec2bin(_ decimal: Int) -> [Bool] {
    var answer = [Bool]()
    var temp = decimal
    while temp != 0 {
        if temp % 2 == 1 {
            answer.append(true)
        } else {
            answer.append(false)
        }
        temp /= 2
    }
    return answer
}

func bin2dec(_ bin:[Bool]) -> Int {
    var temp = 1
    var answer = 0
    
    for idx in 0..<bin.count {
        if bin[idx] {
            answer += temp
        }
        temp *= 2
    }
    return answer
}

//MARK: - test function
func test(_ text:String, _ input:[Bool], _ output:[Bool]){
    if input == output {
        print(text, "pass")
    } else {
        print(text, "false")
    }
}


print("\n-------half adder--------")
test("halfAdder test 1 is", halfadder(true, true), [true,false])
test("halfAdder test 2 is", halfadder(true, false), [false,true])
test("halfAdder test 3 is", halfadder(false, true), [false,true])
test("halfAdder test 4 is", halfadder(false, false), [false,false])

print("\n-------full adder--------")
test("fullAdder test 1 is", fulladder(true, true, true), [true, true])
test("fullAdder test 2 is", fulladder(true, false, true),[true,false])


print("\n-------byte adder--------")
let byteA = [true, true, false, true, true, false, true, false]
let byteB = [true, false, true, true, false, false, true, true]
let byteC = [true, true, false, false, true, false, true, false]
let byteD = [true, true, false, true, true, false , false, true]
let byteE = [false,false,true]

test("byteAdder test 1 is",byteadder(byteA, byteB),[false, false, false, true, false, true, false, false, true])
test("byteAdder test 2 is",byteadder(byteC, byteD),[false, true, true, true, false, true, true, true, false])
test("byteAdder test 3 is",byteadder(byteA, byteE),[true, true, true, true, true, false, true, false, false]
)
print("\n----dedimal to binary----")
print(dec2bin(173))
print("\n----binary to decimal----")
print(bin2dec([false, true, true, true]))
print(bin2dec([true, true, true, true, false, true, false, true]))
print("\n---two decimal to binary and sum and binary to decimal---")
print("Sum : [2, 3] , Result in binary :",byteadder(dec2bin(2), dec2bin(3)),", Result in decimal :",bin2dec(byteadder(dec2bin(2), dec2bin(3))))

