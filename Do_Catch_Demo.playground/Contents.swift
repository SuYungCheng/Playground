//: Playground - noun: a place where people can play

import UIKit

enum MyError: ErrorType {
    case Error1
    case Error2
}

func test(n:Int) throws {
    if n == 1 {
        throw MyError.Error1
    }
    if n == 2 {
        throw MyError.Error2
    }
}

do {
    try test(n: 2)
} catch MyError.Error1 {
    print("Err1")
} catch MyError.Error2 {
    print("Err2")
}

try! test(n: 1)