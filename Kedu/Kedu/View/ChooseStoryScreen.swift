//
//  ChooseStoryScreen.swift
//  Kedu
//
//  Created by Sara Alhumidi on 09/04/1444 AH.
//

import SwiftUI

struct ChooseStoryScreen: View {
    @State private var isNext = false
    @State private var LetsBeFriends_storyclicked = false
    @State private var OllieIsScared_storyclicked = false
    @State private var YourMagicLight_storyclicked = false
    @State private var isSetting = false
    private var story: [String] = ["LetsBeFriends_Title", "OlliIsScared_Title", "Title_YourMagicLight"]
    var body: some View {
      
        ZStack{
            
            Image("Image").resizable().scaledToFill().ignoresSafeArea(.all)
            HStack{
                Button(action: {
                    isNext.toggle()
                }){
                    Image("back")
                        .resizable()
                        .frame(width: 90 , height: 90)
                        .rotationEffect(.degrees(0))
                    
            }
                Spacer()
                Spacer()
                Button(action: {
                    isSetting.toggle()
                }){
                    Image("SImage")
                        .resizable()
                        .frame(width: 40 , height: 9)
                        .rotationEffect(.degrees(0))
                    
            }
            }.frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.1).offset(CGSize.init(width: -50, height: -390))
           
            VStack{
                Text("Pick a story").font(Font.custom("AnnieUseYourTelescope-Regular", size: 60)).bold().foregroundColor(.gray)
                
                HStack(alignment: .center, spacing: 200){
                    
                    VStack{
                        
                    ScrollView(.horizontal){
                        
                        HStack (spacing: 20){
                            
                            Button(action:{
                                
                                LetsBeFriends_storyclicked = true
                                
                            }, label: {
                                
                                Image(story[0])
                                    .resizable()
                                    .frame(width: 500, height: 600)
                                
                                
                            })
                            Button(action:{
                                OllieIsScared_storyclicked = true
                            }, label: {
                                Image(story[1])
                                    .resizable()
                                    .frame(width: 500, height: 600)
                                
                                
                            })
                            
                            Button(action:{
                                YourMagicLight_storyclicked = true
                            }, label: {
                                Image(story[2])
                                    .resizable()
                                    .frame(width: 500, height: 600)
                                
                                
                            })
                        }
                            
                                
                            
                        } .contentShape(Rectangle())
                            .onTapGesture {
//                                MainView()
                                debugPrint("Whole view as touch")
                            }
                        
                       
                    }.frame(width: 500.0, height: 90.0)
                    
                    
                    Image("Gcharcter").resizable().frame(width: UIScreen.main.bounds.width * 0.15 ,height: UIScreen.main.bounds.height * 0.5).shadow(radius: 10,x: 0,y:16 )
                }
                    
                }.frame(width: UIScreen.main.bounds.width * 0.5 ,height: UIScreen.main.bounds.height * 0.3).padding(.all,100)
            }
        if isSetting{
            KeduSettings()
        }
        
           if isNext{
             MainView()
            }
            if LetsBeFriends_storyclicked {
                StoryTitlePage_letsBeFriends()
            }
            else if OllieIsScared_storyclicked{
                StoryTitle_OlliIsScared()
            }
            else if YourMagicLight_storyclicked{
                StoryTitle_YourMagicLight()
            }
        }
    
        
        
    }

struct ChooseStoryScreen_Previews: PreviewProvider {
    static var previews: some View {
        ChooseStoryScreen()
    }
}

//                        VStack {
//                            ZStack{
//                                ForEach(story, id: \.self) { story in
//                                    CardSwap(person: story)
//                                }
//                            }.onTapGesture {
//                                withAnimation(.easeInOut) {
//
//                                    }
//
//                            }
//
//                        }.frame(width: UIScreen.main.bounds.width * 0.3 ,height: UIScreen.main.bounds.height * 0.3)
//
