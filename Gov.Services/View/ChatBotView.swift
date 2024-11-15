//
//  ChatBotView.swift
//  Gov.Services
//
//  Created by Tehseen Ahmed on 15/07/2024.
//

import SwiftUI

struct ChatBotView: View {
    @State private var messages: [(text: String, isUserMessage: Bool)] = []
    @State private var inputText: String = ""
    @State private var isLoading: Bool = false
    @StateObject var model = ChatViewModel()
    @State private var showErrorAlert = false
    @State private var errorMessage = ""
    
    var body: some View {
        ZStack{
            Color.appBackground.ignoresSafeArea()
            VStack {
                ConversationView(messages: $messages, isLoading: $isLoading)
                
                ChatBoxView(inputText: $inputText, messages: $messages, isLoading: $isLoading, model: model,showErrorAlert: $showErrorAlert,errorMessage: $errorMessage)
                
                
            }.alert(errorMessage, isPresented: $showErrorAlert) {
                Button("Retry", role: .cancel) {
                    print("first",model.error)
                    //model.sendUserMessage(inputText)
                }
            }
        }
        
    }
}
#Preview {
    ChatBotView()
}

struct ConversationView: View {
    @Binding  var messages: [(text: String, isUserMessage: Bool)]
    @Binding  var isLoading: Bool
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                ForEach(messages.indices, id: \.self) { index in
                    Text(.init(messages[index].text))
                        .padding()
                        .background(messages[index].isUserMessage ? Color.white.opacity(0.3) : Color.blue.opacity(0.3))
                        .foregroundStyle(.white)
                        .tint(.yellow)
                        .cornerRadius(10)
                        .shadow(radius: 2)
                        .frame(maxWidth: .infinity, alignment: messages[index].isUserMessage ? .trailing : .leading)
                }
                
                if isLoading {
                    ProgressView()
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
            .padding()
        }
    }
}

struct ChatBoxView: View {
    @Binding  var inputText: String
    @Binding  var messages: [(text: String, isUserMessage: Bool)]
    @Binding  var isLoading: Bool
    @ObservedObject  var model: ChatViewModel
    @Binding  var showErrorAlert: Bool
    @Binding  var errorMessage: String
    
    var body: some View {
        HStack {
            TextField("", text: $inputText,prompt: Text("what do you want to know?").foregroundStyle(.gray)).foregroundStyle(.white)
                .padding()
                .background(Color.gray.opacity(0.6))
                .cornerRadius(20)
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.green, lineWidth: 1))
            
            Button(action:{ Task {
                await sendMessage()
            }
            }) {
                Image(systemName: "paperplane.fill")
                    .foregroundColor(.blue)
                    .padding()
            }
        }
        .padding()
    }
    
    
    func sendMessage() async {
        guard !inputText.isEmpty else { return }
        // let userMessage = inputText
        messages.append((text: inputText, isUserMessage: true))
        isLoading = true
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        await model.sendUserMessage(inputText)
        inputText = ""
        
        
        if !model.error{
            isLoading = false
            messages.append((text: model.response!, isUserMessage: false))
            
        }
        else{
            isLoading = false
            errorMessage = model.errorDesc!
            showErrorAlert = true
        }
        
        
    }
    
    //        // Mock function to simulate GPT-3 response
    //        private func gpt3MockResponse(for input: String) async -> String {
    //            await model.sendUserMessage(input)
    //            // Here you would integrate your GPT-3 API call
    //            return model.response!
    //        }
}
