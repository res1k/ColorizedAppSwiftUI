//
//  ColorTFView.swift
//  ColorizedApp
//
//  Created by Andrey Zhivotov on 13.06.2022.
//

import SwiftUI

struct ColorTFView: View {
    
    @Binding var textValue: String
    @Binding var value: Double
    
    @State private var showAlert = false
    
    var body: some View {
        TextField("", text: $textValue) { _ in
            checkValue()
        }
            .frame(width: 55, alignment: .trailing)
            .multilineTextAlignment(.trailing)
            .textFieldStyle(.roundedBorder)
            .keyboardType(.decimalPad)
            .alert("Wrong Format", isPresented: $showAlert, actions: {}) {
                Text("Please enter value from 0 to 255")
            }
    }
}

extension ColorTFView {
    private func checkValue() {
        if let value = Int(textValue), (0...255).contains(value) {
            self.value = Double(value)
            return
        }
        showAlert.toggle()
        value = 0
        textValue = "0"
    }
}

struct ColorTFView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray
            ColorTFView(textValue: .constant("100"), value: .constant(100.0))
        }
    }
}
