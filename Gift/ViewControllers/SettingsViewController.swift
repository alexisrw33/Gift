//
//  SettingsViewController.swift
//  Gift
//
//  Created by Alexis Rojas-Westall on 12/12/21.
//

import UIKit


class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        print("true")
        let defaults = UserDefaults.standard
        let darkMode = defaults.integer(forKey: "DarkMode")
        if (darkMode == 1) {
            overrideUserInterfaceStyle = .dark
        } else {
            overrideUserInterfaceStyle = .light
        }
    }
    
    @IBAction func onLightMode(_ sender: Any) {
        overrideUserInterfaceStyle = .light
        let defaults = UserDefaults.standard
        defaults.set(0, forKey: "DarkMode")
    }
    @IBAction func onDarkButton(_ sender: Any) {
        overrideUserInterfaceStyle = .dark
        let defaults = UserDefaults.standard
        defaults.set(1, forKey: "DarkMode")
    }
    @IBAction func onBackButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
    
    
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
