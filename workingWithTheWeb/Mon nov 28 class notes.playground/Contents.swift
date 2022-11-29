import UIKit

//HTTP:
//Header - auth tokens if API requires it
//Body - used to post data to the URL/database
// URL
// - query parameters

// create a URL
let newDeckURL = URL(string: "htttps://www.deckofcardsapi.com/api/deck/new/")!
Task {
    let response = try await URLSession.shared.data(from: newDeckURL)
    // This will happen at some point in the future after the network call comes back
    if let jsonString = String(data: response.0, encoding: .utf8) {
        print(jsonString)
    }

}





//func data(from url: URL, delegate: URLSessionTaskDelegate? = nil)
// async throws -> (Data, URLRespoonse)
