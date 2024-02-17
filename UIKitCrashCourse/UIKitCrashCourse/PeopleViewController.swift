//
//  PeopleViewController.swift
//  UIKitCrashCourse
//
//  Created by Giovanni Salas on 1/26/24.
//

import UIKit

class PeopleViewController: UIViewController {
    
    private lazy var cv: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = .init(width: UIScreen.main.bounds.width, height: 130)
        
        let vw = UICollectionView(frame: .zero, collectionViewLayout: layout)
        vw.translatesAutoresizingMaskIntoConstraints = false
        return vw
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Ya boys in mem!")
        setup()
    }
}

private extension PeopleViewController {
    
    func setup() {
        
        self.view.backgroundColor = .white
        
        self.view.addSubview(cv)
        
        NSLayoutConstraint.activate([
        
            cv.topAnchor.constraint(equalTo: view.topAnchor),
            cv.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            cv.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            cv.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            
        ])

    }
}
