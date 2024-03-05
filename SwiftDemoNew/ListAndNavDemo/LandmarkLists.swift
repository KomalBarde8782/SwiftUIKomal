//
//  LandmarkLists.swift
//  SwiftUiTest
//
//  Created by Komal Barde on 13/08/23.
//

import SwiftUI
//https://www.youtube.com/watch?v=OLEijRSANpw&list=PLb5R4QC2DtFuRFJ35uPMhpY90s0VMNR-i&index=9

struct LandmarkLists: View {
    let cities = BundleDecoder.decodeLandmarkBundleJson()
    var body: some View {
        NavigationView{
            List(cities, id: \.cityId) { city in
                Section(header: Text(city.name).font(.title3)) {
                    ForEach(city.landmarks,id: \.landmarkId) { landmark in
                        
//                        NavigationLink(destination:LandMarkDetails(landamrk: landmark)){
//                            ListRow(landmark: landmark)
//                        }
                        
                        //UIKIT with SwiftUi Usage
                        NavigationLink(destination: DetailsViewRepresentable(landmark: landmark)){
                            ListRow(landmark: landmark)
                        }
                    }
                }
            }.navigationBarTitle("LANDMARK")
        }
    }
}

struct LandmarkLists_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkLists()
    }
}

struct DetailsViewRepresentable : UIViewControllerRepresentable{
    var landmark : Landmark
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let storyboard = UIStoryboard(name: "DetailsView", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        vc.landmark = landmark
        return vc
    }
}
