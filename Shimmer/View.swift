//
//  View.swift
//  Components
//
//  Created by Juan Jesus Cueto Yabar on 3/11/22.
//

import SwiftUI


extension View {
//    /// Modifier that enable the localization of `AppLanga`
//    /// - Parameters:
//    ///   - tableName: The name of the string table to search.
//    ///   - comment: Contextual information about this key-value pair.
//    ///   - dsoHandle: Pointer used to get a `Bundle` from a given file.
//    public func localizeContent(tableName: String = "Royal", comment: String = "", dsoHandle: UnsafeRawPointer = #dsohandle) -> some View {
//        ComponentsBundleManager.shared.updateContent(tableName: tableName, dsoHandle: dsoHandle)
//        return self
//    }
//
//    /// Embeds the current view within a ``NavigationView``
//    public func inNavigationView() -> some View {
//        NavigationView {
//            self
//        }
//    }
//
//    /// Pops up a takeover above the current view
//    /// - Parameters:
//    ///   - isPresented: Presents the takeover when set to true.
//    ///   - viewModel: Represents the information required for the resiliency takeover
//    public func popupTakeover(isPresented: Binding<Bool>, viewModel: TakeoverViewModel) -> some View {
//        modifier(TakeoverViewModifier(isPresented: isPresented, viewModel: viewModel))
//    }
//
//    /// Covers the current view with the spinning loader
//    /// - Parameter isLoading: Shows the loader when this value is true.
//    public func spinningLoader(isLoading: Binding<Bool>) -> some View {
//        modifier(Loader(isLoading: isLoading))
//    }
//
//    /// Covers the current view with a full screen spinning loader
//    /// - Parameter isLoading: Shows the loader when this value is true.
//    public func fullScreenSpinningLoader(isLoading: Binding<Bool>) -> some View {
//        modifier(FullScreenLoader(isLoading: isLoading))
//    }
//
//    /// Disables animation when tapping the current view
//    public func disabledTapAnimation() -> some View {
//        modifier(DisabledTapAnimationViewModifier())
//    }
//
//    /// Covers the current view with a information overlay to the current view
//    /// - Parameters:
//    ///   - viewModel: Information overlay view model configuration. This shows each time this value is different than nil
//    /// - Returns: View
//    public func informationOverlay(viewModel: Binding<InformationOverlayViewModel?>) -> some View {
//        modifier(InformationOverlayViewModifier(viewModel: viewModel))
//    }
    
