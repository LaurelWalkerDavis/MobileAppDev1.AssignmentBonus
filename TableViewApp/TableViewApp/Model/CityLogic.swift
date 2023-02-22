//
//  Logic.swift
//  TableViewApp
//
//  Created by Laurel Walker Davis on 2/22/23.
//

import Foundation


struct CityLogic {
    // variables
    var cities = [
        CityState(city: "Auburn", state: "AL"),
        CityState(city: "Atlanta", state: "GA"),
        CityState(city: "Chicago", state: "IL"),
        CityState(city: "New York", state: "NY"),
        CityState(city: "Los Angeles", state: "CA"),
        CityState(city: "Austin", state: "TX"),
        CityState(city: "Tuscon", state: "AZ"),
        CityState(city: "Long Beach", state: "MS"),
        CityState(city: "Wetumpka", state: "AL"),
        CityState(city: "Burlington", state: "VT")
    ]
        
    var selectedCity: CityState?
    var description: String?
    
    mutating func setDescription(_city: CityState) {
        
        switch _city.city {
        case "Auburn":
            description = "Auburn is a city in Lee County, Alabama, United States. It is the largest city in eastern Alabama, with a 2020 population of 76,143. It is a principal city of the Auburn-Opelika Metropolitan Area. The Auburn-Opelika, AL MSA with a population of 158,991, along with the Columbus, GA-AL MSA and Tuskegee, Alabama, comprises the greater Columbus-Auburn-Opelika, GA-AL CSA, a region home to 501,649 residents."
        case "Atlanta":
            description = "Atlanta is the capital and most populous city of the U.S. state of Georgia. It is the seat of Fulton County, the most populous county in Georgia, although a portion of the city extends into neighboring DeKalb county. With a population of 498,715 living within the city limits, it is the eighth most populous city in the Southeast and 38th most populous city in the United States according to the 2020 U.S. census."
        case "Chicago":
            description = "Chicago is the most populous city in the U.S. state of Illinois and the third most populous in the United States after New York City and Los Angeles. With a population of 2,746,388 in the 2020 census, it is also the most populous city in the Midwest."
        case "New York":
            description = "New York, often called New York City or NYC, is the most populous city in the United States. With a 2020 population of 8,804,190 distributed over 300.46 square miles (778.2 km2), New York City is the most densely populated major city in the United States and more than twice as populous as Los Angeles, the nation's second largest city."
        case "Los Angeles":
            description = "Los Angeles, often referred to by its initials L.A., is the commercial, financial, and cultural center of Southern California. Los Angeles is the largest city in the state of California, the second most populous city in the United States after New York City, and one of the world's most populous megacities."
        case "Austin":
            description = "Austin is the capital city of the U.S. state of Texas, as well as the seat and largest city of Travis County, with portions extending into Hays and Williamson counties. Incorporated on December 27, 1839, it is the 11th-most-populous city in the United States, the fourth-most-populous city in Texas, the second-most-populous state capital city, and the most populous state capital that is not also the most populous city in its state."
        case "Tuscon":
            description = "Tucson is a city in and the county seat of Pima County, Arizona, United States, and is home to the University of Arizona. It is the second largest city in Arizona behind Phoenix, with a population of 542,629 in the 2020 United States census, while the population of the entire Tucson metropolitan statistical area is 1,043,433."
        case "Long Beach":
            description = "Long Beach is a city located in Harrison County, Mississippi, United States. It is part of the Gulfport-Biloxi metropolitan area. As of the 2020 census, the city had a population of 15,829."
        case "Wetumpka":
            description = "Wetumpka  is a city in and the county seat of Elmore County, Alabama, United States. At the 2020 census, the population was 7,220. In the early 21st century Elmore County became one of the fastest-growing counties in the state. The city is considered part of the Montgomery Metropolitan Area."
        case "Burlington":
            description = "Burlington is the most populous municipality in the U.S. state of Vermont and the seat of Chittenden County. It is located 45 miles (72 km) south of the Canada–United States border and 95 miles (153 km) south of Montreal. As of the 2020 U.S. census, the population was 44,743. It is the least populous city in the 50 U.S. states to be the most populous city in its state."
        default:
            description = "I'm sure it's a great place!"
        }
    }
    
    mutating func setCity (_city: CityState) {
        selectedCity = _city
    }
    
    func getDescription() -> String {
        return description!
    }
    
    func getCity() -> CityState {
        return selectedCity!
    }
    
}
