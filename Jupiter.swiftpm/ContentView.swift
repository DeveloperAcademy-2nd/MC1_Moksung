import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            Episode1().tabItem {
                Image(systemName: "person.fill")
                Text("Episode 1")
            }
            
            Episode2().tabItem {
                Image(systemName: "person.fill")
                Text("Episode 2")
            }
            
            Episode3().tabItem {
                Image(systemName: "person.fill")
                Text("Episode 3")
            }
        }
    }
}

