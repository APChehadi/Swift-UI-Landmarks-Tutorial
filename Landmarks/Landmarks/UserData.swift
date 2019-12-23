//
//  UserData.swift
//  Landmarks
//
//  Created by Adam Chehadi on 12/22/19.
//  Copyright © 2019 Adam Chehadi. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
