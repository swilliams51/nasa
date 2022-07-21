//
//  Mission.swift
//  Nasa
//
//  Created by Steven Williams on 7/17/22.
//

import Foundation
import SwiftUI


struct Mission: Identifiable {
    var id: UUID = UUID()
    var name: String
    var description: String
    var logo: Image
}


class Missions: ObservableObject {
    @Published var missions:[Mission] = Mission.list
    @Published var level: Level = .full
    
    func getNames() -> [String] {
        var listOfMissions: [String] = [String]()
        
        if level == .basic {
            listOfMissions.append(missions[0].name)
        } else {
            for x in 0..<missions.count {
                listOfMissions.append(missions[x].name)
            }
        }
        
        return listOfMissions
    }
    
    func getMissionDetails(aName: String) -> String {
        var missionDetails: String = ""
        for x in 0..<missions.count {
            if missions[x].name == aName {
                missionDetails = missions[x].description
            }
        }
        return missionDetails
    }
    
    func getMissionLogo (aName: String) -> Image {
        var missionLogo: Image = Image(systemName: "moon.filled")
        for x in 0..<missions.count {
            if missions[x].name == aName {
                missionLogo = missions[x].logo
            }
        }
        return missionLogo
    }
}

extension Mission {
    static let list = [Mission(name: "Apollo", description: "The Apollo program, also known as Project Apollo, was the third United States human spaceflight program carried out by the National Aeronautics and Space Administration (NASA), which succeeded in preparing and landing the first humans on the Moon from 1968 to 1972. It was first conceived in 1960 during President Dwight D. Eisenhower's administration as a three-person spacecraft to follow the one-person Project Mercury, which put the first Americans in space. Apollo was later dedicated to President John F. Kennedy's national goal for the 1960s of landing a man on the Moon and returning him safely to the Earth in an address to Congress on May 25, 1961. It was the third US human spaceflight program to fly, preceded by the two-person Project Gemini conceived in 1961 to extend spaceflight capability in support of Apollo.", logo: Image("Apollo_program")),
                       
    Mission(name: "Mercury", description: "Project Mercury was the first human spaceflight program of the United States, running from 1958 through 1963. An early highlight of the Space Race, its goal was to put a man into Earth orbit and return him safely, ideally before the Soviet Union. Taken over from the US Air Force by the newly created civilian space agency NASA, it conducted 20 uncrewed developmental flights (some using animals), and six successful flights by astronauts. The program, which took its name from Roman mythology, cost $2.38 billion (adjusted for inflation).The astronauts were collectively known as the Mercury Seven, and each spacecraft was given a name ending with a 7 by its pilot.", logo: Image("MercuryPatch")),
        
    Mission(name: "Gemini", description: "Project Gemini was NASA's second human spaceflight program. Conducted between projects Mercury and Apollo, Gemini started in 1961 and concluded in 1966. The Gemini spacecraft carried a two-astronaut crew. Ten Gemini crews and 16 individual astronauts flew low Earth orbit (LEO) missions during 1965 and 1966.Gemini's objective was the development of space travel techniques to support the Apollo mission to land astronauts on the Moon. In doing so, it allowed the United States to catch up and overcome the lead in human spaceflight capability the Soviet Union had obtained in the early years of the Space Race, by demonstrating: mission endurance up to just under 14 days, longer than the eight days required for a round trip to the Moon; methods of performing extra-vehicular activity (EVA) without tiring; and the orbital maneuvers necessary to achieve rendezvous and docking with another spacecraft. This left Apollo free to pursue its prime mission without spending time developing these techniques.", logo: Image("GeminiPatch")),
                       
    Mission(name: "SkyLab", description: "Skylab was the first United States space station, launched by NASA, occupied for about 24 weeks between May 1973 and February 1974. It was operated by three separate three-astronaut crews: Skylab 2, Skylab 3, and Skylab 4. Major operations included an orbital workshop, a solar observatory, Earth observation, and hundreds of experiments. Unable to be re-boosted by the Space Shuttle, which was not ready until 1981, Skylab's orbit eventually decayed, and it disintegrated in the atmosphere on July 11, 1979, scattering debris across the Indian Ocean and Western Australia.", logo: Image("SkylabPatch")),
                       
   Mission(name: "Space Shuttle program", description: "The Space Shuttle became the major focus of NASA in the late 1970s and the 1980s. Originally planned as a frequently launchable, fully reusable vehicle, the design was changed to use an expendable external propellant tank to reduce development cost, and four Space Shuttle orbiters were built by 1985. The first to launch, Columbia, did so on April 12, 1981, the 20th anniversary of the first human spaceflight. The Shuttle flew 135 missions and carried 355 astronauts from 16 countries, many on multiple trips. Its major components were a spaceplane orbiter with an external fuel tank and two solid-fuel launch rockets at its side. The external tank, which was bigger than the spacecraft itself, was the only major component that was not reused. The shuttle could orbit in altitudes of 185–643 km (115–400 miles)[98] and carry a maximum payload (to low orbit) of 24,400 kg (54,000 lb). Missions could last from 5 to 17 days and crews could be from 2 to 8 astronauts. On 20 missions (1983–1998) the Space Shuttle carried Spacelab, designed in cooperation with the European Space Agency (ESA). Spacelab was not designed for independent orbital flight, but remained in the Shuttle's cargo bay as the astronauts entered and left it through an airlock.[100] On June 18, 1983, Sally Ride became the first American woman in space, on board the Space Shuttle Challenger STS-7 mission. Another famous series of missions were the launch and later successful repair of the Hubble Space Telescope in 1990 and 1993, respectively.", logo: Image("ShuttlePatch")),
                       
    Mission(name: "Artemis", description: "Skylab was the first United States space station, launched by NASA, occupied for about 24 weeks between May 1973 and February 1974. It was operated by three separate three-astronaut crews: Skylab 2, Skylab 3, and Skylab 4. Major operations included an orbital workshop, a solar observatory, Earth observation, and hundreds of experiments. Unable to be re-boosted by the Space Shuttle, which was not ready until 1981, Skylab's orbit eventually decayed, and it disintegrated in the atmosphere on July 11, 1979, scattering debris across the Indian Ocean and Western Australia.", logo: Image("ArtemisPatch"))
    ]
}
