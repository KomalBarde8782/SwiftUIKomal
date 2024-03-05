//
//  PicsViewModel.swift
//  SwiftUiTest
//
//  Created by Komal Barde on 11/08/23.
//

import Foundation
import SwiftUI
class PicsViewModel : ObservableObject{
    
    @Published var picsModel = [PicsModel]()
    func loadData(){
        guard let url = URL(string: "https://picsum.photos/v2/list") else {
            print("invalid Url")
            return
            
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            let modelData = try? JSONDecoder().decode([PicsModel].self, from: data!)
            DispatchQueue.main.async {
                print("data is: \(modelData?.count)")
                if let data = modelData{
                    self.picsModel = data
                }
                
            }
        }.resume()
    }
    
}
