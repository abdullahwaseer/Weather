//
//  RootCoordinator.swift
//  Weather
//
//  Created by Abdullah Waseer on 21/05/2022.
//

import UIKit

final class RootCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    var childCoordinators = [Coordinator]()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    
    func start() {
        let searchVC = SearchWeatherVC.loadFromNib()
        searchVC.coordinator = self
        navigationController.pushViewController(searchVC, animated: false)
    }
    
    func presentDetailFor(location: SearchResultModel) {
        let weatherDetailVC = WeatherDetailVC.loadFromNib()
        weatherDetailVC.setLocation(with: location)
        weatherDetailVC.coordinator = self
        navigationController.pushViewController(weatherDetailVC, animated: true)
    }
}

