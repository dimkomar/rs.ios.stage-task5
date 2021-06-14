import UIKit

class MessageDecryptor: NSObject {
    
    func decryptMessage(_ message: String) -> String {
        
        let inputMessage = message
        //let pattern = "(\\d+\\[[a-z]+\\])"
        

        let regexOne = try! NSRegularExpression(pattern: "[a-z]", options: [])
        let regexTwo = try! NSRegularExpression(pattern: ".*[^A-Za-z0-9].*", options: [])
        
        if (message.first == Optional("0")) { return ""}
        
        if (regexOne.firstMatch(in: inputMessage, options: [], range: NSMakeRange(0, inputMessage.utf16.count)) != nil){
            return inputMessage
            
        } else if (regexTwo.firstMatch(in: inputMessage, options: [], range: NSMakeRange(0, inputMessage.utf16.count)) != nil){
            
        }
        

        
        
        
        return ""
    }
}
