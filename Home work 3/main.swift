//
//  main.swift
//  Home work 3
//
//  Created by Айбек Шакиров on 17/9/22.
//

import Foundation

//N1

func prognozpogody(gorod: String)->String {
    switch gorod{
        case "Bishkek": print("pogoda 18.09.22 28 gradysov 19: 29 gradysov 20: 29 gradysov colnechno ")
    case "Jalalabad": print("pogoda 18.09.22 23 gradysov 19: 22 gradysov 20: 20 gradysov colnechno")
    case "Osh": print("pogoda 18.09.22 26 gradysov 19.09.22 28 gradysov 20.09.22  29 gradysov oblachno")
    case "CholponAta": print("pogoda  18.09.22 16 gradysov 19.09.22 19 gradysov 20.09.22  18 gradysov oblachno")
    case "Batken": print("pogoda 18.09.22 25 gradysov 19.09.22 26 gradysov 20.09.22  28 gradysov oblachno")
    case "Chuiskaya oblast": print(" 18.09.22 24 gradysov 19.09.22 18 gradysov 20.09.22  19 gradysov Dojd")
    case "Talas": print("pogoda  18.09.22 25 gradysov 19.09.22 27 gradysov 20.09.22  27 gradysov oblachno")
    default:
        print("Ne tdalos naiti otvet")
    
    }
    return gorod
}
var gorod = readLine()!
prognozpogody(gorod:gorod)

//N2

let cola = 50
let kefir = 65
let milk = 40
let hleb = 20
let salat = 100

var total = 0.0
var discount = 0.0

var totalString = ""
var getItemCost = ""


func getItemCost(name: String) -> Int{
    if name.lowercased() == "cola" {
        return cola
    }else if name.lowercased() == "kefir" {
        return kefir
    }else if name.lowercased() == "milk" {
        return milk
    }else if name.lowercased() == "hleb" {
        return hleb
    }else if name.lowercased() == "salat" {
        return salat
    }else{
        print("takogo prodykta nety")
        print("vedite slovo")
        return 0
        let name = readLine()!
        return getItemCost(name: name)
       
    }
}

print("Vedite nazyvanie prodycta . v nashem asortimente ect:cola, kefir, milk, hleb, salat")

func addToBag(cost: Int, name: String){
    total+=Double(cost)
    print("prodykt\(name)-stoimost\(cost)")}

let product = readLine()!
let product2 = readLine()!
let product3 = readLine()!
let product4 = readLine()!
let product5 = readLine()!

addToBag(cost: getItemCost(name: product), name: product)
addToBag(cost: getItemCost(name: product2), name: product2)
addToBag(cost: getItemCost(name: product3), name: product3)
addToBag(cost: getItemCost(name: product4), name: product4)
addToBag(cost: getItemCost(name: product5), name: product5)

discount = total * 0.05
let addtionalString = "\(total). ckidka = \(discount)\nObshaya cymma = \(total - discount)"
print(totalString + addtionalString)




