//
//  letsBeFriends_6.swift
//  Kedu
//
//  Created by Saja Alhimiary on 30/10/2022.
//

import SwiftUI

struct letsBeFriends_6: View {
    @State private var previousIsClicked = false
    @State private var watchStoryIsClicked = false
    @State private var isShowingDetailView = false

    var body: some View {
        NavigationStack{
            ZStack {
                Image("Background")
                VStack{
                    HStack{
                        Button("〈 ", action: {previousIsClicked = true})
                            .font(.system(size: 64))
                            .foregroundColor(.gray)
                            .shadow(radius: 10)
                        VStack{
                            HStack{
                                Image("21")
                                    .resizable()
                                    .frame(width: 450, height: 300)
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                    .shadow(radius: 20)
                                    .padding(.leading, 80)
                                Image("22")
                                    .resizable()
                                    .frame(width: 450, height: 300)
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                    .shadow(radius: 20)
                                    .padding(.trailing, 180)
                            }
                            HStack{
                                Image("23")
                                    .resizable()
                                    .frame(width: 450, height: 300)
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                    .shadow(radius: 20)
                                    .padding(.leading, 80)
                                Image("24")
                                    .resizable()
                                    .frame(width: 450, height: 300)
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                    .shadow(radius: 20)
                                    .padding(.trailing, 180)
                            }
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
                letsBeFriends_5()
            }
            else if  watchStoryIsClicked{
                watchStory()
            }
        }
        .padding()
        .navigationBarItems(leading:
                                Button(action: {
            self.isShowingDetailView.toggle()
//                print("hello")
            })
            {
            Image("Back").resizable()
                .frame(width: 100, height: 100 )
                .shadow(radius : 20)
            }.padding(.top,100)
        )
        .navigationDestination(isPresented: $isShowingDetailView, destination: {
            StoryTitlePage_letsBeFriends()
            })
        .padding()
    }.navigationViewStyle(.stack)
    }
}

struct letsBeFriends_6_Previews: PreviewProvider {
    static var previews: some View {
        letsBeFriends_6()
    }
}
