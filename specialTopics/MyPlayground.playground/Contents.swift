import UIKit

let url = URL(string: "https://tech-social-media-app.fly.dev/posts")!
Task {
    let (data, response) = try await URLSession.shared.data(from: url)
    
    if let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200,
       let string = String(data: data, encoding: .utf8){
        print(string)
    }
}
