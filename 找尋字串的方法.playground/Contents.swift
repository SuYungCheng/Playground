//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"
//let needle: Character = ","
//
//if let idx = str.characters.index(of: needle) {
//    let pos = str.characters.distance(from: str.startIndex, to: idx)
//    print("Found =\(needle) at position =\(pos)")
//    
//    
//}
//
//var string2 = "www.stackoverflow.com"
//
//var result = string2.range(of: "stack", options: .backwards, range: string2.startIndex..<string2.endIndex, locale: nil)
//if let range = result {
//    print(range)
//    var start = range.lowerBound
//    print(string2[start..<string2.endIndex])
//    
//    
//}

var string = "I am Tim, who are you?"
var range1 = string.range(of: "Tim")

let startInt = range1?.lowerBound   ///   0
let endInt = range1?.upperBound   ///    5

extension String {
    func index(of string: String, options: String.CompareOptions = .literal) -> String.Index? {
        return range(of: string, options: options, range: nil, locale: nil)?.lowerBound
    }
    func indexes(of string: String, options: String.CompareOptions = .literal) -> [String.Index] {
        var result: [String.Index] = []
        var start = startIndex
        while let range = range(of: string, options: options, range: start..<endIndex, locale: nil) {
            result.append(range.lowerBound)
            start = range.upperBound
        }
        return result
    }
    func ranges(of string: String, options: String.CompareOptions = .literal) -> [Range<String.Index>] {
        var result: [Range<String.Index>] = []
        var start = startIndex
        while let range = range(of: string, options: options, range: start..<endIndex, locale: nil) {
            result.append(range)
            start = range.upperBound
        }
        return result
    }
}
let str = "I am Tim, Tim who are you?"
str.index(of: "Tim")      // 7
str.indexes(of: "Tim")    // [7, 19, 31]
str.ranges(of: "Tim")


let shs = str.index(of: "Tim")
print(shs)

let NSStr = NSString(string: str)

let findStr = NSStr.range(of: "Tim")
let indexStart = findStr.location
let len = findStr.length
let rang = findStr.toRange()


