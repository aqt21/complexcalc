//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    func add(lhs: Int, rhs: Int) -> Int {
        return (lhs + rhs)
    }
    
    func add(_ nums: [Int]) -> Int {
        var total : Int = 0
        for i in 0 ... nums.count - 1 {
            total += nums[i]
        }
        
        return total
    }
    
    func add(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        var total : (Int, Int) = (0, 0)
        total.0 = lhs.0 + rhs.0
        total.1 = lhs.1 + rhs.1
        return total
    }
    
    func add(lhs: [String : Int], rhs: [String : Int]) -> [String : Int] {
        var total : [String : Int] = ["x": 0, "y": 0]
        total["x"]! = rhs["x"]! + lhs["x"]!
        total["y"]! = rhs["y"]! + lhs["y"]!
        return total
    }
    
    func subtract(lhs: Int, rhs: Int) -> Int {
        return (lhs - rhs)
    }
    
    func subtract(_ nums: [Int]) -> Int {
        var total : Int = 0
        for i in 0 ... nums.count - 1 {
            total -= nums[i]
        }
        
        return total
    }
    
    func subtract(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        var total : (Int, Int) = (0, 0)
        total.0 = lhs.0 - rhs.0
        total.1 = lhs.1 - rhs.1
        return total
    }
    
    func subtract(lhs: [String : Int], rhs: [String : Int]) -> [String : Int] {
        var total : [String : Int] = ["x": 0, "y": 0]
        total["x"]! = lhs["x"]! - rhs["x"]!
        total["y"]! = lhs["y"]! - rhs["y"]!
        return total
    }
    
    func multiply(lhs: Int, rhs: Int) -> Int {
        return (lhs * rhs)
    }
    
    func multiply(_ nums: [Int]) -> Int {
        var total : Int = nums[0]
        for i in 1 ... nums.count - 1 {
            total *= nums[i]
        }
        
        return total
    }
    
    func multiply(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        var total : (Int, Int) = (0, 0)
        total.0 = lhs.0 * rhs.0
        total.1 = lhs.1 * rhs.1
        return total
    }
    
    func divide(lhs: Int, rhs: Int) -> Int {
        return (lhs / rhs)
    }
    
    func divide(_ nums: [Int]) -> Int {
        var total : Int = nums[0]
        for i in 1 ... nums.count - 1 {
            total /= nums[i]
        }
        
        return total
    }
    
    func divide(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        var total : (Int, Int) = (0, 0)
        total.0 = lhs.0 / rhs.0
        total.1 = lhs.1 / rhs.1
        return total
    }
    
    func count(_ nums: [Int]) -> Int {
        return nums.count
    }
    
    func avg(_ nums: [Int]) -> Int {
        var total : Int = 0
        for i in 0 ... nums.count - 1 {
            total += nums[i]
        }
        
        return total / nums.count
    }
    
    func mathOp(lhs: Int, rhs: Int, op: (Int, Int) -> Int) -> Int {
        return op(lhs, rhs)
    }
    
    func mathOp(args: [Int], beg: Int, op: (Int, Int) -> Int) -> Int {
        var total : Int = beg
        for i in 0 ... args.count - 1 {
            total = op(total, args[i])
        }
        return total
    }
}
