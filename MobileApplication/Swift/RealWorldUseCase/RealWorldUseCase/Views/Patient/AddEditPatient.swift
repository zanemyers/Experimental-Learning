//
//  AddPatient.swift
//  RealWorldUseCase
//
//  Created by Zane Myers on 2/19/25.
//

import SwiftUI
import MapKit


struct AddEditPatient: View {
    @Environment(ModelData.self) var modelData
    @Environment(\.dismiss) private var dismiss

    var patient: Patient? // Optional patient to edit

    @State private var selectedImage: UIImage?
    @State private var newPatient: Patient
    @FocusState private var isEditing: Bool

    // Custom initializer to handle optional patient
    init(patient: Patient? = nil) {
        _newPatient = State(initialValue: patient ?? Patient.default)
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Patient Info")) {
                    ImageSelectorField(selectedImage: $selectedImage)
                    HStack {
                        Text("Name")
                        TextField("Name", text: $newPatient.name)
                    }
                    HStack(spacing: 10) {
                        TextField("Age", value: $newPatient.age, formatter: NumberFormatter())
                            .keyboardType(.numberPad)
                            .focused($isEditing)
                        Stepper(value: $newPatient.age, in: 0...100, step: 1) {
                            EmptyView()
                        }
                        .disabled(isEditing)
                    }
                    TextField("Address", text: $newPatient.homeAddress)
                }
                
                Section(header: Text("Disabilities")) {
                    MultipleOtherField(helpText: "disability", listItems: $newPatient.disabilities)
                }
                
                Section(header: Text("Guardian Info")) {
                    TextField("Guardian Name", text: $newPatient.guardianName)
                    TextField(
                        "Guardian Phone",
                        text: $newPatient.guardianPhoneNumber)
                    .keyboardType(.phonePad)
                    TextField("Guardian Email", text: $newPatient.guardianEmail)
                        .keyboardType(.emailAddress)
                }
                
                Section(header: Text("Select Outreach Location")) {
                    Picker("Outreach Location", selection: $newPatient.outreachLocation) {
                        ForEach(modelData.outreachLocations, id: \.self) { location in
                            Text(location.name).tag(location as OutreachLocation?)
                        }
                    }
                }
                
                Section(header: Text("Additional Notes")) {
                    TextField("Additional Notes", text: $newPatient.notes)
                }
            }
            .navigationTitle("Add New Patient")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Save") {
                        modelData.patients.append(newPatient)
                        dismiss()
                    }
                    .disabled(newPatient.name.isEmpty || newPatient.age <= 0)
                }
            }
        }
    }
}

#Preview {
    AddEditPatient()
        .environment(ModelData())
}
