//
//  ContentView.swift
//  SwiftUiTest
//
//  Created by Komal Barde on 03/08/23.
//

import SwiftUI
//https://picsum.photos/v2/list
//https://www.youtube.com/watch?v=-L_wdzf9ex0
struct ContentView: View {
    @ObservedObject var picsViewModel : PicsViewModel
    //var arrayImages = ["pic1","pic2","pic3","pic4","pic5"]
    var body: some View {
        NavigationView {
            List(picsViewModel.picsModel,id: \.id){ model in
                NavigationLink(destination: DetailedView(url: model.downloadUrl ?? "")){
                    LazyVStack{
    //                    Image(image).resizable().aspectRatio(contentMode: .fit).cornerRadius(20).shadow(radius: 20)
                       
                        PicsImageView(url: model.downloadUrl ?? "", isDetailView: false)
                        Text( model.author ?? "").font(.system(size: 20,weight: .bold,design: .rounded))
                    }
                }

                
            }.onAppear(perform:{
                picsViewModel.loadData()
            } ).navigationTitle("Gallery")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(picsViewModel: PicsViewModel())
    }
}



struct DetailedView: View {
    var url : String
    var body: some View {
        PicsImageView(url: url, isDetailView: true).ignoresSafeArea()
    }
}
