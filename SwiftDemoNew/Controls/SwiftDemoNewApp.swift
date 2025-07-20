//
//  SwiftDemoNewApp.swift
//  SwiftDemoNew
//
//  Created by Komal Barde on 16/08/23.
//

import SwiftUI

@main
struct SwiftDemoNewApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            //ContentView(picsViewModel: PicsViewModel())
            //ControlsView()
           // FormOne()
           // FormTwo()
            //ZSatckDemo()
            //CustomAlert()
            //AppStorageDemo()
           // OnChangeDemo()
            //LandmarkLists()
            //listDemoNew()
           // CollectionViewDemo()
          //  EnvObjDemo()
            //RoyalTVView()
           // VideosView(model: VideoCategoryItem(title: "MAKING AN ICON", image: nil, video: nil))
            //videoPlayer(videoURL: "")
//            CruisesModuleView(model: CruiseModuleModel(title: "Test", cruiseCardModel: [CruiseCardModel(title: "Test Card1", shipName: "TestShip1", datesText: "", reservationTitle: "", reservationNumber: "", imageURL: nil),
//
//                                                                                        CruiseCardModel(title: "Test Card2", shipName: "TestShip2", datesText: "", reservationTitle: "", reservationNumber: "", imageURL: nil)
//
//
//
//                                                                                       ]))
            
          //  VideoView()
            //SubtitlesDemo()
            //ControlsView()
           // accessibilityDemo()
            
            //HomeVideosView(model: HomeVideoCategoryItem(title: "", image: nil, video: nil))
           // ios14_demoApp()
            let repository = AuthRepositoryImpl()
            let useCase = LoginUseCaseImpl(repository: repository)
            let viewModel = LoginViewModel(loginUseCase: useCase)
           // Pass the viewModel to LoginView
           CleanLoginView(viewModel: viewModel)
        }
    }
}
class AppDelegate: NSObject, UIApplicationDelegate {
        
    static var orientationLock = UIInterfaceOrientationMask.all //By default you want all your views to rotate freely

    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return AppDelegate.orientationLock
    }
}
