//
//  User.swift
//  Homework
//
//  Created by Vadim on 03.12.2019.
//  Copyright © 2019 alohabehappy. All rights reserved.
//

import Foundation

struct User: Identifiable {
    let id = UUID()
    let name: String
    let email: String
}
