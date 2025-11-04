//
//  File.swift
//  Core
//
//  Created by partnertientm2 on 4/11/25.
//

import UIKit

public protocol HomeFeatureInterface {
    
    func makeUserListViewController() -> UIViewController
    func makeUserdetailViewController(username: String) -> UIViewController
}
