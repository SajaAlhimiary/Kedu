//
//  LogoScreen.swift
//  Kedu
//
//  Created by Sara Alhumidi on 03/04/1444 AH.
//

import SwiftUI


extension View {
    func animate(using animation: Animation = .easeInOut(duration: 1), _ action: @escaping () -> Void) -> some View {
        onAppear {
            withAnimation(animation) {
                action()
            }
        }
    }
}

struct LogoScreen: View {
    @State private var timeRemaining = 10
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @Environment(\.scenePhase) var scenePhase
    @State private var isActive = false
    @State private var isShowing = true
    @State private var  num = 0
    @State var scale = 1.0
    var body: some View {
        
        
        ZStack{
            if self.isActive {
                RegestrationView()
            }
            else {
                Image("Image").resizable().scaledToFill().ignoresSafeArea(.all)
                
                
                
                
                Image("Image1").resizable().scaledToFill()
                    .ignoresSafeArea(.all).frame(width: UIScreen.main.bounds.width * 0.02,height: UIScreen.main.bounds.height * 0.98 )
                
                Image("Image2").resizable().scaledToFill()
                    .ignoresSafeArea(.all).frame(width: UIScreen.main.bounds.width * 0.02,height: UIScreen.main.bounds.height * 0.98 )
                
                
                
                
                Image("logo-png").resizable().frame(width: 590,height: 500 )
            }
        }
        .onAppear {

            DispatchQueue.main.asyncAfter(deadline: .now() + 2.6) {
                withAnimation (.easeOut){
                    self.isActive = true
                }
            }
        }
        
    }
}
struct LogoScreen_Previews: PreviewProvider {
    static var previews: some View {
        LogoScreen()
    }
}




//            }.onReceive(timer) { time in
//            guard isActive else { return }
//
//            if timeRemaining > 0 {
//                timeRemaining -= 1
//                isShowing = true
//            }
//        }.onChange(of: scenePhase) { newPhase in
//            if newPhase == .active {
//                isActive = true
//            } else {
//                isActive = false
//            }
//        }
