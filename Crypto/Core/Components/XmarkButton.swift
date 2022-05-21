//
//  XmarkButton.swift
//  Crypto
//
//  Created by Nizami Tagiyev on 21.05.2022.
//

import SwiftUI

struct XMarkButton: View {
    
    var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }, label: {
            Image(systemName: "xmark")
                .font(.headline)
        })
    }
}

