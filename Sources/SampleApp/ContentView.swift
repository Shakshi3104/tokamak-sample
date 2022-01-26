import TokamakDOM
import Foundation

struct ContentView: View {
   
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello")
                .font(.title)
            
            SNSLinkView(snsName: "GitHub",
                        accountName: "@Shakshi3104",
                        url: URL(string: "https://github.com/Shakshi3104")!)
        }
    }
}

struct SNSLinkView: View {
    var snsName: String
    var accountName: String
    var url: URL
    
    var body: some View {
        HStack {
            Text(snsName)
                .foregroundColor(.secondary)
            Link(accountName, destination: url)
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
