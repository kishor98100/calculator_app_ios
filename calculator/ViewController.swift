//
//  ViewController.swift
//  calculator
//
//  Created by Kishor Mainali on 10/4/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultShow: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var newOperation = true
    func addNumberToInput(_ input:String){
        var textNumber = resultShow.text!
        if newOperation{
            textNumber=""
        }
        textNumber = textNumber+input
        resultShow.text = textNumber
        newOperation=false
    }
    
    
    @IBAction func btn0(_ sender: Any) {
        addNumberToInput("0")
    }
    
    @IBAction func btnDot(_ sender: Any) {
        let input = resultShow.text!
        if !input.contains(".") {
            addNumberToInput(".")
        }
       
    }
    
   
    @IBAction func btnOne(_ sender: Any) {
        addNumberToInput("1")
    }
    
    @IBAction func btnTwo(_ sender: Any) {
        addNumberToInput("2")
    }
    
    @IBAction func btnThree(_ sender: Any) {
        addNumberToInput("3")
    }
    
    @IBAction func btnFour(_ sender: Any) {
        addNumberToInput("4")
    }
    
    @IBAction func btnFive(_ sender: Any) {
        addNumberToInput("5")
    }
    
    @IBAction func btnSix(_ sender: Any) {
        addNumberToInput("6")
    }
    
    @IBAction func btnSeven(_ sender: Any) {
        addNumberToInput("7")
    }
    
    @IBAction func btnEight(_ sender: Any) {
        addNumberToInput("8")
    }
    
    @IBAction func btnNine(_ sender: Any) {
        addNumberToInput("9")
    }
    
    @IBAction func btnAC(_ sender: Any) {
        resultShow.text="0"
        newOperation=true
        
    }
    var op = "+"
    var number1:Double?
    @IBAction func btnPlusMinus(_ sender: Any) {
        var textNumber = resultShow.text!
        textNumber = "-" + textNumber
        resultShow.text = textNumber
    }
    
    @IBAction func btnPercentage(_ sender: Any) {
        var textNumber = Double(resultShow.text!)
        textNumber = textNumber!/100.0
        resultShow.text = String(textNumber!)
        newOperation = true
       
       
    }
    
    @IBAction func btnDivide(_ sender: Any) {
        op="/"
        number1 = Double(resultShow.text!)
        newOperation = true
    }
    
    
    @IBAction func btnMultiply(_ sender: Any) {
        op="*"
        number1 = Double(resultShow.text!)
        newOperation = true
    }
    
    @IBAction func btnPlus(_ sender: Any) {
        op="+"
        number1 = Double(resultShow.text!)
        newOperation = true
    }
    
    @IBAction func btnMinus(_ sender: Any) {
        op="-"
        number1 = Double(resultShow.text!)
        newOperation = true
    }
    
    @IBAction func btnEqual(_ sender: Any) {
        
        if !newOperation {
            let number2 = Double(resultShow.text!)
            var result:Double?
            switch op {
                case "*":
                    result = number1! * number2!
                case "/":
                    result = number1! / number2!
                case "-":
                    result = number1! - number2!
                case "+":
                    result = number1! + number2!
                default:
                    result = 0.0
            }
            resultShow.text = String(result!)
            newOperation = true
        }
    }
    
    
    
}

