//
//  API.swift
//  RocketApp
//
//  Created by Krátká Eliška on 06.11.2023.
//

import Foundation

protocol HasRocketAPIService {
    var rocketAPIService: RocketAPIServicing { get }
}

protocol RocketAPIServicing {
    func rockets() async throws -> [Rocket]
}

final class RocketAPIService: RocketAPIServicing {
    let apiURL: String
    
    init(apiURL: String) {
        self.apiURL = apiURL
    }
    
    func rockets() async throws -> [Rocket] {
        try await makeRequest()
    }
    
    private func makeRequest<Response: Decodable>() async throws -> Response {
        let url = try createURL()
        
        let request = URLRequest(url: url)
        let (data, response) = try await URLSession.shared.data(for: request)
        
        try validateResponse(response: response)
         
        return try decodeResponse(type: Response.self, data: data)
    }
    
    private func createURL() throws -> URL {
        guard let url = URL(string: apiURL) else {
            throw RocketAPIError.invalidURL
        }
        return url
    }
    
    private func validateResponse(response: URLResponse) throws {
        if let response = response as? HTTPURLResponse {
            switch response.statusCode {
                //success
                case 200...299:
                    break
                //error
                case 400:
                    throw RocketAPIError.Response.badRequest
                case 401:
                    throw RocketAPIError.Response.unauthorized
                case 403:
                    throw RocketAPIError.Response.forbidden
                case 404:
                    throw RocketAPIError.Response.notFound
                case 500...504:
                    throw RocketAPIError.Response.serverFailure
                default:
                    throw RocketAPIError.Response.unknownError
            }
        }
    }
    
    private func decodeResponse<Response: Decodable>(type: Response.Type, data: Data) throws -> Response {
        do {
            return try JSONDecoder().decode(Response.self, from: data)
        } catch {
            throw RocketAPIError.Response.decodeFailure
        }
    }
}


