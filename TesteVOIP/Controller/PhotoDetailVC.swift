//
//  PhotoDetailVC.swift
//  TesteVOIP
//
//  Created by Rita de Cássia Vasconcelos do Nascimento on 09/01/20.
//  Copyright © 2020 Rita de Cássia Vasconcelos do Nascimento. All rights reserved.
//

import UIKit

class PhotoDetailVC: UIViewController {
    
    var imageView = UIImageView()
    var image: URL?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureImageView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.view.addSubview(imageView)
        imageView.load(url: image!) {_ in
            
        }
    }
    
    func configureImageView(){
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView  = UIImageView(frame: CGRect(x: 0, y: 0, width: 375, height: 667))
    }
    
    
    
    
}
