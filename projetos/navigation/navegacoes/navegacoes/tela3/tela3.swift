//
//  tela3.swift
//  navegacoes
//
//  Created by Felipe iOS on 11/02/26.
//

import UIKit

class tela3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedNextButton(_ sender: UIButton) {
        let tela4 = UIStoryboard(name: "tela4", bundle: nil).instantiateViewController(withIdentifier: "tela4") as! tela4
        
        navigationController?.pushViewController(tela4, animated: true)
    }
    @IBAction func tappedPreviousButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
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
