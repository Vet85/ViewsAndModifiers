//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Vitaliy Novichenko on 24.08.2023.
//

import SwiftUI

struct Watermark: ViewModifier {
    var text: String
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding(10)
                .background(.black)
                .clipShape(RoundedRectangle(cornerRadius: 15))
        }
    }
}
extension View {
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
    
}
extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}

struct CapsulText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .foregroundColor(.white)
            .background(.blue)
            .clipShape(Capsule())
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world")
                .titleStyle()
                //.modifier(Title())
            CapsulText(text: "First")
            CapsulText(text: "Second")
            Color.yellow
                .frame(width: 300, height: 300)
                .watermarked(with: "Hello, world")
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
