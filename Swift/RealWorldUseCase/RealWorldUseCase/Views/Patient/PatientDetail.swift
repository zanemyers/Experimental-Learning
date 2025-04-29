//
//  PatientDetail.swift
//  RealWorldUseCase
//
//  Created by Zane Myers on 2/19/25.
//

import SwiftUI

struct PatientDetail: View {
    @Environment(ModelData.self) var modelData
    @State private var showingEditPatient = false  // Track modal state
    
    var patient: Patient
    
    var body: some View {
        ScrollView {
            MapView(coordinate: patient.locationCoordinate)
                .frame(height: 300)
            
            CircleImage(image: patient.image)
                .offset(y:-130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack{
                    Text(patient.name)
                        .font(.title)
                    Spacer()
                    Text("Age: \(patient.age)")
                }
                
                Divider()
            }.padding()
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    showingEditPatient = true // Show modal
                } label: {
                    Label("Edit", systemImage: "square.and.pencil")
                }
            }
        }.sheet(isPresented: $showingEditPatient) {
            AddEditPatient(patient: patient)
        }
    }
}

#Preview {
    PatientDetail(patient: ModelData().patients[0])
        .environment(ModelData())
}
