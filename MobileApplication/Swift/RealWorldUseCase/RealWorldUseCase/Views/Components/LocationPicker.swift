import SwiftUI
import MapKit

struct LocationPickerView: View {
    @Binding var coordinate: CLLocationCoordinate2D
    @Binding var region: MKCoordinateRegion

    @State private var isPresented = false
    @State private var selectedCoordinate: CLLocationCoordinate2D?

    var body: some View {
        NavigationView {
            LocationView(coordinateRegion: $region, selectedCoordinate: $selectedCoordinate)
               .edgesIgnoringSafeArea(.bottom)
               .onAppear {
                    isPresented = true
                }
               .toolbar {
                    ToolbarItem(placement:.navigationBarLeading) {
                        Button("Cancel") {
                            isPresented = false
                        }
                    }
                    ToolbarItem(placement:.navigationBarTrailing) {
                        Button("OK") {
                            if let selectedCoordinate = selectedCoordinate {
                                coordinate = selectedCoordinate
                                isPresented = false
                            }
                        }
                    }
                }
        }
       .onDisappear {
            isPresented = false
        }
    }
}

struct LocationView: UIViewRepresentable {
    @Binding var coordinateRegion: MKCoordinateRegion
    @Binding var selectedCoordinate: CLLocationCoordinate2D?

    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.delegate = context.coordinator
        mapView.isZoomEnabled = true
        mapView.isScrollEnabled = true
        return mapView
    }

    func updateUIView(_ mapView: MKMapView, context: Context) {
        if mapView.region.center.latitude != coordinateRegion.center.latitude || mapView.region.span.latitudeDelta != coordinateRegion.span.latitudeDelta {
            mapView.setRegion(coordinateRegion, animated: true)
        }
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    class Coordinator: NSObject, MKMapViewDelegate {
        var parent: LocationView

        init(_ parent: LocationView) {
            self.parent = parent
        }

        func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
            if parent.selectedCoordinate == nil {
                parent.coordinateRegion = MKCoordinateRegion(center: userLocation.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
            }
        }

        func mapView(_ mapView: MKMapView, didDeselect view: MKAnnotationView) {
            parent.selectedCoordinate = nil
        }

        func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
            if let annotation = view.annotation {
                parent.selectedCoordinate = annotation.coordinate
            }
        }

        func mapView(_ mapView: MKMapView, regionDidChangeAnimated animated: Bool) {
            parent.coordinateRegion = mapView.region
        }
    }
}
