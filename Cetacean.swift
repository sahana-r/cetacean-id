//
//  Cetacean.swift
//  
//
//  Created by Sahana Rangarajan on 2/11/15.
//
//

import Foundation


class Cetacean {
    var desc = ""
    var isDark: Bool
    var hasFin: Bool
    var doubleSpout: Bool
    var smallerThan3m: Bool
    
    init(isDark: Bool, hasFin: Bool, doubleSpout: Bool, smallerThan3m: Bool) {
        self.isDark = isDark
        self.hasFin = hasFin
        self.doubleSpout = doubleSpout
        self.smallerThan3m = smallerThan3m
    }
    
    func equals(other : Cetacean) -> Bool{
        if self.isDark != other.isDark {
            return false
        }
        else if self.hasFin != other.hasFin {
            return false
        }
        else if self.doubleSpout != other.doubleSpout {
            return false
        }
        else if self.smallerThan3m != other.smallerThan3m {
            return false
        }
        return true
    }
    
    func setDesc(newDesc: String) {
        self.desc = newDesc
    }
    
    func getDesc() -> String{
        return self.desc
    }

    
    
}




