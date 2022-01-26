import TokamakDOM
import Foundation

// MARK: - Content View
struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Rectangle()
                .overlay(LinearGradient(colors: [.lightPurple, .lightBlue],
                                        startPoint: .trailing,
                                        endPoint: .leading))
                .frame(minWidth: 200,
                       idealWidth: 300,
                       maxWidth: 300,
                       minHeight: 100,
                       idealHeight: 200,
                       maxHeight: 200,
                       alignment: .center)
                .padding(.vertical, 20)
            
            Text("Hello")
                .font(.title)
            
            SNSLinkView(snsName: "GitHub",
                        accountName: "@Shakshi3104",
                        url: URL(string: "https://github.com/Shakshi3104")!)
        }
    }
}

// MARK: - SNS Link View
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

// MARK: - extention Color
extension Color {
    static let lightBlue = Color(.sRGB, red: 0.655, green: 0.925, blue: 0.949, opacity: 1.0)
    static let lightPurple = Color(.sRGB, red: 0.568, green: 0.663, blue: 0.871, opacity: 1.0)
}
