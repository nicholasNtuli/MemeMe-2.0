//
//  MemeDetailViewController.swift
//  MemeMe 2.0
//
//  Created by Sihle Ntuli on 2023/09/13.
//

import Foundation
import UIKit

class MemeDetailViewController : UIViewController {
    
    var meme : Meme!
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = meme.memedImage
    }
}


