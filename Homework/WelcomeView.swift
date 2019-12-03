//
//  WelcomeView.swift
//  Homework
//
//  Created by Vadim on 03.12.2019.
//  Copyright © 2019 alohabehappy. All rights reserved.
//

import SwiftUI

struct WelcomeView: View {
    
    @Binding var selected: Int
    
    var body: some View {
        Button(action: {
            self.$selected.wrappedValue = 1
        }, label: {
            Text("Switch to List")
        })
    }
    
}
