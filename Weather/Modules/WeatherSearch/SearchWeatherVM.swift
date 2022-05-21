//
//  SearchWeatherVM.swift
//  Weather
//
//  Created by Abdullah Waseer on 21/05/2022.
//

import Foundation
import Moya

class SearchWeatherVM {
    var searchResultList: [SearchResultModel]?
    
    var reloadUI: () -> Void = { }
    var requests: [Cancellable]?
    var isLoading: Bool = false {
        didSet {
            self.reloadUI()
        }
    }
    
    func performSearch(text: String) {
        guard !text.isEmpty else {
            self.searchResultList?.removeAll()
            self.reloadUI()
            return
        }
        isLoading = true
        // Make API call
        requests?.forEach({$0.cancel()})
        requests?.removeAll()
        let request = WeatherAPI.provider.request(.seachText(text: text)) {
            [weak self] result in
            switch result{
            case .success(let response):
                let decoder = JSONDecoder()
                // Populating searchResultList variable
                self?.searchResultList = try? decoder.decode(
                    [SearchResultModel].self,
                    from: response.data
                )
                self?.isLoading = false
            case .failure(let error):
                print(error)
            }
        }
        requests?.append(request)
    }
    
}
