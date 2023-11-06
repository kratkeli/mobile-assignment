//
//  RocketModel.swift
//  RocketApp
//
//  Created by Krátká Eliška on 06.11.2023.
//

import Foundation

struct Rocket: Decodable, Identifiable {
    var id: Int
    var stages: Int
    var firstFlight: String
    var height: Height
    var diameter: Diameter
    var mass: Mass
    var firstStage: Stage
    var secondStage: Stage
    var flickrImages: [String]
    var description: String
    var rocketId: String
    var rocketName: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case stages
        case firstFlight = "first_flight"
        case height
        case diameter
        case mass
        case firstStage = "first_stage"
        case secondStage = "second_stage"
        case flickrImages = "flickr_images"
        case description
        case rocketId = "rocket_id"
        case rocketName = "rocket_name"
    }
    
    static var exampleRocket = Rocket(
        id: 1,
        stages: 2,
        firstFlight: "2006-03-24",
        height: Height.exampleHeight,
        diameter: Diameter.exampleDiameter,
        mass: Mass.exampleMass,
        firstStage: Stage.exampleStage,
        secondStage: Stage.exampleStage,
        flickrImages: ["https://imgur.com/DaCfMsj.jpg", "https://imgur.com/azYafd8.jpg"],
        description: "The Falcon 1 was an expendable launch system privately developed and manufactured by SpaceX during 2006-2009. On 28 September 2008, Falcon 1 became the first privately-developed liquid-fuel launch vehicle to go into orbit around the Earth.",
        rocketId: "falcon1",
        rocketName: "Falcon 1"
    )
}
