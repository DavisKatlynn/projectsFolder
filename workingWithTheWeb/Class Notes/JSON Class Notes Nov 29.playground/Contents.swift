import UIKit

// JSON


// swift async and await are key words to look up if you want to learn *****


//Let's break down how the JSON data is presented:

//Curly braces { } encapsulate a dictionary of keys and values.
//Square brackets [ ] encapsulate an array.
//Text inside quotation marks " " is a string value.
//Numbers and Booleans are written without quotation marks.
// Example

//{
  //  "name": "Daren Estrada",
    //"favorite_show": {...}
//}  

var urlComponents = URLComponents(string:
   "https://api.nasa.gov/planetary/apod")!
urlComponents.queryItems = [
    "api_key": "DEMO_KEY",
    "date": "2013-07-16"
].map { URLQueryItem(name: $0.key, value: $0.value) }

Task {
    let (data, response) = try await URLSession.shared.data(from:
       urlComponents.url!)

    if let httpResponse = response as? HTTPURLResponse,
        httpResponse.statusCode == 200,
        let string = String(data: data, encoding: .utf8) {
        print(string)
    }
}

