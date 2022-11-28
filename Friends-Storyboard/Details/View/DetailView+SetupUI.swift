//
//  DetailView+SetupUI.swift
//  Friends-Storyboard
//
//  Created by Boris Ofon on 11/28/22.
//

import UIKit

extension DetailViewController {
    
    func style() {
        
        if let title = detailTitle{
            navigationItem.title = title
        }
    }
}
