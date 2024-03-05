//
//  carddVieww.swift
//  SwiftDemoNew
//
//  Created by Komal Barde on 15/09/23.
//

//https://github.com/rcg-digital-mobile/guest-app-ios/pull/747/files#diff-71ad1841f8ecded7a371118a021d965cdb3686daf1030914a920564e53bac84f

import SwiftUI

//struct carddVieww: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct carddVieww_Previews: PreviewProvider {
//    static var previews: some View {
//        carddVieww()
//    }
//}

//
//  CruiseCardView.swift
//  Components
//
//  Created by Eduardo Andres Rodriguez Parejo on 31/08/23.
//

import SwiftUI


/// CruiseCard representing the cruise trip card with displayable information.
public struct CruiseCardView: View {
    public let model: CruiseCardModel
    
    public init(model: CruiseCardModel) {
        self.model = model
    }
    
    public var body: some View {
        ZStack {
            HStack {
                VStack(alignment: .leading) {
//                    LabelView(viewModel: .init(text: model.title,
//                                               textColor: .black,
//                                               font: .proximaNovaBold(size: 18),
//                                               lineLimit: 2,
//                                               fixedSize: .init(horizontal: false, vertical: true))
//                    )
//                    .padding(.bottom, 4)
//                    .dynamicTypeSize(...DynamicTypeSize.large)
//                    .accessibilityIdentifier("cruiseCardTitleLabel")
                    Text("cruiseCardTitleLabel")
//                    Text("cruiseCardTitleLabel")
//                        .font(.system(size: 40))
//                        .foregroundColor(.black)
//                        .lineLimit(2)
//                        .fixedSize(horizontal: false, vertical: true)
//                        .dynamicTypeSize(...DynamicTypeSize.xLarge)
//                        .frame(width: 200, height: .infinity)
//                        .multilineTextAlignment(.center)
//                        .accessibilityIdentifier("videoPlayTitle")
                    VStack(alignment: .leading, spacing: 2) {
                     //   LabelView(viewModel: .init(text: "\(model.shipName)",
//                                                   textColor: Colors.grayStorm,
//                                                   font: .proximaNovaBold(size: 12)))
//                        .dynamicTypeSize(...DynamicTypeSize.large)
//                        .accessibilityIdentifier("cruiseCardShipNameLabel")
                                                   
                                                   Text("cruiseCardShipNameLabel")
//                        LabelView(viewModel: .init(text: "\(model.datesText)",
//                                                   textColor: Colors.grayStorm,
//                                                   font: .proximaNovaRegular(size: 12)))
//                        .dynamicTypeSize(...DynamicTypeSize.large)
//                        .accessibilityIdentifier("cruiseCardDatesLabel")
                        Text("cruiseCardDatesLabel")
                    }
                    .padding(.bottom, 16)
                    VStack(alignment: .leading, spacing: 2) {
                        Text("cruiseCardReservationTitleLabel")
//                        LabelView(viewModel: .init(text: model.reservationTitle,
//                                                   textColor: Colors.grayStorm,
//                                                   font: .proximaNovaBold(size: 12)))
//                        .dynamicTypeSize(...DynamicTypeSize.large)
//                        .accessibilityIdentifier("cruiseCardReservationTitleLabel")
                        
                        Text("cruiseCardReservationNumberLabel")
//                        LabelView(viewModel: .init(text: "\(model.reservationNumber)",
//                                                   textColor: Colors.grayStorm,
//                                                   font: .proximaNovaRegular(size: 12)))
//                        .dynamicTypeSize(...DynamicTypeSize.large)
//                        .accessibilityIdentifier("cruiseCardReservationNumberLabel")
                    }
                }
                .padding(.all, 16)
                Spacer()
                AsyncImage(url: model.imageURL, transaction: .init(animation: .default), content: { phase in
                    switch phase {
                    case let .success(image):
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        
                    /// TODO: add resiliency image
                    default:
                        EmptyView()
                    }
                })
                .frame(width: 112, height: 160).cornerRadius(20)
                .accessibilityIdentifier("cruiseCardImage")
            }
        }
        .background(
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(.white)
                .frame(height: 160)
                .shadow(color: Color.black.opacity(0.08), radius: 12, x: 0, y: 2)
        )
        .frame(height: 160)
    }
}
