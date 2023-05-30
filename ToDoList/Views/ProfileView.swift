//
//  ProfileView.swift
//  ToDoList
//
//  Created by Volkan Kuday on 5/10/23.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                if let user = viewModel.user {
                    profile(user: user)
                } else {
                    Text("Loading Profile...")
                }
            }
            .navigationTitle("Profile")
        }
        .onAppear {
            viewModel.fetchUser()
        }
    }
    
    @ViewBuilder
    func profile(user: User) -> some View {
        Image(systemName: "person.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(.blue)
            .frame(width: 125, height: 125)
            .padding()
        
        VStack(alignment: .leading) {
            HStack {
                Text("Name:")
                    .bold()
                Text(user.name)
            }
            .padding()
            HStack {
                Text("Email:")
                    .bold()
                Text(user.email)
            }
            .padding()
            HStack {
                Text("Member Since:")
                    .bold()
                Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
            }
            .padding()
        }
        
        TLButton(title: "Log Out", backgroundColor: .red) {
            viewModel.logOut()
        }
        .frame(width: 300, height: 50)
        .padding()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
