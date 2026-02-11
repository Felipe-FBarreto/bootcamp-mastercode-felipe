//
//  ViewController.swift
//  navegacoes
//
//  Created by Felipe iOS on 11/02/26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedNavigationButton(_ sender: UIButton) {
        let tela1 = UIStoryboard(name: "tela1", bundle: nil).instantiateViewController(withIdentifier: "tela1") as! tela1
        navigationController?.pushViewController(tela1, animated: true)
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
