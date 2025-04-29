//
//  PatientList.swift
//  RealWorldUseCase
//
//  Created by Zane Myers on 2/19/25.
//

import SwiftUI

struct PatientList: View {
    @Environment(ModelData.self) var modelData
    @State private var showingAddPatient = false  // Track modal state
    
    var body: some View {
        NavigationSplitView {
            List {
                ForEach(modelData.patients) { patient in
                    NavigationLink {
                        PatientDetail(patient: patient)
                    } label: {
                        PatientRow(patient: patient)
                    }
                }
                .navigationTitle("Patients")
            }
            .toolbar {
                Button {
                    showingAddPatient = true // Show modal
                } label: {
                    Label("Add New Patient", systemImage: "person.badge.plus")
                }
            }
            .sheet(isPresented: $showingAddPatient) {
                AddEditPatient()
            }
        } detail: {
            Text("Select a Patient")
        }
    }
}


#Preview {
    PatientList()
        .environment(ModelData())
}
