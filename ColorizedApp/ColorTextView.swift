//
//  ColorTextView.swift
//  ColorizedApp
//
//  Created by Andrey Zhivotov on 13.06.2022.
//

import SwiftUI

struct ColorTextView: View {
    
    let value: Double
    
    var body: some View {
        Text("\(lround(value))")
            .frame(width: 35, alignment: .leading)
            .foregroundColor(.white)
    }
}

struct ColorTextView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray
            ColorTextView(value: 100)
        }
    }
}
