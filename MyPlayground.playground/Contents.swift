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
checkStrDuplicate(someStr: greeting, checkStr: "2")
checkStrDuplicate(someStr: greeting, checkStr: "ll")
checkStrDuplicate(someStr: greeting, checkStr: "l")
checkStrDuplicate(someStr: greeting, checkStr: "p")
checkStrDuplicate(someStr: greeting, checkStr: "Hello")
checkStrDuplicate(someStr: greeting, checkStr: "o")
checkStrDuplicate(someStr: greeting, checkStr: "test")

//Сначала хотел сделать через for но понял что там будет работать только с одной буквой если букв будет больше то проверка не сработает.
//                                    Поэтому потом попробовал сделать через replacingOccurrences, но такой вариант убирает все совпадения а не только первое.
//                                    Поэтому нагуглил решение выше
// на все это ушло около получаса
