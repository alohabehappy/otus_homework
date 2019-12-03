//
//  ProfileView.swift
//  Homework
//
//  Created by Vadim on 03.12.2019.
//  Copyright © 2019 alohabehappy. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var showDetails: Bool = false
    
    var body: some View {
        Button(action: {
            self.showDetails = true
        }) {
            Text("Show Modal")
        }.betterSheet(isPresented: self.$showDetails, onDismiss: {
            print("ProfileDetails dismissed")
        }) {
            ProfileDetailsView()
        }
    }
    
}
