//
//  CombineFramework.swift
//  swiftTest
//
//  Created by Rinkita Patil on 7/31/25.
//

import SwiftUI
import Combine

struct CombineFramework: View {
    @StateObject private var viewModel = UserViewModel()

    var body: some View {
        VStack(spacing: 10) {
            if let user = viewModel.user {
                Text("Name: \(user.firstName) \(user.lastName)")
                Text("Email: \(user.email)")
            } else {
                Text("Loading user...")
            }
        }
        .padding()
        .onAppear {
            viewModel.fetchUser()
        }
    }
}


class UserViewModel: ObservableObject {
    @Published var user: User? = nil // Optional

    private var cancellable: AnyCancellable?

    func fetchUser() {
        let url = URL(string: "https://dummyjson.com/users/1")!

        cancellable = URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: User.self, decoder: JSONDecoder())
            .map(Optional.some)
            .replaceError(with: nil)
            .receive(on: DispatchQueue.main)
            .sink { [weak self] user in
                self?.user = user
            }

    }
}



struct User: Codable {
    let firstName: String
    let lastName: String
    let email: String
}



#Preview {
    CombineFramework()
}
