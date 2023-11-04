import UIKit

func checkStrDuplicate(someStr: String, checkStr: String) -> Bool {
    var str = someStr
    if str.contains(checkStr) {
        let range = str.range(of: checkStr)
        str = str.replacingCharacters(in: range!, with: "")
    }
    return str.contains(checkStr)
}

var greeting = "Hello, playground test test"
checkStrDuplicate(someStr: greeting, checkStr: "2")  // result false
checkStrDuplicate(someStr: greeting, checkStr: "ll") // result false
checkStrDuplicate(someStr: greeting, checkStr: "l")  // result true
checkStrDuplicate(someStr: greeting, checkStr: "p")  // result false
checkStrDuplicate(someStr: greeting, checkStr: "Hello")  // result false
checkStrDuplicate(someStr: greeting, checkStr: "o")    // result true
checkStrDuplicate(someStr: greeting, checkStr: "test") // result true

//Сначала хотел сделать через for но понял что там будет работать только с одной буквой если букв будет больше то проверка не сработает.
//                                    Поэтому потом попробовал сделать через replacingOccurrences, но такой вариант убирает все совпадения а не только первое.
//                                    Поэтому нагуглил решение
// на все это ушло около получаса
