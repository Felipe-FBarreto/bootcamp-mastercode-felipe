//
//  ResumoViewController.swift
//  ColorFit
//
//  Created by Felipe iOS on 10/02/26.
//

import UIKit

class ResumoViewController: UIViewController {
    
    var nome:String = ""
    var mode:Int = 0
    var intensity:Float = 0

    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var modeLabel: UILabel!
    @IBOutlet weak var intensityLabel: UILabel!
    
    @IBOutlet weak var goBackToHomeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        nomeLabel.text = nome
        modeLabel.text = definitionMode()
        intensityLabel.text = String(format: "%.2f", intensity)
        goBackToHomeButton.layer.cornerRadius = 16
        // Do any additional setup after loading the view.
    }
    
    func definitionMode () -> String {
        if mode == 1 {
            return "Dark"
        }else{
            return "Light"
        }
    }
    
    @IBAction func tappedGoBackHomeButton(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
