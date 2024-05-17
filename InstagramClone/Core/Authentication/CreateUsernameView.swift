//
//  CreateUsernameView.swift
//  InstagramClone
//
//  Created by djangir on 14/05/24.
//

import SwiftUI

struct CreateUsernameView: View {
    @State private var password = ""
    @Environment(\.dismiss)  var dismiss
    var body: some View {
        VStack {
            Text("Create username")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("Pick a username for your new account. You can always change it later")
                .font(.footnote)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                
               
            TextField("Username", text: $password)
                .autocapitalization(.none)
                .modifier(TextFieldModifier())
                .padding(.top)
            
            Button(action: {}, label: {
                Text("Next")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .clipShape(RoundedRectangle(cornerRadius: 6.0))
            })
            .padding(.vertical)
            
            Spacer()
        }
        .toolbar(content: {
            ToolbarItem(id: "back", placement: .navigationBarLeading, content: { Image(systemName: "chevron.left")
                    .onTapGesture {
                        dismiss()
                    }
            } )
        })
    }
}

#Preview {
    CreateUsernameView()
}
