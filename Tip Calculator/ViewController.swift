//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Ricardo Perez on 1/5/17.
//  Copyright © 2017 Ricardo Perez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblTitleLabelOUTLET: UILabel!
    @IBOutlet weak var txtCostTextOUTLET: UITextField!
    @IBOutlet weak var lblSliderLabelOUTLET: UILabel!
    @IBOutlet weak var sldTipAmountSliderOUTLET: UISlider!
    @IBOutlet weak var btnCalculateButtonOUTLET: UIButton!
    @IBOutlet weak var lblTotalCostLAbelOUTLET: UILabel!
    
    var totalCost : Double?
    var tipAmount : Double?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func chooseSliderValue(_ sender: UISlider) {
        tipAmount = Double(sldTipAmountSliderOUTLET.value)
        lblSliderLabelOUTLET.text = String(format:"%0.2f",tipAmount!)
    }

    @IBAction func pressCalculateButton(_ sender: UIButton) {
        if(!(txtCostTextOUTLET.text?.isEmpty)!){
            var cost = Double(txtCostTextOUTLET.text!)
            calculateTotal(cost: cost!)
            displayCost()
            lblTitleLabelOUTLET.text = "Enter cost and select tip amount"
        }else{
            lblTitleLabelOUTLET.text = "You must enter a number"
        }
    }
    
    func calculateTotal(cost:Double){
        //var tipAmount = (tipAmount!/100) * cost
        //totalCost = tipAmount + cost
        if let tipAmountValue = tipAmount{
            var tipAmountValue2 = (tipAmountValue/100) * cost
            totalCost = tipAmountValue2 + cost
        }
    }
    
    func displayCost(){
        lblTotalCostLAbelOUTLET.text = String(format:"%0.2f",totalCost!)
        lblTitleLabelOUTLET.text = "Enter cost and select tip amount"
    }
}

