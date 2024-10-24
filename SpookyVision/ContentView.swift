//
//  ContentView.swift
//  SpookyVision
//
//  Created by Greg Bernstein on 10/23/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            SideBar(direction: .left)
            Spacer()
            SideBar(direction: .right)
        }
        .padding()
    }
}

#Preview(windowStyle: .plain) {
    ContentView()
        .background(.clear)
}

enum Direction {
    case left, right
    
    var imageName: String {
        switch self {
        case .left: return "spooky"
        case .right: return "vision"
        }
    }
}

struct SideBar: View {
    
    let direction: Direction
    
    var body: some View {
        Image(direction.imageName)
            .resizable()
            .scaledToFit()
    }
}
