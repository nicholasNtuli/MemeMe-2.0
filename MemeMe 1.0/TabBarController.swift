//
//  TabBarController.swift
//  MemeMe 2.0
//
//  Created by Sihle Ntuli on 2023/09/13.
//

import Foundation
import UIKit

class TabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add Meme", style: .plain, target: self, action: #selector(newImage))
    }
    
    @objc func newImage(){
        let storyboard = UIStoryboard (name: "Main", bundle: nil)
        let newImageVC = storyboard.instantiateViewController(withIdentifier: "AddMeme")as! MemeEditorViewController
        
        let navigationController = UINavigationController()
        navigationController.viewControllers = [newImageVC]
        self.navigationController?.present(navigationController, animated: true, completion: nil)
    }
}
