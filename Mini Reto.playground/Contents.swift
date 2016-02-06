import UIKit

//Doy por entendido que tengo que evaluar cada número, no importando si esté cumple más de dos condiciones
for i in 0...100{
    
    if i%5 == 0 {
        print("\(i) BINGO!!")
    }
    if i%2 == 0{
        print("\(i) PAR!!")
    }else{
        print("\(i) IMPAR!!")
    }
    if i>=30 && i<=40{
        print("\(i) Viva Swift!!")
    }
}
