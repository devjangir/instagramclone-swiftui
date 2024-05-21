//
//  UploadPostViewModel.swift
//  InstagramClone
//
//  Created by djangir on 21/05/24.
//

import Foundation
import PhotosUI
import SwiftUI

@MainActor
class UploadPostViewModel: ObservableObject {
    @Published var selectedImage: PhotosPickerItem? {
        didSet {
            Task {
                await loadImage(fromItem: selectedImage)
            }
        }
    }
    
    @Published var profileImage: Image?
    func loadImage(fromItem item: PhotosPickerItem?) async {
        guard let item else {
            return
        }
        guard let image = try? await item.loadTransferable(type: Image.self) else { return }
        // guard let uiImage = UIImage(data: data) else { return }
        profileImage = image// Image(uiImage: uiImage)
    }
}
