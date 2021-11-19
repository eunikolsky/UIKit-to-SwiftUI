//
//  CounterHostingController.swift
//  UIKit-to-SwiftUI
//
//  Created by u on 16.11.21.
//

import SwiftUI

class CounterHostingController: UIHostingController<CounterView> {
    private var state = CounterView.State(counter: nil)

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder, rootView: CounterView(state: state))
    }

    func incrementCounter() {
        state.counter = state.counter.map { $0 + 1 } ?? 0
    }
}
