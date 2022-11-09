//
//  StoryTitle.swift
//  Kedu
//
//  Created by Saja Alhimiary on 02/11/2022.
//

import SwiftUI

struct StoryTitle_OlliIsScared: View {
    @State private var nextIsClicked = false
    @State private var watchStoryIsClicked = false
    @State private var isShowingDetailView = false
    @State private var isNext = false

    
    var body: some View {
                ZStack{
                    Image("Background")
                    HStack{
                        Button(action: {
                            isNext.toggle()
                        }){
                            Image("back")
                                .resizable()
                                .frame(width: 90 , height: 90)
                                .rotationEffect(.degrees(0))
                            
                        }
                        
                    }.frame(width: UIScreen.main.bounds.width * 0.1, height: UIScreen.main.bounds.height * 0.1).offset(CGSize.init(width: -590, height: -390))
                VStack{
                    HStack{
                        Image("OlliIsScared_Title")
                            .resizable()
                            .frame(width: 900, height: 600)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .shadow(radius: 20)
                            .padding(.leading, 160)
                            .padding(.trailing, 80)
                        Button(" 〉")
                        {
                            nextIsClicked = true
                        }
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
//                            .fontWeight(.bold)
                    }
                }
               
            }
            if nextIsClicked{
                Page1_OlliIsScared()
            }
            if watchStoryIsClicked{
                WatchStory_OlliIsScared()
            }
            if isNext{
                ChooseStoryScreen()
            }
        }
            .padding()
//            .navigationBarItems(leading:
//                                    Button(action: {
//                self.isShowingDetailView.toggle()
//    //                print("hello")
//                })
//                {
//                Image("Back").resizable()
//                    .frame(width: 100, height: 100 )
//                    .shadow(radius : 20)
//                }.padding(.top,100)
//            )
//            .navigationDestination(isPresented: $isShowingDetailView, destination: {
//                StoryTitle_OlliIsScared()
//                })
//            .padding()
//        }.navigationViewStyle(.stack)
    }
}

struct StoryTitle_OlliIsScared_Previews: PreviewProvider {
    static var previews: some View {
        StoryTitle_OlliIsScared()
    }
}
