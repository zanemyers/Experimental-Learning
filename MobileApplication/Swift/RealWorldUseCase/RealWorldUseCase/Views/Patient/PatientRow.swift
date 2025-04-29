//
//  PatientRow.swift
//  RealWorldUseCase
//
//  Created by Zane Myers on 2/19/25.
//

import SwiftUI

struct PatientRow: View {
    var patient: Patient
    
    var body: some View {
        HStack {
            patient.image
                .resizable()
                .frame(width: 44, height: 44)
                .padding(.leading)
            Text("\(patient.name)")
        }
    }
}

#Preview {
    let patients = ModelData().patients
    Group {
        PatientRow(patient: patients[0])
        PatientRow(patient: patients[1])
    }
}
