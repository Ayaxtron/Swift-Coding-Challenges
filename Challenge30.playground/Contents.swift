import UIKit

func challenge30<T>(input: T) -> [String] {
    let fm = FileManager.default
    let directoryURL = URL(fileURLWithPath: input as! String)
    guard let files = try? fm.contentsOfDirectory(at: directoryURL, includingPropertiesForKeys: nil) else { return []}
    var jpegs = [String]()
    
    for file in files {
        if file.pathExtension == "jpg" || file.pathExtension == "jpeg" {
            guard let attributes = try? fm.attributesOfItem(atPath: file.path) else { continue }
            guard let creationDate = attributes[.creationDate] as? Date else { continue }
            
            if creationDate > Date(timeIntervalSinceNow:  -60 * 60 * 48 ){
                jpegs.append(file.lastPathComponent)
            }
        }
    }
    
    return jpegs
}

let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
challenge30(input: path)
