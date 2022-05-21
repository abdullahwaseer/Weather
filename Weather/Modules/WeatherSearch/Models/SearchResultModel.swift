//
//  SearchResultModel.swift
//  Weather
//
//  Created by Abdullah Waseer on 21/05/2022.
//

import Foundation

struct SearchResultModel: Codable {
    let name: String?
    let lat: Double?
    let lon: Double?
    let country: String?
    let state: String?
}
