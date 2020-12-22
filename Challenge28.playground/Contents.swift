import UIKit
import PlaygroundSupport

//let fileURL2 = playgroundSharedDataDirectory.appendingPathComponent("Text.txt")

func challenge28(fileName: String, message: String) {
    //guard let fileURL = Bundle.main.url(forResource: "Text", withExtension: ".txt") else { return }
    
    var contentFile : String = (try? String(contentsOfFile: fileName)) ?? ""
    contentFile.append("\(Date()): \(message)\n")
    
    do {
        try contentFile.write(toFile: fileName, atomically: true, encoding: .utf8)
    } catch {
        print("Failed to write log: \(error.localizedDescription)")
    }
}

challenge28(fileName: "Text.txt", message: "Show this text if it works.")



