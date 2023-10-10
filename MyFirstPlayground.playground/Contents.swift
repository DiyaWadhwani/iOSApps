import UIKit



// 1. VARIABLES, DATA TYPES





//var greeting = "Hello, playground"
//greeting = "Hey changing this value now"
//var num = 12
//var million = 1_000_000
//
//var newString = """
//Trying multiline string
//New line 2
//new line 3
//"""
//
//print(newString)

//var myNum = 12.5
//print(myNum)
//print(type(of: myNum))
//
//var myFloat:Float = 13
//print(myFloat)
//print(type(of: myFloat))

//var myString = """
//My double number is \(myNum).
//My float number is \(myFloat).
//And my multiline string is
//\(newString)
//"""
//
//print("""
//My double number is \(myNum).
//My float number is \(myFloat).
//And my multiline string is
//\(newString)
//""")
//
//
//let myConstant:Int = 14
//print(myConstant)
//
//
//let myName:String = "Sakib Miazi"
//var myAge:Int = 10
//let iUseIPhone:Bool = false
//print("My name is \(myName), my age is \(myAge) and I use an iphone \(iUseIPhone)")





// 2. COLLECTIONS





//var carNames = [String]()
//carNames.append("Toyota")
//carNames.append("Mazda")
//print(carNames)
//print("No. of elements => \(carNames.count)")
//print("first element \(carNames[0])")
//carNames.remove(at: 0)
//print(carNames)

//var myColours = Set<String>()
//myColours.insert("black")
//myColours.insert("yellow")
//myColours.insert("black")
//print(myColours)
//print(myColours.count)
//
//let myNewColours = Set(["blue","yellow","red"])
//print(myNewColours)



//var myTuple = ("Mark",20)
//print("My Tuple \(myTuple)")
//
//var myDetailedTuple = (Name : "Diya", Age:23)
//print(myDetailedTuple)
//print(myDetailedTuple.0)
//print(myDetailedTuple.1)
//myDetailedTuple.1 = 24
//print(myDetailedTuple)

//var carCounts = [String:Int]()
//carCounts["Chevy"] = 5
//carCounts.updateValue(2, forKey: "Honda")
//print(carCounts)
//
//var updatedCars = [
//    "Toyota" : 4,
//    "Mazda" : 3
//]
//print(updatedCars)
//updatedCars.removeValue(forKey: "Mazda")
//print(updatedCars)





// 3. OPERATIONS





//let num1 = 10
//let num2 = 20
//
//let sum = num1+num2
//let diff = num1-num2
//let prod = num1*num2
//let div = num2/num1
//let rem = num2%num1
//
//print("""
//Results :
//Sum => \(sum)
//Difference => \(diff)
//Product => \(prod)
//Division => \(div)
//Remainder => \(rem)
//""")
//
//
//let n1 = 12.0
//let n2 = 12.5
////let sum1 = n1+n2
//print("\(n1), \(n2), Sum = \(n1+n2)")


//let firstName = "Diya"
//let lastName = "Wadhwani"
//print(firstName+" "+lastName)
//
//let list1 = [1,2,3]
//let list2 = [4,5,6]
//print(list1+list2)
//
//let list3 = ["seven"]
//let list4 = ["eight"]
//print(list3+list4)


//var budget = 5_000
//let expense = 3_000
//print(budget-expense)
//budget = 10_000
//print(budget-expense)
//
//budget -= expense
//print(budget)
//
//var count = 10
//count += 10
//print(count)
//
//var num = 5
//num *= 10
//print(num)
//
//var div = 20
//div /= 10
//print(div)
//
//var rem = 20
//rem %= 10
//print(rem)
//
//var name = "Diya"
//name += " Wadhwani"
//print(name)
//
//let a = 10
//let b = 20
//
//print(a==b)
//print(type(of: a==b))
//print(type(of: a))
//
//var isequal:Bool = true
//isequal = a>b
//print(isequal)
//isequal = a<b
//print(isequal)




