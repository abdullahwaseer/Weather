//
//  WeatherData.swift
//  Weather
//
//  Created by Abdullah Waseer on 21/05/2022.
//

import Foundation

struct WeatherData : Codable {

    let main : Main?
    let name : String?
    let weather : [Weather]?
    let wind : Wind?

}
