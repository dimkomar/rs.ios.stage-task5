import UIKit

class MessageDecryptor: NSObject {
    
    func decryptMessage(_ message: String) -> String {
        
        var inputMessage = message
        let pattern = "(\\d+\\[[a-z]+\\])"
        

        let regex = try! NSRegularExpression(pattern: "[a-z]", options: [])
        if (regex.firstMatch(in: inputMessage, options: [], range: NSMakeRange(0, inputMessage.utf16.count)) != nil){
            return inputMessage
        }
        

        
        
        
        return ""
    }
}
