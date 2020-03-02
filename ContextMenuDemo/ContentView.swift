//
//  ContentView.swift
//  ContextMenuDemo
//
//  Created by shiga on 02/03/20.
//  Copyright © 2020 shiga. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            
            List {
                
                ForEach(0 ..< 50) { _ in
                    HStack {
        
                        Image("steve")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .cornerRadius(25)
                            .padding(5.0)
                        
                        VStack(alignment: .leading) {
                            
                        Text("Steve Jobs")
                            .font(.headline)
                            
                            Text("9999999999")
                                .font(.subheadline)
                            
                        }
                    }
                    .contextMenu {
                        
                        VStack {
                            
                        Button(action: {
                        }) {
                            Text("Message")
                            Image(systemName: "message.fill")
                        }
                        
                            Button (action: {
                                
                            }) {
                                Text("Video")
                                Image(systemName: "video.fill")
                            }
                            
                            Button(action: {
                                
                            }) {
                                Text("Call")
                                Image(systemName: "phone.fill")
                            }
                        }
                    }
                }
            }
            .navigationBarTitle("Contacts")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
