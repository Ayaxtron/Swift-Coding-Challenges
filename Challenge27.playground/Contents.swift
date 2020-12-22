import UIKit
import Foundation


func challenge27(filename: String, linesNum: Int)  {
    let fileURL = Bundle.main.url(forResource: "Test", withExtension: "txt")
    print(fileURL)
    guard let input = try? String(contentsOf: fileURL!, encoding: String.Encoding.utf8) else { return }
    //guard let input = try? String(contentsOfFile: filename) else { return }
    var lines = input.components(separatedBy: "\n")
    guard lines.count > 0 else { return }
    lines.reverse()
    var output = [String]()
    for line in 1...min(lines.count, linesNum) {
        output.append(lines[line])
    }
    print(output.joined(separator: ", "))
}

challenge27(filename: "Test.txt", linesNum: 4)

