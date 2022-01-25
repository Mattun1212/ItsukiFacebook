//
//  AddInfoViewController.swift
//  ItsukiFacebook
//
//  Created by Koutaro Matsushita on 2022/01/26.
//

import UIKit

class AddInfoViewController: UIViewController {
    
    @IBOutlet var nameTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func back(){ //戻ると見せかけて新しくViewControllerを生成、移動
        let VC = self.storyboard?.instantiateViewController(withIdentifier: "View") as! ViewController
        VC.newName = nameTextField.text!
        VC.navigationItem.hidesBackButton = true
        self.navigationController?.pushViewController(VC,animated: true)
    }
    
}
