import TokamakDOM
import Foundation

struct ContentView: View {
   
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello")
                .font(.title)
            
            Link("@Shakshi3104",
                 destination: URL(string: "https://github.com/Shakshi3104")!)
        }
    }
}


struct ItemView: View {
    var text: String
    
    var body: some View {
        HStack {
            Text("-")
            Text(text)
        }
    }
}
