//
//  watchStory.swift
//  Kedu
//
//  Created by Saja Alhimiary on 31/10/2022.
//

import SwiftUI
//import AVKit
import WebKit

struct watchStory: View {
    @State private var readStoryIsClicked = false
    @State private var isShowingDetailView = false

    var body: some View {
        NavigationStack{
            ZStack(alignment: .center){
                Image("Background")
                VStack{
                    HStack{
                        VStack{
                            HStack{
                                VStack{
                                    EmbedView(videoID: "OITg-bwlXe0")
                                        .frame(width: 1000, height: 700, alignment: .leading)
                                        .clipShape(RoundedRectangle(cornerRadius: 20))
                                        .shadow(radius: 20)
                                        }
                                    }
                            }
//                    VideoPlayer(player: AVPlayer(url: URL(string: "https://www.youtube.com/embed/OITg-bwlXe0")!))
//                        .frame(width: 400, height: 400)
//                        .clipShape(RoundedRectangle(cornerRadius: 20))
//                        .shadow(radius: 20)
                    
//                    Image("Title")
//                        .resizable()
//                        .frame(width: 900, height: 600)
//                        .clipShape(RoundedRectangle(cornerRadius: 20))
//                        .shadow(radius: 20)
//                        .overlay(Image("PlayIcon")
//                            .resizable()
//                            .renderingMode(.template)
//                            .foregroundColor(.white)
//                            .frame(width: 200, height: 200))
                }
                    .padding()
                ZStack{
                    Image("RoundedRectangle").resizable()
                        .frame(width: 280, height: 80).shadow(radius: 10)
                        .padding()
                        Button("Read The Story 📖", action: {readStoryIsClicked = true})
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .font(.system(size: 26))
                }
            }
            if readStoryIsClicked{
                StoryTitlePage_letsBeFriends()
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

struct watchStory_Previews: PreviewProvider {
    static var previews: some View {
        watchStory()
    }
}

struct EmbedView : UIViewRepresentable{
    let videoID : String
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let youtubeURL = URL(string: "https://www.youtube.com/embed/\(videoID)") else { return }
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: youtubeURL))
    }
}
