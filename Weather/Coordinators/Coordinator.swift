//
//  Coordinator.swift
//  Weather
//
//  Created by Abdullah Waseer on 21/05/2022.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    var childCoordinators: [Coordinator] { get set }
    
    func start()
}
