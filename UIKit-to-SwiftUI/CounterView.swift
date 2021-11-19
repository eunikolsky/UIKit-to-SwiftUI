//
//  CounterView.swift
//  UIKit-to-SwiftUI
//
//  Created by u on 16.11.21.
//

import SwiftUI

struct CounterView: View {
    var counter: Int? = 0

    var body: some View {
        Text(counter.map { "Counter: \($0)" }
            ?? "No counter")
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach([0, 42, nil], id: \.self) { counter in
            CounterView(counter: counter)
                .previewLayout(.fixed(width: 200, height: 100))
        }
    }
}
