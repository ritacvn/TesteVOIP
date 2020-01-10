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
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.view.addSubview(imageView)
        setImageConstraints()
        imageView.load(url: image!) {_ in
            
        }
    }
    
    
    func setImageConstraints() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.pin(to: view)
    }
    
    
    
    
}
