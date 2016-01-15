//
//  CetArray.swift
//  
//
//  Created by Sahana Rangarajan on 2/14/15.
//
//

import UIKit
import Foundation

class CetArray: NSObject {
    let orca : Cetacean
    let beluga : Cetacean
    let vaquita : Cetacean
    let greyWhale : Cetacean
    
    let cetArray : [Cetacean]

    
    override init() {
        orca = Cetacean(isDark : true, hasFin : true, doubleSpout : false, smallerThan3m : false)
        orca.setDesc("Orca\nYou could be seeing an Orca (Orcinus orca), also known as a Killer Whale.Present throughout much of the world, the orca is distinguished by its striking white eye and throat-to-belly patches, prominent dorsal fin, tall but bushy spout, and highly social behavior. Killer whales are typically fast swimmers with fast, unpredictable movements. They are sometimes inquisitive and approachable.")
        beluga = Cetacean(isDark : false, hasFin : false, doubleSpout : false, smallerThan3m : false)
        beluga.setDesc("You could be seeing a Beluga (Delphinapterus leucas).")
        vaquita = Cetacean(isDark : false, hasFin : true, doubleSpout : false, smallerThan3m : true)
        vaquita.setDesc("You could be seeing a Vaquita (Phocoena sinus)")
        greyWhale = Cetacean(isDark : true, hasFin : false, doubleSpout : true, smallerThan3m : false)
        greyWhale.setDesc("Grey Whale\nYou could be seeing a Grey Whale (Eschrichtius robustus), generally ranging throughout the North Pacific and frequenting Alaska during the spring and Baja/Mexico during the winter. A medium sized whale with a robust body, narrow, bowed head, and paddle shaped flippers, the grey whale can be identified additionally by its marbled, blotched skin often covered in numerous scars and barnacles. Its spout is low and heart- or V-shaped. Grey whales can be inquisitive and may approach boats.");
        cetArray = [orca, beluga, vaquita, greyWhale]
    }
    
    //Sets name of other cetacean as the name in the array if
    //a match is found. If no match is found, returns false.
    func findMatch(other: Cetacean) -> Bool {
        for thisCet in self.cetArray {
            if thisCet.equals(other) {
                other.setDesc(thisCet.getDesc())
                return true;
            }
        }
        return false;
    }
}
