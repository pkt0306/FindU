// () -> ()
func sayHello() {
    print("Hello")
}
let fn1: () -> () = sayHello

// (Int, Int) -> Int
func addTwoNum(_ arg1:Int, _ arg2: Int) -> Int {
    return 0
}
let fn2 = addTwoNum

// (Int) -> String
func justDoIt(arg: Int) -> String {
    return ""
}
let fn3 = justDoIt

// 다음 함수 타입에 맞는 함수를 정의하고, 상수에 대입하고 사용하는 코드를 작성하시오.
// (Int, Double) -> Int
func funcIntDou(_ arg1: Int, _ arg2: Double) -> Int {
    return 0
}
let testIntDou = funcIntDou
testIntDou(3, 3.14)

// ([String]) -> Int
func funcStringArray(_ arg: [String]) -> Int {
    return 0
}
let testStringArray = funcStringArray
testStringArray(["I", "My"])

// (String, Int) -> [String: Int]
func funcStringInt(_ arg1: String, _ arg2: Int) -> [String:Int] {
    return ["":0]
}
let testStringInt = funcStringInt
testStringInt("Hello", 3)
