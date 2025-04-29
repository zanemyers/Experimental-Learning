//
//  MultipleOtherField.swift
//  RealWorldUseCase
//
//  Created by Zane Myers on 2/20/25.
//

import SwiftUI

struct MultipleOtherField: View {
    var helpText: String = "item"
    @Binding var listItems: [String]

    
    var body: some View {
        List {
            ForEach(listItems.indices, id: \.self) { index in
                HStack {
                    TextField("Enter \(helpText.withArticle())", text: $listItems[index])
                    Spacer()
                    Button(action: {
                        listItems.remove(at: index)
                    }) {
                        HStack {
                            Text("Remove")
                        }
                       .foregroundStyle(.red)
                    }
                }
            }
            
            Button(action: {
                listItems.append("")  // Add a new entry to the array
            }) {
                HStack {
                    Image(systemName: "plus.circle")
                    Text("Add \(helpText.withArticle())")
                }
            }
        }
    }
}

#Preview {
    return MultipleOtherField_Preview()
}

// Only used for previewing the multiple other field
struct MultipleOtherField_Preview: View {
    @State private var items = ["Example 1", "Example 2"]

    var body: some View {
        MultipleOtherField(helpText: "Object", listItems: $items)
    }
}

