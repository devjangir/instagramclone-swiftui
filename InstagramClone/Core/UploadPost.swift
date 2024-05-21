//
//  UploadPost.swift
//  InstagramClone
//
//  Created by djangir on 21/05/24.
//

import SwiftUI
import PhotosUI

struct UploadPost: View {
    @State private var caption: String = ""
    @State private var isPhotoPresented = false
    @State private var photoPickerItem: PhotosPickerItem?
    @StateObject private var viewModel = UploadPostViewModel()
    @Binding var tabIndex: Int
    var body: some View {
        VStack {
            HStack {
                Button {
                    print("cancel picker")
                    caption = ""
                    viewModel.selectedImage = nil
                    viewModel.profileImage = nil
                    tabIndex = 0
                } label: {
                    Text("Cancel")
                }
                Spacer()
                
                Text("New Post")
                    .fontWeight(.semibold)
                
                Spacer()
                Button {
                    print("upload picker")
                    isPhotoPresented = true
                } label: {
                    Text("Upload")
                        .fontWeight(.semibold)
                }
            }
            .padding()
            
            
            // Post Image and Caption
            HStack {
                if let image = viewModel.profileImage {
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .clipped()
                }
                
                TextField("Enter your caption", text: $caption, axis: .vertical)
                    
            }
            
            Spacer()
            
        }
        .onAppear {
            isPhotoPresented.toggle()
        }
        .photosPicker(isPresented: $isPhotoPresented, selection: $viewModel.selectedImage)
        .photosPickerStyle(.inline)
        
        
        
    }
}

#Preview {
    UploadPost(tabIndex: .constant(0))
}