    /// Applies a shimmering effect to the current view
    /// - Parameter viewModel: Represents the configuration for the shimmering effect
    public func shimmer(viewModel: ShimmeringViewModel = ShimmeringViewModel()) -> some View {
        modifier(ShimmeringViewModifier(viewModel: viewModel))
    }
    
//    /// Wraps sensitive content to prevent screenshots or screen recording of that content.
//    /// Use only where it's directly necessary (e.g. Image, Text) as it's intended to carry a light-weight view.
//    public func preventScreenshot() -> some View {
//        modifier(ScreenshotPreventViewModifier())
//    }
//    
//    /// Pops up a native like view above the current view
//    /// - Parameters:
//    ///   - viewModel: Represents the required information for the pop up
//    ///   - show: Binding value to show or hide view
//    public func popup(viewModel: PopupViewModel, show: Binding<Bool>) -> some View {
//        modifier(PopupViewModifier(viewModel: viewModel, show: show))
//    }
//    
//    public func alert(viewModel: Binding<AlertViewModel?>) -> some View {
//        modifier(AlertViewModifier(viewModel: viewModel))
//    }
//    
//    /// Adds a pinch gesture that allows zooming in and a drag gesture to the current view 
//    /// - Parameters:
//    ///   - minScale: Value that sets the minimum scale that can be applied to the view. Default is 1.0
//    ///   - maxScale: Value that sets the maximum scale that can be applied to the view. Default is 5.0
//    ///   - isActive: Value that determines whether the pinch zoom is currently active or not. Default is true
//    public func pinchZoom(minScale: CGFloat = 1.0, maxScale: CGFloat = 5.0, isActive: Binding<Bool> = .constant(true)) -> some View {
//        modifier(PinchZoomViewModifier(minScale: minScale, maxScale: maxScale, isActive: isActive))
//    }
//    
//    /// Adds a badge with a count
//    /// - Parameters:
//    ///   - viewModel: Badge configuration
//    public func badge(viewModel: BadgeViewModel) -> some View {
//        modifier(BadgeViewModifier(viewModel: viewModel))
//    }
//    
//    /// Returns the same view as AnyView generic view to get used as a parameter and move between layers
//    public func toAnyView() -> AnyView {
//        return AnyView(self)
//    }
//    
//    /// Configures keyboard behavior for an input
//    /// - Parameter submitLabel: Represents the submitLabel in the keyboard for this input
//    public func emailInput(submitLabel: SubmitLabel) -> some View {
//        modifier(EmailInputViewModifier(submitLabel: submitLabel))
//    }
//    
//    /// Adds a listener to the keyboard changes
//    /// - Parameter rectHandler: Closures that handles the changes of the keyboard rect
//    public func onChangeKeyboardRect(rectHandler: @escaping (CGRect) -> Void) -> some View {
//        modifier(KeyboardListenerModifier(rectHandler: rectHandler))
//    }
//    
//    /// Hides view depending on the `isHidden` parameter
//    /// - Parameter isHidden: Hides the current view when this value is true
//    public func hidden(isHidden: Binding<Bool>) -> some View {
//        modifier(HideViewModifier(isHidden: isHidden))
//    }
//    
//    /// Scrolls a view to a specific position identified by a viewId and an anchor point.
//    /// - Parameters:
//    ///   - viewId: Represents the ID of the view to be scrolled to. If the binding value is nil, no scrolling will occur.
//    ///   - anchor: Determines the anchor point for the scroll operation
//    public func scrollTo<T: Hashable>(viewId: Binding<T?>, anchor: UnitPoint) -> some View {
//        modifier(ScrollPositionModifier(viewId: viewId, anchor: anchor))
//    }
//    
//    /// Creates a modifier that adds pull-to-refresh functionality to a view.
//    /// Use this modifier to enable pull-to-refresh behavior in a scrollable view, such as a `List` or a `ScrollView`.
//    /// - Parameters:
//    ///   - onRefresh: A closure that will be called when the user triggers a refresh action.
//    /// - Returns: A modified view with pull-to-refresh functionality.
//    public func pullToRefresh(onRefresh: @escaping () async -> Void) -> some View {
//        modifier(PullToRefreshModifier(onRefresh: onRefresh))
//    }
//    
//    /// Adds a modifier to read and access the geometry of the view.
//    /// - Parameter proxy: A closure that receives the `GeometryProxy` of the view.
//    public func onReadProxy(proxy: @escaping (GeometryProxy) -> Void) -> some View {
//        modifier(ProxyReaderViewModifier(proxy: proxy))
//    }
//    
//    /// Adds a modifier to display a round popup view with the specified configuration model.
//    /// - Parameters:
//    ///   - model: The configuration model for the round popup.
//    ///   - showPopup: A binding that controls whether the round popup is shown or hidden.
//    public func roundPopupView<CenterView: View>(model: RoundPopupViewModel<CenterView>, showPopup: Binding<Bool>) -> some View {
//        modifier(RoundPopupViewModifier(model: model, showPopup: showPopup))
//    }
//    
//    @ViewBuilder
//    ///  Change buttonStyle following the style in PrimaryButton
//    ///   - Parameter style: It can be .withBorder or .withoutBorder
//    public func popUpButtonStyle(_ style: PopupStyle) -> some View {
//        switch style {
//            case .withBorder:
//                self.buttonStyle(ClearWithPrimaryBorderButtonStyle())
//            case .withoutBorder:
//                self.buttonStyle(ClearWithoutBorderButtonStyle(foregroundColor: Colors.primary))
//        }
//    }
//    
//    /// Custom border that fixes a bug in SwiftUI border view modifier which cuts off corners.
//    public func border(_ color: Color, width: CGFloat = 1, cornerRadius: CGFloat) -> some View {
//        overlay(RoundedRectangle(cornerRadius: cornerRadius).stroke(color, lineWidth: width))
//    }
//    
//    /// Adds a modifier to read and access the offset of the scroll view
//    /// - Parameter coordinateSpace: coordinate space relative to which we need to calculate offset
//    /// - Parameter binding: binding to get the offset
//    public func onScrollOffsetChange(from coordinateSpace: String, into binding: Binding<CGPoint>) -> some View {
//        modifier(ScrollViewOffsetViewModifier(coordinateSpace: coordinateSpace, offset: binding))
//    }
}
