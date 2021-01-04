import Foundation

//MARK: - 이진 덧셈기

//bitA ^ bitB
func xor(_ bitA:Bool, _ bitB:Bool) -> Bool {
    if bitA != bitB { return true }
    return false
}

func halfadder(_ bitA:Bool, _ bitB:Bool) -> [Bool] {
    let sum = xor(bitA, bitB)
    return [bitA&&bitB,sum]
}


func fulladder(_ bitA:Bool, _ bitB:Bool, _ carry:Bool) -> [Bool] {
    let sumTwoBit = xor(bitA, bitB)
    let sumWithCarry = xor(sumTwoBit,carry)
    return[(bitA&&bitB)||(sumTwoBit&&carry), sumWithCarry]
}

func byteadder(_ byteA:[Bool], _ byteB:[Bool]) -> [Bool] {
    var answer : [Bool] = []
    var nowBit : [Bool] = []
    var carry = false
    
    for i in 0..<byteA.count {
        nowBit = fulladder(byteA[i], byteB[i], carry)
        carry = nowBit[0]
        answer.append(nowBit[1])
    }
    answer.append(carry)
    return answer
}

//MARK: - 진법 변환기
func dec2bin(_ decimal: Int) -> [Bool] {
    var answer = [Bool]()
    var temp = decimal
    while (temp != 0) {
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
print(halfadder(true, true))
print(halfadder(false, true))
print(halfadder(true, false))
print(halfadder(false, false))

print(fulladder(true, true, true))
print(fulladder(true, false, true))

let byteA = [true, true, false, true, true, false, true, false]
let byteB = [true, false, true, true, false, false, true, true]
let byteC = [true, true, false, false, true, false, true, false]
let byteD = [true, true, false, true, true, false , false, true]

print(byteadder(byteA, byteB))
print(byteadder(byteC, byteD))
var answer = [Bool](repeating: false, count: 8)
print(dec2bin(173))

let f = false


print(bin2dec([false, true, true, true]))
print(bin2dec([true, true, true, true, false, true, false, true]))
