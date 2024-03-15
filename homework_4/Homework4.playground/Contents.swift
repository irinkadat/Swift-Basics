import UIKit

/* 1. while ციკლის გამოყენებით, 1-დან 20-მდე დაბეჭდეთ ყველა კენტი რიცხვის ნამრავლი.*/

var n = 1
var product = 1

while n < 20 {
    if n % 2 == 1 {
        product *= n
    }
    n+=1
}
           
print("product of the odd numbes from 1 to 20 is:", product)
    
                
/* 2. შექმენით String ტიპის ცვლადი და ციკლის გამოყენებით შემოაბრუნეთ ის, მაგ: თუ გვაქვს “Test” უნდა მივიღოთ “tseT” */

//🕯️ გზა პირველი

var txt = "test"
var reversedTxt = ""

for i in stride(from: txt.count - 1, through: 0, by: -1) {
    
    let index = txt.index(txt.startIndex, offsetBy: i)
    reversedTxt.append(txt[index])
    
}
print("\(txt) reversed is: \(reversedTxt) ")


//🕯️ გზა მეორე

//var txt = "test"
//var reversedTxt = ""
//
//for i in txt.reversed() {
//    reversedTxt.append(i)
//}
//
//print("\(txt) reverced is: \(reversedTxt) ")


/* 3. while loop-ისა და switch statement-ის გამოყენებით შექმენით უსასრულო შუქნიშანი, რომელიც ბეჭდავს შემდეგნაირად. "🔴->🌕->🟢->🔴->🌕..." */

// please save macbook ram ♻️ :DD

//var lightOrder = 0
//
//while true {
//    switch lightOrder {
//    case 0:
//        print("🔴", terminator: "->")
//        lightOrder = 1
//    case 1:
//        print("🟡", terminator: "->")
//        lightOrder = 2
//    case 2:
//        print("🟢", terminator: "->")
//        lightOrder = 0
//    default:
//        break
//    }
//}


/* 4. Taylor Swift-ის კონცერტის ბილეთები იყიდება, თუმცა რაოდენობა ძალიან შეზღუდულია. While loop-ის მეშვეობით შექმენით ბილეთების გაყიდვის სიმულაცია და ყოველ გაყიდულ ბილეთზე დაბეჭდეთ “ბილეთი გაყიდულია, დარჩენილია მხოლოდ X რაოდენობა”, მანამ სანამ ბილეთების რაოდენობა მიაღწევს 0-ს, რის შემდეგაც ბეჭდავთ - “ყველა ბილეთი გაყიდულია გელოდებით კონცერტზე” */

var ticketCount = 7

while ticketCount > 0 {
    ticketCount -= 1
    
    if ticketCount == 0 {
        print("ყველა ბილეთი გაყიდულია გელოდებით კონცერტზე")
        break
    }
    
    print("ბილეთი გაყიდულია, დარჩენილია მხოლოდ \(ticketCount)")

}


/* 5. შექმენით array, შეავსეთ ისინი ელემენტებით. შეამოწმეთ და დაბეჭდეთ: "array-ში ყველა ელემენტი განსხვავებულია" ან "array შეიცავს მსგავს ელემენტებს"  (array-ს ტიპს არაქვს მნიშვნელობა.) */

let arr : [Int] = [1,2,3,4,5,6,6,7] ;
var isIterable = false

for i in 0..<arr.count {
    for j in i+1..<arr.count {
        if arr[i] == arr[j] {
            isIterable = true
            break
        }
    }
    if isIterable {
            break
    }
}

if isIterable {
    print("array შეიცავს მსგავს ელემენტებს")
} else {
    print("array-ში ყველა ელემენტი განსხვავებულია")
}


/* 6. დაწერეთ ქლოჟერი რომელიც გამოითვლის ორი რიცხვის სხვაობას და დააბრუნებს მიღებულ მნიშვნელობას */

var difference = {(a: Int, b: Int) -> Int in
    return a - b
}
let a = 5
let b = 6
let res = difference(a, b)

print("\(a) - \(b) = \(res)")

/* 7. დაწერეთ ფუნქცია, რომელსაც გადააწვდით String ტიპის პარამეტრს. დაითვალეთ ამ პარამეტრში თანხმოვნების რაოდენობა და დაბეჭდეთ ის.*/

func consonantsCount(txt: String) -> Int {
    let vovels: Set<Character> = ["a", "e", "i", "o", "u"]
    var newTxt = ""
    
    for char in txt.lowercased(){
        
        if char.isLetter && !vovels.contains(char) {
            newTxt.append(char)
        }
    }
    return newTxt.count
}
let numOfConsonants = consonantsCount(txt: "irinka is a cool girl")

print("თანხმოვნების რაოდენობაა : \(numOfConsonants)")


// MARK: - Oprtional

/* 1. შექმენით ორი Int-ების array, შეავსეთ პირველი array 8, 4, 9, 9, 0, 2, და მეორე array 1, 0, 9, 2, 3, 7, 0, 1 ამ რიცხვებით. გააერთიანეთ ეს ორი array ერთ დასორტილ array-ში, ანუ შედეგი უნდა მიიღოთ ასეთი: 0, 0, 0, 1, 1, 2, 2, 3, 4, 7, 8, 9, 9, არ გამოიყენოთ sorted() ან რაიმე სხვა უკვე არსებული მეთოდი swift-იდან. დაბეჭდეთ მიღებული დასორტილი array. */

// სორტირება Bubble sort-ით

let arr1 = [8, 4, 9, 9, 0, 2]
let arr2 = [1, 0, 9, 2, 3, 7, 0, 1]

var newArr = arr1 + arr2
for i in 0..<newArr.count - 1 {
    for j in 0..<newArr.count - i - 1 {
        if newArr[j] > newArr[j + 1] {
            let temp = newArr[j]
            newArr[j] = newArr[j + 1]
            newArr[j + 1] = temp
        }
    }
}
print(newArr)


//🕯️ შეგვიძლია გამოვიყენოთ swap-ის უფრო მარტივი და მოკლე გზაც Like this:
// newArr[j], newArr[j + 1] = newArr[j + 1], newArr[j]



/* 2.  დაწერეთ ფუნქცია, რომელსაც გადააწვდით int ტიპის პარამეტრს. გამოითვალეთ ამ პარამეტრის ფაქტორიალი და დაბეჭდეთ */

func calculateFactorial(n : Int) -> Int {
    var factprial = 1
    
    for i in 1...n {
        factprial *= i
    }
    
    return factprial
}
print(calculateFactorial(n: 4))


/* 3. შექმენით Int-ების array, შეავსეთ ის 0-იდან 10-ის ჩათვლით რიცხვებით. loop-ის  გამოყენებით დაშალეთ ეს array 2 array-იდ. ერთში გადაიტანეთ კენტი რიცხვები, მეორეში კი ლუწი რიცხვები, დაბეჭდეთ ორივე მიღებული array. */


var arr4 : [Int] = Array(0...10)
var arrOfOdds : [Int] = []
var arrOfEvens : [Int] = []

for i in arr4{
    if i % 2 == 0{
        arrOfEvens.append(i)
    }
    else{
        arrOfOdds.append(i)
    }
}
print(arrOfOdds, arrOfEvens, separator: "\n")

