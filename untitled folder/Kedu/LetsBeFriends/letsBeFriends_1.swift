//
//  letsBeFriends_1.swift
//  Kedu
//
//  Created by Saja Alhimiary on 30/10/2022.
//

import SwiftUI

struct letsBeFriends_1: View {
    @State private var nextIsClicked = false
    @State private var previousIsClicked = false
    @State private var watchStoryIsClicked = false
    var body: some View {
        ZStack {
            Image("Background")
            VStack{
//                HStack{
//                    Image("Back").resizable()
//                        .frame(width: 100, height: 100)
//                        .shadow(radius: 10)
//                    Image(systemName: "settings")
//                }
                    HStack{
                        Button("〈 ", action: {previousIsClicked = true})
                            .font(.system(size: 64))
                            .foregroundColor(.gray)
                            .shadow(radius: 10)
                        VStack{
                            HStack{
                                Image("1")
                                    .resizable()
                                    .frame(width: 450, height: 300)
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                    .shadow(radius: 20)
                                    .padding(.leading, 80)
                                Image("2")
                                    .resizable()
                                    .frame(width: 450, height: 300)
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                    .shadow(radius: 20)
                                    .padding(.trailing, 80)
                            }
                            HStack{
                                Image("3")
                                    .resizable()
                                    .frame(width: 450, height: 300)
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                    .shadow(radius: 20)
                                    .padding(.leading, 80)
                                Image("4")
                                    .resizable()
                                    .frame(width: 450, height: 300)
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                    .shadow(radius: 20)
                                    .padding(.trailing, 80)
                            }
                        }
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
                            .fontWeight(.bold)
                    }
                }
               
            }
            if previousIsClicked{
                StoryTitlePage_letsBeFriends()
            }
            if nextIsClicked{
                letsBeFriends_2()
            }
            else if  watchStoryIsClicked{
                watchStory()
            }
        }
        .padding()
    }
}

struct letsBeFriends_1_Previews: PreviewProvider {
    static var previews: some View {
        letsBeFriends_1()
    }
}
