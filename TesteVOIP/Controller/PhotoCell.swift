  //
  //  PhotoCell.swift
  //  TesteVOIP
  //
  //  Created by Rita de Cássia Vasconcelos do Nascimento on 08/01/20.
  //  Copyright © 2020 Rita de Cássia Vasconcelos do Nascimento. All rights reserved.
  //
  
  import UIKit
  
  class PhotoCell: UITableViewCell {
    
    var photoImageView = UIImageView()
    var photoTitleLabel = UILabel()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier )
        addSubview(photoImageView)
        addSubview(photoTitleLabel)
        
        configureImageView()
        configureTitleLabel()
        setImageContraints()
        setTitleLabelConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureImageView(){
        photoImageView.layer.cornerRadius = 10
        photoImageView.clipsToBounds = true
    }
    
    func configureTitleLabel(){
        photoTitleLabel.numberOfLines = 0
        photoTitleLabel.adjustsFontSizeToFitWidth = true
    }
    
    func setImageContraints(){
        photoImageView.translatesAutoresizingMaskIntoConstraints = false
        photoImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        photoImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        
        photoImageView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        photoImageView.widthAnchor.constraint(equalTo: photoImageView.heightAnchor, multiplier: 16/9).isActive = true
        
    }
    
    func setTitleLabelConstraints(){
        photoTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        photoTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        photoTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        
        photoTitleLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        photoTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant:  -12).isActive = true
        
        
    }
    
  }
