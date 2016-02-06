//: Playground - noun: a place where people can play

import UIKit

//Doy por entendido que el cero matematicamente es multiplo de 5
for i in 0...100{
    if i%5 == 0{
        print("\(i) BINGO!!")
    }else if i%2 == 0{
        print("\(i) PAR!!")
    }else{
        print("\(i) IMPAR!!")
    }
}
