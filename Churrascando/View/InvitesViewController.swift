//
//  InvitesViewController.swift
//  Churrascando
//
//  Created by Daniel Maia on 20/11/2018.
//  Copyright © 2018 Daniel Maia Alves. All rights reserved.
//

import UIKit

class InvitesViewController: UIViewController {

    @IBOutlet weak var lbMen: UILabel!
    @IBOutlet weak var lbWomen: UILabel!
    @IBOutlet weak var lbKids: UILabel!
    @IBOutlet weak var slMen: UISlider!
    @IBOutlet weak var slWomen: UISlider!
    @IBOutlet weak var slKids: UISlider!
    
    var invited: Invited!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if invited == nil {
            invited = Invited(context: context)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func setMen(_ sender: UISlider) {
        lbMen.text = "Homens: \(Int(slMen.value))"
    }
    
    @IBAction func setWomen(_ sender: UISlider) {
        lbWomen.text = "Mulheres: \(Int(slWomen.value))"
    }
    
    @IBAction func setKids(_ sender: UISlider) {
        lbKids.text = "Crianças: \(Int(slKids.value))"
    }
    
}
