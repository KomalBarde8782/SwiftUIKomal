//
//  ShimmeringView.swift
//  Components
//
//  Created by Carlos Alejandro Martinez Vargas on 12/03/23.
//

import SwiftUI

//vijay
///// Abstract:
///// Represents a shimmering effect applied to the specified content
//struct ShimmeringView: View {
//
//    /// View Model that holds the configuration for the shimmering effect
//    var viewModel: ShimmeringViewModel
//
//    /// Specifies if current animation point
//    @State var isInitialLocation: Bool = true
//
//    /// Creates an instance of the shimmer view
//    /// - Parameter viewModel: Configures shimmer view
//    public init(viewModel: ShimmeringViewModel) {
//        self.viewModel = viewModel
//    }
//
//    var body: some View {
//        VStack {
//            LinearGradient(gradient: viewModel.gradient,
//                           startPoint: isInitialLocation ? viewModel.initialLocation.start : viewModel.finalLocation.start,
//                           endPoint: isInitialLocation ? viewModel.initialLocation.end : viewModel.finalLocation.end)
//            .opacity(viewModel.opacity)
//            .blendMode(.screen)
//            .animation(Animation.linear(duration: viewModel.duration).repeatForever(autoreverses: false), value: isInitialLocation)
//            .onAppear {
//                DispatchQueue.main.async {
//                    withAnimation(nil) {
//                        isInitialLocation.toggle()
//                    }
//                }
//            }
//        }
//        .background(viewModel.backgroundColor)
//        .cornerRadius(viewModel.cornerRadius)
//    }
//}


//code
struct ShimmeringView: View {

    /// View Model that holds the configuration for the shimmering effect
    var viewModel: ShimmeringViewModel

    /// Specifies if current animation point
    @State var isInitialLocation: Bool = true

    /// Creates an instance of the shimmer view
    /// - Parameter viewModel: Configures shimmer view
    public init(viewModel: ShimmeringViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        VStack {
            LinearGradient(gradient: viewModel.gradient,
                           startPoint: isInitialLocation ? viewModel.initialLocation.start : viewModel.finalLocation.start,
                           endPoint: isInitialLocation ? viewModel.initialLocation.end : viewModel.finalLocation.end)
            .opacity(viewModel.opacity)
            .blendMode(.screen)
            .animation(Animation.linear(duration: viewModel.duration).repeatForever(autoreverses: false), value: isInitialLocation)
            .onAppear {
                DispatchQueue.main.async {
                    withAnimation(nil) {
                        isInitialLocation.toggle()
                    }
                }
            }
        }
    }
}

#if DEBUG
struct ShimmeringView_Previews: PreviewProvider {
    static var previews: some View {
        ShimmeringView(viewModel: ShimmeringViewModel())
    }
}
#endif



//
//  CruiseCardModel.swift
//  Components
//
//  Created by Eduardo Andres Rodriguez Parejo on 31/08/23.
//

import Foundation
import SwiftUI

/// CruiseCardModel represents cruise card displayable information.
public struct CruiseCardModel: Identifiable {
    
    /// ID represents cruise card unique identifier.
    public let id = UUID()
    
    /// Title represents the name of the trip.
    public let title: String
    
    /// ShipName represents name of the cruise ship.
    public let shipName: String
    
    /// Dates Text describing the cruise's dates and duration.
    public let datesText: String
    
    /// Title label to describe the information below this text.
    public let reservationTitle: String
    
    /// Reservation number of the user logged
    public let reservationNumber: String
    
    /// Image URL of the cruise
    public let imageURL: URL?

    public init(title: String, shipName: String, datesText: String, reservationTitle: String, reservationNumber: String, imageURL: URL?) {
        self.title = title
        self.shipName = shipName
        self.datesText = datesText
        self.reservationTitle = reservationTitle
        self.reservationNumber = reservationNumber
        self.imageURL = imageURL
    }
}




import SwiftUI


/// represents cruise module information.
struct CruiseModuleModel {
    
    /// ID represents cruise card unique identifier.
    public let id = UUID()
    
    /// Title represents the module of the trip.
    public let title: String
    
    /// CruiseCardModel represents cruise card displayable information.
    public let cruiseCardModel: [CruiseCardModel]
    
    /// Boolean that determines whether the content is being updated or not
    public var isRefreshing: Bool = true
    
    /// Holds the shimmer configuration used when the data is in refresh mode
    var refreshShimmerViewModel: ShimmeringViewModel {
        .init(
            gradient: Gradient(stops: [
                .init(color: .black, location: 0),
                .init(color: .green, location: 0.3),
                .init(color: .green, location: 0.7),
                .init(color: .black, location: 1)
            ]),
           // backgroundColor: Color.black,
            //cornerRadius: 12.0,
            isPlaceholder: isRefreshing,
            isEnabled: isRefreshing
        )
    }
}
