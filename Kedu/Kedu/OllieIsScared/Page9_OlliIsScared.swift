//
//  Page9_OlliIsScared.swift
//  Kedu
//
//  Created by Saja Alhimiary on 02/11/2022.
//

import SwiftUI

struct Page9_OlliIsScared: View {
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
                    Image("OlliIsScared_9")
                        .resizable()
                        .frame(width: 1000, height: 600)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .shadow(radius: 20)
                        .padding(.leading, 80)
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
//                                .fontWeight(.bold)
                        }
                    }
                    
                }
                if previousIsClicked{
                    Page7_OlliIsScared()
                }
                if nextIsClicked{
                   Page9_OlliIsScared()
                }
                else if watchStoryIsClicked{
                    WatchStory_OlliIsScared()
                }
            }
            .padding()
//            .navigationBarItems(leading:
//                                    Button(action: {
//                self.isShowingDetailView.toggle()
//                //                print("hello")
//            })
//                                {
//                Image("Back").resizable()
//                    .frame(width: 100, height: 100 )
//                    .shadow(radius : 20)
//            }.padding(.top,100)
//            )
//            .navigationDestination(isPresented: $isShowingDetailView, destination: {
//                StoryTitle_OlliIsScared()
//            })
//            .padding()
//        }.navigationViewStyle(.stack)
    }
}

struct Page9_OlliIsScared_Previews: PreviewProvider {
    static var previews: some View {
        Page9_OlliIsScared()
    }
}
