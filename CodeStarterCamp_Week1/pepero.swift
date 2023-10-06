// 길이(Int)에 따른 막대(빼빼로 손잡이)를 그리는 함수
func drawHandle(length: Int) {
    for _ in 1...length {
        print(" | |")
    }
}

// 몸통(String), 토핑(String)을 매개변수로 받아 토핑과 몸통을 그리는 함수
func drawChocolate(length: Int, body: String, topping: String) {
    for _ in 1...length {
        if topping.isEmpty {
            print(body)
        } else {
            print("\(topping)\(body)\(topping)")
        }
    }
}

// 길이(Int)에 따라 몸통을 그리는 함수
func drawBody(length: Int, body: String) {
    for _ in 1...length {
        print(body)
    }
}

// 각종 매개변수를 받아 위의 세 메서드를 호출하는 함수
func drawPocky(length: Int, body: String, topping: String, handleLength: Int) {
    print("<정보>")
    print("길이: \(length)")
    print("몸통: \(body)")
    print("토핑: \(topping)")
    print("막대길이: \(handleLength)")

    drawChocolate(length: length, body: body, topping: topping)
    drawHandle(length: handleLength)
}

//drawPocky(length: 10, body: " ***", topping: "", handleLength: 4)
//print("\n")
//drawPocky(length: 12, body: "***", topping: "&", handleLength: 4)
//print("\n")
//drawPocky(length: 12, body: "***", topping: "#", handleLength: 6)
//print("\n")
//drawPocky(length: 6, body: " |0|", topping: "", handleLength: 4)


func main() {
    drawPocky(length: 10, body: " ***", topping: "", handleLength: 4)
    print("\n")
    drawPocky(length: 12, body: "***", topping: "&", handleLength: 4)
    print("\n")
    drawPocky(length: 12, body: "***", topping: "#", handleLength: 6)
    print("\n")
    drawPocky(length: 6, body: " |0|", topping: "", handleLength: 4)
}

// main 함수 호출
main()
