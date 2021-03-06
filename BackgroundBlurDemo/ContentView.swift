//
//  ContentView.swift
//  BackgroundBlurDemo
//
//  Created by Thongchai Subsaidee on 12/3/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       BackgroundView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct BackgroundView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            Text("Home")
            
            
        }
        .frame(maxWidth: .infinity)
        .background{
            ZStack {
                VStack {
                    Circle()
                        .fill(.green)
                        .scaleEffect(0.6)
                        .offset(x: 20)
                        .blur(radius: 120)
                    Circle()
                        .fill(.red)
                        .scaleEffect(0.6, anchor: .leading)
                        .offset(y: -20)
                        .blur(radius: 120)
                }
                
                Rectangle()
                    .fill(.ultraThinMaterial)
            }
            .ignoresSafeArea()
        }
        .preferredColorScheme(.light)
    }
    
}