// 4. CONDITIONALS





//let myNum = 10
//if myNum == 10 {
//    print("true")
//}
//else {
//    print("false")
//}
//
//if myNum == 1 {
//    print("It is \(myNum)!")
//}else if myNum == 3{
//    print("It is \(myNum)!")
//}else if myNum == 5{
//    print("It is \(myNum)!")
//}else{
//    print("Not 1, 3, or 5!")
//}
//
//let day = 5
//switch day {
//case 1 : print("Sunday")
//case 2 : print("Monday")
//case 3 : print("Tuesday")
//case 4 : print("Wednesday")
//case 5 : print("Thursday")
//case 6 : print("Friday")
//case 7 : print("Saturday")
//default : print("Invalid")
//}
//
//
//let myAge = 24
//if myAge >= 18 && myAge <= 65 {
//    print("Eligible for the user study!")
//}
//else if myAge < 18 || myAge > 65 {
//    print("Not eligible!")
//}
//
//let today = 3
//switch today {
//case 1...5 : print ("Weekday")
//case 6..<8 : print("Weekend")
//default : print("Invalid")
//}





// 5. LOOPS





//let range = 1...10
//for number in range{
//    print(number)
//}
//
//let carTrials = ["Honda", "Toyota", "Mazda"]
//for car in carTrials {
//    print(car)
//}
//
//for _ in 1...10 {
//    print("Try again")
//}
//
//var numPrint = 0
//while numPrint<=50{
//    print(numPrint)
//    numPrint+=10
//}
//
//var myNum = 0
//repeat {
//    print(myNum)
//    myNum+=5
//}while myNum<=50
//
//let breakpoint = 4
//var countdown = 1
//
//while breakpoint>=0{
//    print("Run")
//
//    if countdown==breakpoint{
//        print("Stop")
//        break
//    }
//    countdown+=1
//}
//
//for number in 1...10{
//    if number%2==0{
//        print("\(number) is divisible by 2")
//        continue
//    }
//    print("\(number) is an odd number")
//}





// 6. FUNCTIONS





//func printOut(){
//    print("Hey guys ! testing code is fun\n\n")
//}
//
//printOut()
//
//func printMyDeets(name:String, age:Int){
//    print("My name is \(name) and I am \(age) years old\n\n")
//}
//
//printMyDeets(name: "Diya", age: 23)
//
//func sumOfNums(array:[Int]) -> Int {
//    var sum = 0
//    for num in array {
//        sum+=num
//    }
//    return sum
//}
//
//print("Sum is \(sumOfNums(array: [1,2,3,4,5]))\n\n")
//
//func navigate(with vehicle:String, from source:String, to dest:String){
//    print("Hi, I will be travelling in a \(vehicle) from \(source) to \(dest)\n\n")
//}
//
//navigate(with: "car", from: "Oakland", to: "SFO")
//
//func printName(_ name:String){
//    print("Hi \(name) !!\n\n")
//}
//
//printName("Diya")
//
//func printNameAgain(_ name:String = "Diya"){
//    print("Hello \(name)\n\n")
//}
//printNameAgain()





// 7. CLOSURES





//let printHello = {
//    print("Hello")
//}
//
//printHello()
//
//let sayHelloTo = { (name:String) in
//    print("Hello \(name)")
//}
//sayHelloTo("Diya")
//
////returns value
//let sumOfArray = { (array:[Int]) -> Int in
//    var sum = 0
//    for val in array{
//        sum+=val
//    }
//    return sum
//}
//let sum = sumOfArray([1,2,3,4])
//print("\(sum)\n")
//
//
//
//let drive = {
//    print("I will take a car !")
//}
//let fly = {
//    print("I will take a flight !")
//}
//
//func travel(from source:String, to dest:String, how:()-> Void) {
//    print("I need to travel from \(source) to \(dest)")
//    how()
//}
//travel(from: "Oakland", to: "SFO", how: fly)
//
//
//let add = { (num1 : Int, num2 : Int) -> Int in
//    return num1+num2
//}
//let subtract = { (num1 : Int, num2 : Int) -> Int in
//    return num1-num2
//}
//let multiply = { (num1 : Int, num2 : Int) -> Int in
//    return num1*num2
//}
//
//func calculate (operation: (_ :Int, _:Int) -> Int, num1:Int, num2:Int) -> Int {
//    let result = operation(num1,num2)
//    return result
//}
//
//print(calculate(operation: multiply, num1: 30, num2: 20))
//print(calculate(operation: add, num1: 30, num2: 20))
//print(calculate(operation: subtract, num1: 30, num2: 10))





