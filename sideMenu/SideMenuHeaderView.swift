//
//  SideMenuHeaderView.swift
//  sideMenu
//
//  Created by Folio on 31/05/2022.
//

import SwiftUI

struct SideMenuHeaderView: View {
    @Binding var isShowing : Bool
    var body: some View {
        ZStack(alignment:.topTrailing) {
            Button(action:{
                withAnimation(.spring()){
                isShowing.toggle()
            }
                
            }, label: {
                Image(systemName: "xmark")
                    .frame(width: 32, height: 32)
                    .foregroundColor(.white)
                    .padding()
            })

            VStack(alignment: .leading){
                Image("Fady-11")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 70,height: 70 )
                    .clipShape(Circle())
                    .padding(.bottom, 16)
                
                
                Text("Fady Salah")
                    .font(.system(size: 25,weight: .semibold))
                Text("@fady_11")
                    .font(.system(size: 17))
                    .padding(.bottom, 15)
                
                HStack(spacing:10){
                    HStack(spacing:4){
                        Text("2,790").bold()
                        Text("Following")
                    }
                    HStack(spacing:4){
                        Text("5,500").bold()
                        Text("Followers")
                    }
                    Spacer()
                }
                 
                
                Spacer()
            }
            .padding()
            .foregroundColor(.white)
                   
        }
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(isShowing: .constant(true))
    }
}
