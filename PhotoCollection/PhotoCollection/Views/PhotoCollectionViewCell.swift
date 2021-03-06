//
//  PhotoCollectionViewCell.swift
//  PhotoCollection
//
//  Created by Spencer Curtis on 8/2/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
// Properties
    var photo: Photo? {
        didSet {
            setUpSubView()
        }
    }
    
// Outlets
    private var photoImageView = UIImageView()
    private var photoTitleLabel = UILabel()
    
    
//    private func updateViews() {
//        guard let photo = photo else { return }
//        photoImageView.image = UIImageView(image: UIImage(data: photo.imageData))
//        photoTitleLabel.text = photo.title
//    }
    
    
    private func setUpSubView() {
        if let photo = photo {
            
            
// photoImageView
            
            photoImageView = UIImageView(image: UIImage(data: photo.imageData))
            photoImageView.translatesAutoresizingMaskIntoConstraints = false
            photoImageView.contentMode = .scaleAspectFit
            
            self.addSubview(photoImageView)
            
            
            // Y Axis Top of the imageView
            
            NSLayoutConstraint(item: photoImageView,
                               attribute: .top,
                               relatedBy: .equal,
                               toItem: self,
                               attribute: .top,
                               multiplier: 1,
                               constant: 4).isActive = true
            // Setting up the X Axis
            NSLayoutConstraint(item: photoImageView,
                               attribute: .leading,
                               relatedBy: .equal,
                               toItem: self,
                               attribute: .leading,
                               multiplier: 1,
                               constant: 4).isActive = true
            // Width and Height constraints elimanates the need for a trailing, bottom constrant
            // Trailing Constraints/ Width Constraint
            NSLayoutConstraint(item: photoImageView,
                               attribute: .trailing,
                               relatedBy: .equal,
                               toItem: self,
                               attribute: .trailing,
                               multiplier: 1,
                               constant: -4).isActive = true
            // Height Constraint
            NSLayoutConstraint(item: photoImageView,
                               attribute: .height,
                               relatedBy: .equal,
                               toItem: photoImageView,
                               attribute: .width,
                               multiplier: 1,
                               constant: 0).isActive = true
// photoTitleLabel
            
            photoTitleLabel.translatesAutoresizingMaskIntoConstraints = false
            photoTitleLabel.text = photo.title
            photoTitleLabel.textAlignment = .center
            
            addSubview(photoTitleLabel)
            
            NSLayoutConstraint(item: photoTitleLabel,
                               attribute: .top,
                               relatedBy: .equal,
                               toItem: photoImageView,
                               attribute: .bottom,
                               multiplier: 1,
                               constant: 4).isActive = true
            NSLayoutConstraint(item: photoTitleLabel,
                               attribute: .leading,
                               relatedBy: .equal,
                               toItem: self,
                               attribute: .leading,
                               multiplier: 1,
                               constant: 4).isActive = true
            
            NSLayoutConstraint(item: photoTitleLabel,
                               attribute: .trailing,
                               relatedBy: .equal,
                               toItem: self,
                               attribute: .trailing,
                               multiplier: 1,
                               constant: 4).isActive = true
        }
    }

    
    
    
}