// 8. OPTIONALS





//var myInt:Int?
//print(myInt)
//myInt=10
//print(myInt)
//
//if let unwrappedMyInt = myInt {
//    print(unwrappedMyInt)
//}
//else{
//    print("Optional value must be initialized")
//}
//
//print(myInt!)





// 9. CREATING DATA TYPES





//struct Person {
//    var name : String
//    var age : Int
//    var city : String
//    var height : Double
//}
//
//var person1:Person = Person(name: "Diya", age: 23, city: "Oakland", height: 5.4)
//print(person1)
//print("My name is \(person1.name), I am \(person1.age) years old and my height is \(person1.height). I live in \(person1.city)")
//person1.age=24
//print("I will become \(person1.age) this year")
//
//
//struct Student {
//    var name : String
//    var age : Int
//    var city : String
//
//    var isMinor:Bool{
//        if age<18{
//            return true
//        }
//        else {
//            return false
//        }
//    }
//}
//
//var newStudent : Student = Student(name: "Diya", age: 17, city: "Oakland")
//print(newStudent)
//print(newStudent.isMinor)
//
//func calcAge(){
//    if(newStudent.isMinor){
//        print("\(newStudent.name) is a minor")
//    }
//    else{
//        print("\(newStudent.name) is not a minor")
//    }
//}
//
//calcAge()
//print("\(newStudent.name) is \(newStudent.age) years old")
//newStudent.age = 19
//calcAge()
//print("\(newStudent.name) is \(newStudent.age) years old")
//
//struct Employee {
//    var name : String
//    var empId : String
//    var age : Int
//    var dept : String
//
//    func displayProfile(){
//        print("""
//\nName : \(name)
//Age : \(age)
//ID : \(empId)
//Department : \(dept)
//""")
//    }
//
//var newEmployee : Employee = Employee(name: "Diya", empId: "002888624", age: 23, dept: "CS")
//newEmployee.displayProfile()
//
//
//struct Product {
//    var name : String
//    var prodID : String
//    var mfd : String?
//
//    init(){
//        name = "Chocolate"
//        prodID = "P63649"
//        mfd = "23/10/1999"
//    }
//}
//
//var newProd:Product = Product()
//print(newProd)
//newProd.name = "Bottle"
//newProd.prodID = "P56789"
//print(newProd)


//class Vehicle{
//    var type:String
//
//    init(type:String){
//        self.type = type
//    }
//
//    func describe(){
//        print("This is a \(type) vehicle")
//    }
//}

//var car1 = Vehicle(type: "Car")
//var car2 = Vehicle(type: "Truck")
//print(car1.type)

//class Car : Vehicle {
//    var model : String
//    var make : String
//
//    init(type:String, model:String, make:String){
//        self.model = model
//        self.make = make
//        super.init(type: type)
//    }
//
//    override func describe() {
//        super.describe()
//        print("This is a \(model)")
//    }
//}
//
//var newCar = Car(type: "Sports", model: "BMW", make: "Automatic")
//print(newCar.type)
//newCar.describe()

//
////value type
//
//struct User {
//    var name :String
//}
//
//var user1: User = User(name : "Diya")
//print(user1.name)
//var user2 = user1
//print(user2)
//user2.name="Yash"
//print(user2)
//
//
////reference type
//
//class Person {
//    var name:String
//
//    init(name:String){
//        self.name=name
//    }
//}
//
//var person1 = Person(name: "Diya")
//print(person1.name)
//var person2 = person1
//person2.name = "Yash"
//print(person1.name)
//print(person2.name)





