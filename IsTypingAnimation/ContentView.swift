//
//  ContentView.swift
//  IsTypingAnimation
//
//  Created by Alexander Römer on 24.02.20.
//  Copyright © 2020 Alexander Römer. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var scaleYLeft = false
    @State private var scaleXLeft = false
    @State private var scaleYMiddle = false
    @State private var scaleXMiddle = false
    @State private var scaleYRight = false
    @State private var scaleXRight = false
    
    var body: some View {
        ZStack {
            HStack(spacing: 5) {
                HStack {
                    ZStack { //Left
                        Circle()
                            .frame(width: 15, height: 15)
                            .opacity(0.5)
                        
                        Circle()
                            .frame(width: 15, height: 15)
                            .foregroundColor(Color.blue)
                            .opacity(0.5)
                            .scaleEffect(x: scaleXLeft ? 1 : 0.7, y: scaleYLeft ? 1 : 0.3, anchor: .bottom)
                            .animation(Animation.easeInOut(duration: 0.3).repeatCount(150, autoreverses: true))
                            .onAppear() {
                                self.scaleYLeft.toggle()
                                self.scaleXLeft.toggle()
                        }
                    }
                    
                    ZStack { //Middle
                        Circle()
                            .frame(width: 15, height: 15)
                            .opacity(0.5)
                        
                        Circle()
                            .frame(width: 15, height: 15)
                            .foregroundColor(Color.blue)
                            .opacity(0.5)
                            .scaleEffect(x: scaleXMiddle ? 1 : 0.7, y: scaleYMiddle ? 1 : 0.3, anchor: .bottom)
                            .animation(Animation.easeInOut(duration: 0.3).repeatCount(150, autoreverses: true).delay(0.2))
                            .onAppear() {
                                self.scaleXMiddle.toggle()
                                self.scaleYMiddle.toggle()
                        }
                    }
                    
                    ZStack { //Right
                        Circle()
                             .frame(width: 15, height: 15)
                             .opacity(0.5)
                        
                        Circle()
                            .frame(width: 15, height: 15)
                            .foregroundColor(Color.blue)
                            .opacity(0.5)
                            .scaleEffect(x: scaleXRight ? 1 : 0.7, y: scaleYRight ? 1 : 0.3, anchor: .bottom)
                            .animation(Animation.easeInOut(duration: 0.3).repeatCount(150, autoreverses: true).delay(0.4))
                            .onAppear() {
                                self.scaleXRight.toggle()
                                self.scaleYRight.toggle()
                        }
                    }
                }
                Text("Alex is typing")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
