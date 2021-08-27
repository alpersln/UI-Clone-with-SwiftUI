//
//  ContentView.swift
//  SpotifyClone
//
//  Created by calatinalper on 27.08.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.black]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            ScrollView{
            
            Image("pentagram").resizable().frame(width: 300, height: 300, alignment: .top)
                VStack(alignment: .leading){
                HStack{
                    Text("Bir").fontWeight(.bold).font(.title).foregroundColor(.white)
                }
                HStack{
                    Image("4").resizable().frame(width: 30, height: 30, alignment: .center).clipShape(Circle())
                    Text("Pentagram").foregroundColor(.white).font(.title2)
                }
                HStack{
                    Text("Album")
                    Circle().frame(width: 4, height: 4, alignment: .center)
                    Text("2002")
                }.foregroundColor(.gray)
                    
                        HStack(spacing: 40){
                            Image(systemName: "heart")
                            Image(systemName: "arrow.down.circle")
                            Image(systemName: "ellipsis")
                            Spacer()
                            ZStack(alignment: .bottomTrailing){
                            ZStack{
                                Circle().frame(width: 70, height: 70).foregroundColor(.green)
                                Image(systemName: "play.fill")
                            }.font(.system(size: 30)).foregroundColor(.white)
                                ZStack{
                                Circle().frame(width:23,height: 23)
                                
                                    Image(systemName: "shuffle").font(.system(size: 15)).foregroundColor(.green)
                            
                            }
                            }
                            }.font(.system(size: 25)).foregroundColor(.white)

                        
                    
                
             }
                .padding()
                
                
                multipleMusic()

            }
            VStack{
            playingSong()
            menuTab()
            }.background(Color(#colorLiteral(red: 0.1568473876, green: 0.1568713486, blue: 0.1568392217, alpha: 1))).offset(y: UIScreen.main.bounds.height / 2 - 75)
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct musicList: View {
    
    let malist = ["Tigris","Bir","Şeytan Bunun Neresinde","Bu Alemi Gören Sensin","Mezarkabul","Sir","Kam","Ölümlü","For Those Who Died Alone"]
    
    var n = 0

    
    var body: some View {
        
        VStack{
            HStack{
                VStack(alignment: .leading) {
                    
                    Text(malist[n]).foregroundColor(.white).fontWeight(.bold)
                    
                    
                    Text("Pentagram").foregroundColor(.gray)
                }
                Spacer()
                HStack{
                    Image(systemName: "ellipsis")
                }.font(.system(size: 30)).foregroundColor(.white)
                

            }.padding()
        }
    }
}

struct multipleMusic: View {

    var body: some View {
        VStack{
            ForEach(0..<8) {
                i in musicList(n: i)
            }
        }
    }
}

struct playingSong: View {
    var body: some View{
        VStack {
            HStack {
            Image("pentagram").resizable().frame(width: 60, height: 60)
                VStack(alignment: .leading){
                Text("Tigris").foregroundColor(.white)
                    Text("Pentagram").foregroundColor(.gray)
                }.font(.system(size: 18))
                Spacer()
                HStack(spacing: 35){
                    Image(systemName: "hifispeaker").foregroundColor(Color(#colorLiteral(red: 0.5372384787, green: 0.5379323959, blue: 0.5568566918, alpha: 1)))
                Image(systemName: "play.fill").foregroundColor(.white)
                }.padding().font(.system(size: 25))
            }
            
        }
 }
}

struct menuTab: View {
    var body: some View{
        HStack(spacing:35){
            VStack{
                Image(systemName: "house").font(.system(size: 20))
                Text("Home")
            }
            Spacer()
            VStack{
                Image(systemName: "magnifyingglass").font(.system(size: 20))
                Text("Search")
            }
            Spacer()
            VStack{
                Image(systemName: "text.justifyright").font(.system(size: 20))
                Text("Your Library")
            }
        }.foregroundColor(Color(.systemGray4)).padding(.bottom,30).padding(.top,2).padding(.horizontal,20)
    }
}
