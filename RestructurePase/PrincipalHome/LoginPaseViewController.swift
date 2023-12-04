//
//  LoginPaseViewController.swift
//  RestructurePase
//
//  Created by Sergio Guzman Ortiz on 04/12/23.
//

import UIKit

class LoginPaseViewController: UIViewController {

    @IBOutlet weak var LogUser: UITextField!
    @IBOutlet weak var LogPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func EnterLogin(_ sender: Any) {
        let objLogin = storyboard?.instantiateViewController(withIdentifier: "tableHomeid")
        present(objLogin!, animated: true)
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
