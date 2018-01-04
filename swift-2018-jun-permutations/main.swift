//
//  main.swift
//  swift-2018-jun-permutations
//
//  Created by Shimizu Dan on 2018/01/05.
//  Copyright © 2018年 Shimizu Dan. All rights reserved.
//

import Foundation

//順列の関数
func permutations( a:[Int]) -> [[Int]] {
    var e:[[Int]] = [[]]
    var f:[[Int]] = []
    for i in 0...a.count-1{
        var n:Int = 1
        var m:Int = 1
        for p in 0...i{
            m = n
            n = n * (p+1)
        }
        for j in 0...n-1{
            e[j].insert(a[i], at: j/m)
        }
        f = e
        for _ in 0...i{
            e += f
        }
    }
    return f
}


//例
permutations(a: [1,2,3]).count

for v in permutations(a: [1,2,3]){
    print(v)
}



