//
//  StoryTitlePage.swift
//  Kedu
//
//  Created by Saja Alhimiary on 30/10/2022.
//

import SwiftUI

struct StoryTitlePage_letsBeFriends: View {
    @State private var nextIsClicked = false
    @State private var watchStoryIsClicked = false
    var body: some View {
        ZStack{
            Image("Background")
            VStack{
//                HStack{
//                    Image("Back").resizable()
//                        .frame(width: 100, height: 100)
//                        .shadow(radius: 10)
//                    Image(systemName: "settings")
//                }
                HStack{
//                    Button("〈 ", action: {})
//                        .font(.system(size: 64))
//                        .foregroundColor(.gray)
//                        .shadow(radius: 10)
                    Image("Title")
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
                            .fontWeight(.bold)
                    }
                }
               
            }
            if nextIsClicked{
                letsBeFriends_1()
            }
            if watchStoryIsClicked{
                watchStory()
            }
        }
        .padding()
    }
}

struct StoryTitlePage_letsBeFriends_Previews: PreviewProvider {
    static var previews: some View {
        StoryTitlePage_letsBeFriends()
    }
}
