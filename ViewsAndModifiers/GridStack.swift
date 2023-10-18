//
//  GridStack.swift
//  ViewsAndModifiers
//
//  Created by Vitaliy Novichenko on 24.08.2023.
//

import SwiftUI

struct GridsStack<Content: View>: View {
    let rows: Int
    let columns: Int
    @ViewBuilder let content: (Int, Int) -> Content
    
    var body: some View {
        VStack {
            ForEach(0..<rows, id: \.self) { row in
                HStack {
                    ForEach(0..<columns, id: \.self) { column in
                        content(row, column)
                    }
                }
            }
        }
    }
}

struct GridStack: View {
    var body: some View {
        GridsStack(rows: 4, columns: 4) { row, col in
          Image(systemName: "\(row * 4 + col).circle")
          Text("R\(row) C\(col)")
            
        }
        
    }
}

struct GridStack_Previews: PreviewProvider {
    static var previews: some View {
        GridStack()
    }
}
