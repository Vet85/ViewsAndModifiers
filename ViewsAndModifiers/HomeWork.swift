//
//  HomeWork.swift
//  ViewsAndModifiers
//
//  Created by Vitaliy Novichenko on 25.08.2023.
//

import SwiftUI

struct Titles: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
    }
}
extension View {
    func title() -> some View {
        modifier(Titles())
    }
}

struct HomeWork: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .title()
    }
}

struct HomeWork_Previews: PreviewProvider {
    static var previews: some View {
        HomeWork()
    }
}
