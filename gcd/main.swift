//
//  main.swift
//  gcd
//
//  Created by Charles Plater on 12/5/18.
//  Copyright © 2018 Charles Plater. All rights reserved.
//

import Foundation

func gcd(_ m: Int, _ n: Int) -> Int {

    let a = max(m,n)
    let b = min(m,n)
    
    let remainder = a % b;
    
    if remainder != 0 {
        return gcd(b,remainder)
    } else {
        return b
    }
}

if CommandLine.arguments.count != 3 {
    print("Usage: gcd(a,b) ", CommandLine.arguments.count)
    exit(1)
}

let a = Int(CommandLine.arguments[1])
let b = Int(CommandLine.arguments[2])
let div = gcd(a!,b!)

print ((gcd(a!,b!)))
