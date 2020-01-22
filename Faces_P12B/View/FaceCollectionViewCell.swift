//
//  FaceCollectionViewCell.swift
//  Faces
//
//  Created by Jeffrey Lai on 12/16/19.
//  Copyright © 2019 Jeffrey Lai. All rights reserved.
//

import UIKit

class FaceCollectionViewCell: UICollectionViewCell {
    
    //Should I use weak var?
    let faceImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.frame = CGRect.init(x: 0, y: 0, width: 120, height: 120)
        imageView.backgroundColor = .systemGray
        imageView.layer.cornerRadius = imageView.frame.width / 2
        imageView.layer.borderColor = UIColor(white: 0, alpha: 0.3).cgColor
        imageView.layer.borderWidth = 2
        imageView.clipsToBounds = true
        return imageView
    }()

    let name: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.text = "Name"
        label.font = UIFont.init(name: "Marker Felt", size: 16)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCellView()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupCellView() {
        layer.cornerRadius = faceImageView.frame.width / 2
        
        contentView.addSubview(faceImageView)
        contentView.addSubview(name)
        
        NSLayoutConstraint.activate([
            faceImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            faceImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            faceImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            faceImageView.heightAnchor.constraint(equalToConstant: faceImageView.frame.height),
            
            name.topAnchor.constraint(equalTo: faceImageView.bottomAnchor, constant: 0),
            name.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            name.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            name.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
        ])
    }
    
    func configure(nameToAdd: String, face: UIImage) {
        name.text = nameToAdd
        faceImageView.image = face
    }
    
    
}
