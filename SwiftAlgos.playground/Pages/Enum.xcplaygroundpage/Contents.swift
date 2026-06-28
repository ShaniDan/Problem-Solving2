//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

enum WeatherType {
    case sun
    case rain
    case wind
    case snow
}

func feelingType(weather: WeatherType) -> String? {
    switch weather {
    case .sun:
        return nil
    case .wind, .rain:
        return "so so"
    case .snow:
        return "Love"
    }
}

print(feelingType(weather: WeatherType.snow)!)
