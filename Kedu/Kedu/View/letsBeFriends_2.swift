//
//  letsBeFriends_2.swift
//  Kedu
//
//  Created by Saja Alhimiary on 30/10/2022.
//

import SwiftUI

struct letsBeFriends_2: View {
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
                        Button(action: {
                            previousIsClicked = true
                        })
                        {
                            Text("〈 ").font(.system(size: 64))
                                .foregroundColor(.gray)
                                .shadow(radius: 10)
                                .frame(width: 90 , height: 90)
                       }

                        VStack{
                            HStack{
                                Image("LetsBeFriends_5")
                                    .resizable()
                                    .frame(width: 450, height: 300)
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                    .shadow(radius: 20)
                                    .padding(.leading, 80)
                                Image("LetsBeFriends_6")
                                    .resizable()
                                    .frame(width: 450, height: 300)
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                    .shadow(radius: 20)
                                    .padding(.trailing, 80)
                            }
                            HStack{
                                Image("LetsBeFriends_7")
                                    .resizable()
                                    .frame(width: 450, height: 300)
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                    .shadow(radius: 20)
                                    .padding(.leading, 80)
                                Image("LetsBeFriends_8")
                                    .resizable()
                                    .frame(width: 450, height: 300)
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                    .shadow(radius: 20)
                                    .padding(.trailing, 80)
                            }
                        }
                        Button(action: {
                            nextIsClicked = true
                        })
                        {
                            Text(" 〉").font(.system(size: 64))
                                .foregroundColor(.gray)
                                .shadow(radius: 10)
                                .frame(width: 90 , height: 90)
                       }

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
                                .fontWeight(.bold)
                        }
                    }
                    
                }
                if previousIsClicked{
                    letsBeFriends_1()
                }
                if nextIsClicked {
                    
                    letsBeFriends_3()
                    
                }
                else if  watchStoryIsClicked{
                    WatchStory_LetsBeFriends()
                }
            }
        .padding()
//        .navigationBarItems(leading:
//                                Button(action: {
//            self.isShowingDetailView.toggle()
////                print("hello")
//            })
//            {
//            Image("Back").resizable()
//                .frame(width: 100, height: 100 )
//                .shadow(radius : 20)
//            }.padding(.top,100)
//        )
//        .navigationDestination(isPresented: $isShowingDetailView, destination: {
//            StoryTitlePage_letsBeFriends()
//            })
//        .padding()
//    }.navigationViewStyle(.stack)
    }
}

struct letsBeFriends_2_Previews: PreviewProvider {
    static var previews: some View {
        letsBeFriends_2()
    }
}
