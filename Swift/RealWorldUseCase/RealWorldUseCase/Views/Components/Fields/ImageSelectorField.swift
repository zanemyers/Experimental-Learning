//
//  ImageSelectorField.swift
//  RealWorldUseCase
//
//  Created by Zane Myers on 2/20/25.
//

import SwiftUI
import PhotosUI

struct ImageSelectorField: View {
    @Binding var selectedImage: UIImage?
    @State private var photoPickerItem: PhotosPickerItem?

    var body: some View {
        HStack {
            CircleImage(image: profileImage.resizable())
               .frame(width: 44, height: 44)
               .padding(.trailing)
            PhotosPicker("Select Image", selection: $photoPickerItem, matching:.images)
               .onChange(of: photoPickerItem) {
                    self.handlePhotoSelection(self.photoPickerItem)
                }
        }
    }

    var profileImage: Image {
        return Image(uiImage: selectedImage ?? UIImage(named: "defaultPatient")!)
    }
    
    private func handlePhotoSelection(_ newItem: PhotosPickerItem?) {
        Task {
            if let newItem = newItem, let data = try? await newItem.loadTransferable(type: Data.self),
               let uiImage = UIImage(data: data) {
                selectedImage = uiImage
            }
        }
    }
}



#Preview {
    ImageSelectorField_Preview()
}

// Only used for previewing the multiple other field
struct ImageSelectorField_Preview: View {
    @State private var selectedImage: UIImage?

    var body: some View {
        ImageSelectorField(selectedImage: $selectedImage)
    }
}

