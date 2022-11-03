//
//  Page2_YourMagicLight.swift
//  Kedu
//
//  Created by Saja Alhimiary on 03/11/2022.
//

import SwiftUI

struct Page7_YourMagicLight: View {
    @State private var nextIsClicked = false
    @State private var previousIsClicked = false
    @State private var watchStoryIsClicked = false
    @State private var isShowingDetailView = false
    
    var body: some View {
//        NavigationStack{
            ZStack {
                Image("Background")
                VStack{
                    HStack{
                        Button("〈 ", action: {previousIsClicked = true})
                            .font(.system(size: 64))
                            .foregroundColor(.gray)
                            .shadow(radius: 10)
                        Image("YourMagicLight_13")
                            .resizable()
                            .frame(width: 500, height: 600)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .shadow(radius: 20)
                            .padding(.leading, 80)
                        Image("YourMagicLight_14")
                            .resizable()
                            .frame(width: 500, height: 600)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .shadow(radius: 20)
                            .padding(.trailing, 80)
                        Button(" 〉", action: {nextIsClicked = true})
                            .font(.system(size: 64))
                            .foregroundColor(.gray)
                            .shadow(radius: 10)
                    }
                        .padding()
                        ZStack{
                            Image("RoundedRectangle").resizable()
                                .frame(width: 280, height: 80).shadow(radius: 10)
                                .padding()
                            HStack{
                                Image(systemName: "play")
                                    .foregroundColor(.white)
                                    .font(.system(size: 26))
                                Button("Watch The Story", action: {watchStoryIsClicked.toggle()})
                                    .foregroundColor(.white)
                                    .font(.system(size: 26))
//                                    .fontWeight(.bold)
                            }
                        }
                        
                    }
                    if previousIsClicked{
                        Page6_YourMagicLight()
                    }
                    if nextIsClicked{
                        Page8_YourMagicLight()
                    }
                    else if watchStoryIsClicked{
                        WatchStory_YourMagicLight()
                    }
                }
                .padding()
//                .navigationBarItems(leading:
//                                        Button(action: {
//                    self.isShowingDetailView.toggle()
//                    //                print("hello")
//                })
//                                    {
//                    Image("Back").resizable()
//                        .frame(width: 100, height: 100 )
//                        .shadow(radius : 20)
//                }.padding(.top,100)
//                )
//                .navigationDestination(isPresented: $isShowingDetailView, destination: {
//                    StoryTitle_OlliIsScared()
//                })
//                .padding()
//            }.navigationViewStyle(.stack)
        }
}

struct Page7_YourMagicLight_Previews: PreviewProvider {
    static var previews: some View {
        Page7_YourMagicLight()
    }
}
