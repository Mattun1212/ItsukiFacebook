//
//  AddInfoViewController.swift
//  ItsukiFacebook
//
//  Created by Koutaro Matsushita on 2022/01/26.
//

import UIKit

class AddInfoViewController: UIViewController {
    
    var nameArray = [String]()
    var saveData: UserDefaults = UserDefaults.standard
    
    @IBOutlet var nameTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        nameArray = saveData.object(forKey: "data") as? [String] ?? []
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func save(){
        if let newName = nameTextField.text {
            nameArray.append(newName)
            saveData.set(nameArray,forKey: "data")
        }
    }
    
    @IBAction func back(){ //既存の戻るボタンではnameArrayが更新されないので戻る直前に更新しておく
        let nav = self.navigationController
        // 一つ前のViewControllerを取得する
        let VC = nav?.viewControllers[(nav?.viewControllers.count)!-2] as! ViewController
        // 値を渡す
        VC.nameArray = nameArray
        
        navigationController?.popViewController(animated: true)
    }
}
