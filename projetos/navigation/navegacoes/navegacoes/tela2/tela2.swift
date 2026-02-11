//
//  tela2.swift
//  navegacoes
//
//  Created by Felipe iOS on 11/02/26.
//

import UIKit

class tela2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    @IBAction func tappedNextButton(_ sender: UIButton) {
        let tela3 = UIStoryboard(name: "tela3", bundle: nil).instantiateViewController(withIdentifier: "tela3") as! tela3
        
        navigationController?.pushViewController(tela3, animated: true)
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
