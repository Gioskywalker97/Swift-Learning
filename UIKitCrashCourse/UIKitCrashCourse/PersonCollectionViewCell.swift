//
//  PersonCollectionViewCell.swift
//  UIKitCrashCourse
//
//  Created by Giovanni Salas on 1/29/24.
//

import UIKit

class PersonCollectionViewCell: UICollectionViewCell {
    private var vw: PersonView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension PersonCollectionViewCell {
    
    func setup() {
        guard vw == nil else { return }
        
        vw = PersonView {
            
        }
        
        self.contentView.addSubview(vw!)
        
        NSLayoutConstraint.activate([
            
            vw!.topAnchor.constraint(equalTo: contentView.topAnchor),
            vw!.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            vw!.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            vw!.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8)
        ])
    }
}
