//
//  PhotoDetailVC.swift
//  TesteVOIP
//
//  Created by Rita de Cássia Vasconcelos do Nascimento on 09/01/20.
//  Copyright © 2020 Rita de Cássia Vasconcelos do Nascimento. All rights reserved.
//

import UIKit

class PhotoDetailVC: UIViewController {

    var imageView : UIImageView?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        imageView  = UIImageView(frame: CGRect(x: 5, y: 5, width: 200, height: 200))
        imageView?.image = UIImage(named:"268x0w")
        self.view.addSubview(imageView!)
    }
    

  

}
