//
//  ViewController2.swift
//  calculator
//
//  Created by Oğuzhan Bilge on 8.02.2024.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var calculatorWorkings: UILabel!
    
    @IBOutlet weak var calculatorResults: UILabel!
    
    var workings:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func clearAll()
        {
            workings = ""
            calculatorWorkings.text = ""
            calculatorResults.text = ""
        }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func esittirTab(_ sender: Any) {
        
        if(validInput())
                {
                    let checkedWorkingsForPercent = workings.replacingOccurrences(of: "%", with: "*0.01")
                    let expression = NSExpression(format: checkedWorkingsForPercent)
                    let result = expression.expressionValue(with: nil, context: nil) as! Double
                    let resultString = formatResult(result: result)
                    calculatorResults.text = resultString
                }
                else
                {
                    let alert = UIAlertController(
                        title: "Invalid Input",
                        message: "Calculator unable to do math based on input",
                        preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Okay", style: .default))
                    self.present(alert, animated: true, completion: nil)
                }
            }
    func validInput() ->Bool
        {
            var count = 0
            var funcCharIndexes = [Int]()
            
            for char in workings
            {
                if(specialCharacter(char: char))
                {
                    funcCharIndexes.append(count)
                }
                count += 1
            }
            
            var previous: Int = -1
            
            for index in funcCharIndexes{
                if(index == 0)
                {
                    return false
                }
                
                if(index == workings.count - 1)
                {
                    return false
                }
                
                if (previous != -1)
                {
                    if(index - previous == 1)
                    {
                        return false
                    }
                }
                previous = index
            } ; return true
        }
    func specialCharacter (char: Character) -> Bool
    {
        if(char == "*")
        {
            return true
        }
        if(char == "/")
        {
            return true
        }
        if(char == "+")
        {
            return true
        }
        return false
    }
    func formatResult(result: Double) -> String
        {
            if(result.truncatingRemainder(dividingBy: 1) == 0)
            {
                return String(format: "%.0f", result)
            }
            else
            {
                return String(format: "%.2f", result)
            }
        }
        
    @IBAction func allClearTap(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func BackTab(_ sender: Any) {
        if(!workings.isEmpty)
                {
                    workings.removeLast()
                    calculatorWorkings.text = workings
                }
            }
            
            func addToWorkings(value: String)
            {
                workings = workings + value
                calculatorWorkings.text = workings
            }
    
    @IBAction func yuzdeTab(_ sender: Any) {
        
        addToWorkings(value: "%")
    }
    
    @IBAction func bolmeTab(_ sender: Any) {
        addToWorkings(value: "/")
    }
    @IBAction func carpmaTab(_ sender: Any) {
        addToWorkings(value: "*")
    }
    
    @IBAction func cıkarmaTab(_ sender: Any) {
        addToWorkings(value: "-")
    }
    @IBAction func toplamaTab(_ sender: Any) {
        addToWorkings(value: "+")
    }
    
    @IBAction func noktaTab(_ sender: Any) {
        addToWorkings(value: ".")
    }
    
    @IBAction func zeroTab(_ sender: Any) {
        addToWorkings(value: "0")
        
    }
    
    @IBAction func oneTab(_ sender: Any) {
        addToWorkings(value: "1")
    }
    @IBAction func twoTab(_ sender: Any) {
        addToWorkings(value: "2")
    }
    
    @IBAction func treheTab(_ sender: Any) {
        addToWorkings(value: "3")
    }
    @IBAction func fourTab(_ sender: Any) {addToWorkings(value: "4")
    }
    @IBAction func fiveTab(_ sender: Any) {
        addToWorkings(value: "5")
    }
    @IBAction func sixTab(_ sender: Any) {
        addToWorkings(value: "6")
    }
    @IBAction func sevenTab(_ sender: Any) {
        addToWorkings(value: "7")
    }
    @IBAction func egithTab(_ sender: Any) {
        addToWorkings(value: "8")
    }
    @IBAction func nineTab(_ sender: Any) {
        addToWorkings(value: "9")
    }
    
}
