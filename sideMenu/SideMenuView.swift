//
//  SideMenuView.swift
//  sideMenu
//
//  Created by Fadi on 31/05/2022.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing : Bool
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.blue,Color.purple]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack{
                //Header
                SideMenuHeaderView(isShowing: $isShowing)
                    .frame(height:250)
                
                //Options
                ForEach(SideMenuViewModel.allCases, id: \.self) { option in
                    NavigationLink(destination: Text(option.title), label: {
                        SideMenuOptionView(viewModel: option)
                    })
                    
                        
                    
                }
                Spacer()
            }
        }
        .navigationBarHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
            .previewInterfaceOrientation(.portrait)
    }
}
