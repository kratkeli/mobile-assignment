//
//  RocketAPIError.swift
//  RocketApp
//
//  Created by Krátká Eliška on 07.11.2023.
//

import Foundation

enum RocketAPIError: Error {
    case invalidURL
    
    enum Response: Error {
        case badRequest
        case unauthorized
        case forbidden
        case notFound
        case serverFailure
        case unknownError
        case decodeFailure
    }
}