// 10. PROTOCOLS





//protocol USBMad {
//    var id:Int{get}
//    var supportDisplayAdapter:Bool{get}
//    var supportAudio:Bool{get}
//    func chargeAccessory()
//    func transferData()
//}
//
//struct MyLaptop:USBMad {
//    var name:String
//    var storage:Int
//
//    var id: Int
//    var supportAudio: Bool
//    var supportDisplayAdapter: Bool
//
//    func chargeAccessory() {
//        print("You can charge")
//    }
//    func transferData() {
//        print("You can transfer")
//    }
//
//    func describe(){
//        print("""
//Laptop : \(name)
//Storage : \(storage)
//ID : \(id)
//SupportAudio : \(supportAudio)
//SupportDisplayAdapter : \(supportDisplayAdapter)
//""")
//
//        self.chargeAccessory()
//        self.transferData()
//    }
//}
//
//let myLaptop = MyLaptop(name: "MacBook 15 air", storage: 512, id:1, supportAudio: true, supportDisplayAdapter: true)
////myLaptop.chargeAccessory()
////myLaptop.transferData()
//myLaptop.describe()

//
//protocol Payment{
//    func biWeeklyPayment() -> Double
//}
//protocol TATraining{
//    func completeTraining()
//}
//protocol Rating{
//    func profRating() -> Int
//}
//protocol TeachingAssistant : Payment, TATraining, Rating{
//    var id : String{get}
//}
//
//class Student{
//    var name:String
//
//    init(name:String){
//        self.name=name
//    }
//}
//
//class GradTA:Student, TeachingAssistant{
//    var id:String
//    var course:String
//
//    init(name: String, id:String, course:String) {
//        self.id=id
//        self.course=course
//        super.init(name: name)
//    }
//
//    func biWeeklyPayment() -> Double {
//        return 1_500.0
//    }
//    func completeTraining() {
//        print("\(name) has completed the training")
//    }
//    func profRating() -> Int {
//        return 5
//    }
//
//    func describeTA(){
//        print("""
//\n\(name) is a TA for the course \(course) with ID \(id)
//They have been given a rating of \(self.profRating()) and is being paid \(self.biWeeklyPayment())
//""")
//        self.completeTraining()
//    }
//}
//
//let student = GradTA(name: "Diya", id:"002888624", course: "DS")
//student.describeTA()





// 11. SORTING ARRAYS





//var arrayOfInt = [4,6,7,2,7,3,6,2,1]
//print(arrayOfInt.sorted())
//
//var arrayOfStrings = ["apple","pineapple","o","d","grapes","A","a","B"]
//print(arrayOfStrings.sorted())
//
//print("\n")
//
//func decreasingOrder(val1:Int,val2:Int)->Bool{
//    return val1>val2
//}
//
//arrayOfInt.sort(by: decreasingOrder)
//print(arrayOfInt)
//
//
//arrayOfInt.sort(by: {(n1:Int,n2:Int)->Bool in
//    return n1>n2
//})
//print(arrayOfInt)

//struct User {
//    var name:String
//    var age:Int
//}
//
//var users = [
//    User(name: "Diya", age: 23),
//    User(name: "Yash", age: 21),
//    User(name: "Pranav", age: 22),
//    User(name: "Pranika", age:23),
//    User(name: "Eman", age:24)
//]
//
////cannot sort in increasing order like below
////users.sort()
////print(users)
//
//users.sort(by: {(user1:User,user2:User)->Bool in
////    user1.name>user2.name //for decreasing by name
////    user1.name<user2.name //for increasing by name
////    user1.age>user2.age //for decreasing by age
//    user1.age<user2.age //for increasing by age
//})
//
//for user in users{
//    print(user)
//}


