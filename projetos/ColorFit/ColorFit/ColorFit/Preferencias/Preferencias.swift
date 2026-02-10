//
//  Preferencias.swift
//  ColorFit
//
//  Created by Felipe iOS on 10/02/26.
//

import UIKit

class Preferencias: UIViewController {
    
    var name:String = ""
    var isDarkMode:Bool = false
    var intensity:Float = 0
    
    
    
    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var modeSegmentedControl: UISegmentedControl!
    @IBOutlet weak var rangerSlider: UISlider!
    @IBOutlet weak var resumoButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nomeLabel.text = "Olá, \(name)!"
        resumoButton.layer.cornerRadius = 16
        print(modeSegmentedControl.selectedSegmentIndex)
        print(rangerSlider.value)
    }
    
    @IBAction func tappedModeSegmented(_ sender: Any) {
        isDarkMode = (sender as AnyObject).selectedSegmentIndex == 1
        
    }
    
    @IBAction func tappedRengerSlider(_ sender: Any) {
        intensity = (sender as AnyObject).value
        updateUI()
    }
    @IBAction func tappedResumoButton(_ sender: Any) {
        let resumoController = UIStoryboard(name: "Resumo", bundle: nil).instantiateViewController(withIdentifier: "ResumoViewController") as! ResumoViewController
        resumoController.nome = name
        resumoController.mode = modeSegmentedControl.selectedSegmentIndex
        resumoController.intensity = intensity

        navigationController?.pushViewController(resumoController, animated: true)
    }
    
    func updateUI() {
        if isDarkMode {
            let bgIntensity = 0.1 + CGFloat(intensity) * 0.3

            view.backgroundColor = UIColor(
                white: bgIntensity,
                alpha: 1
            )

            nomeLabel.textColor = .white

        } else {
            view.backgroundColor = UIColor(
                red: 0.3 + CGFloat(intensity),
                green: 0.6 + CGFloat(intensity),
                blue: 1.0,
                alpha: 1
            )

            let textIntensity = 0.3 + (1 - CGFloat(intensity)) * 0.7
            nomeLabel.textColor = UIColor(
                white: textIntensity,
                alpha: 1
            )
        }
    }



}
