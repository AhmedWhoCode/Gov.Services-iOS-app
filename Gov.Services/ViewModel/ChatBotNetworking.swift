//
//  ChatBotNetworking.swift
//  Gov.Services
//
//  Created by Tehseen Ahmed on 20/07/2024.
//

import SwiftUI
import Alamofire
import OpenAI

class ChatViewModel: ObservableObject {
    @Published var response: String?
    @Published var error = false
    @Published var errorDesc : String?
    
    let apiKey = Bundle.main.object(forInfoDictionaryKey: "Api_Key") as? String

    // Initialize OpenAI with your API token
    
    
    // Function to send a user message to the OpenAI API
    func sendUserMessage(_ message: String) async {
        let openAI = OpenAI(apiToken: apiKey!)
        // Create the chat query
        let filterQuestion = """
        \(message) in uk
        Try to add links to websites
        
        You are a chatbot that only answers questions related to Gov.uk services. Respond only to inquiries about UK government services, such as taxes, visas, benefits, healthcare, and similar official services. Do not answer questions on unrelated topics, and politely inform the user if their question falls outside of these areas.Lastly,try to add links to websites.
      
 """

        let query = ChatQuery(messages: [.init(role: .user, content: filterQuestion)!], model: .gpt4_o_mini)
        
        do {
            let result = try await openAI.chats(query: query)
            
            // Check if there's a valid message content
            DispatchQueue.main.async {
                
                if let content = result.choices.first?.message.content {
                    self.error = false
                    self.response = content.string
                    
                } else {
                    self.handleError("Failed to retrieve a valid response from the server.")
                }
            }
        }
        
        catch {
            DispatchQueue.main.async {
                
                self.handleError("An error occurred: \(error.localizedDescription)")
            }
        }
    }
    
    
       private func handleError(_ message: String) {
           self.errorDesc = message
           self.error = true
       }
}
