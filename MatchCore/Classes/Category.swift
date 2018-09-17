//
//  Category.swift
//  Pods
//
//  Created by Abel Castro on 17/9/18.
//

import Foundation

public enum TFCategory: Equatable, Hashable {
    enum Keys: String {
        case food = "FOOD"
        case drink = "DRINK"
        case color = "COLOR"
        case maleName = "MALENAME"
        case femaleName = "FEMALENAME"
        case carBrand = "CARBRAND"
        case clothesBrand = "CLOTHESBRAND"
        case clothing = "CLOTHING"
        case animal = "ANIMAL"
        case custom = "CUSTOM"
    }
    case food
    case drink
    case color
    case maleName
    case femaleName
    case carBrand
    case clothesBrand
    case clothing
    case animal
    case custom(String)
}

extension TFCategory: Codable {
    public init(from decoder: Decoder) throws {
        let label = try decoder.singleValueContainer().decode(String.self)
        switch label {
        case Keys.food.rawValue: self = .food
        case Keys.drink.rawValue: self = .drink
        default: self = .custom(label)
        }
    }
    
    public func encode(to encoder: Encoder) throws {
        let value: String
        switch self {
        case .food:
            value = Keys.food.rawValue
        case .drink:
            value = Keys.drink.rawValue
        case .color:
            value = Keys.color.rawValue
        case .maleName:
            value = Keys.maleName.rawValue
        case .femaleName:
            value = Keys.femaleName.rawValue
        case .carBrand:
            value = Keys.carBrand.rawValue
        case .clothesBrand:
            value = Keys.clothesBrand.rawValue
        case .clothing:
            value = Keys.clothing.rawValue
        case .animal:
            value = Keys.animal.rawValue
        case .custom(let val):
            value = val
        }
        var container = encoder.singleValueContainer()
        try container.encode(value)
    }
    
}

