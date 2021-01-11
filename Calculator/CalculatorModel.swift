

import Foundation

struct CalculatorModel{
    //the value of the newVal variable after we tap a math operation button
    var oldVal: String = ""
    
    // the value we collect from the user
    var newVal: String = ""
    
    var resultVal: String = ""
    var mathOperator: String = ""
    //the defulat that the number doesn't have a decimal point
    var decimalNumber: Bool = false
    
    
    mutating func numberButtonTapped(_ num: String)-> String{
        //checks if the tapped number id the first one or not
        if !(resultVal.isEmpty){
            newVal = num
            resultVal = ""
        }
        else{
            //chech if the user hit a decimal point
            if num == "."{
                //check if the number already has a decimal point or not
                if !decimalNumber {
                    newVal += num
                    decimalNumber = true
                }
            }
            else{
               newVal += num
            }
        }
        return newVal
    }
    
    mutating func mathOperationButtonTapped(_ mathOperator: String)-> String{
        //checks if there is a previous calculations
        if resultVal.isEmpty{
            oldVal = newVal
        }
        else{
            oldVal = resultVal
        }
        newVal = ""
        self.mathOperator = mathOperator
        resultVal = ""
        decimalNumber = false
        return ""
        
    }
    
    mutating func equalButtonTapped() -> String{
        if newVal.isEmpty{return "0"}
        if mathOperator.isEmpty{return newVal}
        
        let oldValDouble: Double = Double(oldVal)!
        let newValueDouble: Double = Double(newVal)!
        switch mathOperator{
               case "+":
                    resultVal = String(oldValDouble + newValueDouble)
                case "-":
                    resultVal = String(oldValDouble - newValueDouble)
                case "x":
                    resultVal = String(oldValDouble * newValueDouble)
                case "/":
                    if newValueDouble != 0{
                        resultVal = String(oldValDouble / newValueDouble)
                            }
                case "%":
                    resultVal = String(oldValDouble.truncatingRemainder(dividingBy: newValueDouble))
                default:
                    resultVal = oldVal
                }
                
            
            
        
        return resultVal
        
    }
    mutating func clearAll()-> String{
        oldVal = ""
        newVal = ""
        mathOperator = ""
        resultVal = ""
        decimalNumber = false
        return "0"
        
    }
    
    
}
