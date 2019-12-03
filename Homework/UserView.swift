//
//  UserView.swift
//  Homework
//
//  Created by Vadim on 03.12.2019.
//  Copyright © 2019 alohabehappy. All rights reserved.
//

import SwiftUI

final class UserViewModel: ObservableObject {
    
    @Published private(set) var user: User
    
    init(user: User) {
        self.user = user
    }
    
}

struct UserView: View {
    
    @ObservedObject var viewModel: UserViewModel
    
    init(viewModel: UserViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        Text(viewModel.user.name).font(.largeTitle)
    }
}
