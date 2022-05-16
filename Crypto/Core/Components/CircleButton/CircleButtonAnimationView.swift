//
//  CircleButtonAnimationView.swift
//  Crypto
//
//  Created by Nizami Tagiyev on 16.05.2022.
//

import SwiftUI

struct CircleButtonAnimationView: View {
    
    @Binding var animate: Bool
    
    var body: some View {
        Circle()
            .stroke(lineWidth: 5)
            .scale(animate ? 1.0 : 0.0)
            .opacity(animate ? 0.0 : 1.0)
            .animation(animate ? Animation.easeInOut(duration: 1.0) : .none)
    }
}

