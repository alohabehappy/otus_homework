//
//  ListView.swift
//  Homework
//
//  Created by Vadim on 03.12.2019.
//  Copyright © 2019 alohabehappy. All rights reserved.
//

import SwiftUI

final class UserListViewModel: ObservableObject {
    
    @Published private(set) var users = [User(name: "John", email: "john@hello.com"),
                                         User(name: "Tommy", email: "test@qa.qa"),
                                         User(name: "Hank", email: "boss@general.com")]
    
}

struct UserListView: View {
    
    @ObservedObject var viewModel = UserListViewModel()
    
    init() {
        UITableView.appearance().separatorStyle = .none
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.users) { user in
                    NavigationLink(destination: UserView(viewModel: UserViewModel(user: user))) {
                        HStack {
                            Text(user.name)
                            Text(user.email)
                        }
                    }
                }
            }
            .navigationBarTitle("Users")
        }
    }
    
}
