//
//  CounterHostingController.swift
//  UIKit-to-SwiftUI
//
//  Created by u on 16.11.21.
//

import SwiftUI

class CounterHostingController: UIHostingController<CounterView> {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder, rootView: CounterView(counter: 0))
    }
}
