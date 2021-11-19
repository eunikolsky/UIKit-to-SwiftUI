//
//  CounterView.swift
//  UIKit-to-SwiftUI
//
//  Created by u on 16.11.21.
//

import SwiftUI

struct CounterView: View {
    class State: ObservableObject {
        @Published var counter: Int?

        init(counter: Int?) {
            self.counter = counter
        }
    }

    @ObservedObject var state: State

    init(state: State) {
        self.state = state
    }

    var body: some View {
        Text(state.counter.map { "Counter: \($0)" }
            ?? "No counter")
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach([0, 42, nil], id: \.self) { counter in
            CounterView(state: CounterView.State(counter: counter))
                .previewLayout(.fixed(width: 200, height: 100))
        }
    }
}
