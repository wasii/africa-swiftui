//
//  GalleryView.swift
//  Africa
//
//  Created by NaheedPK on 13/04/2022.
//

import SwiftUI

struct GalleryView: View {
    //MARK: - PROPERTIES
    let animal: Animal
    
    @State private var selectedAnimal: String = "lion"
    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State private var columnsCount: Double = 3.0
    
    func gridSwitched() {
        gridLayout = Array(repeating: .init(.flexible()), count: Int(columnsCount))
    }
    
    //SIMPLE Grid  Definition
    //let gridLayout: [GridItem] = [
    //    GridItem(.flexible()),
    //    GridItem(.flexible()),
    //    GridItem(.flexible())
    //]
    
    //EFFICIENT GRID DEFINITION
//    let gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 3)
    //MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 30) {
                //MARK: - IMAGE
                Image(selectedAnimal)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(Color.white, lineWidth: 8)
                    )
                
                //MARK: - SLIDEr
                
                Slider(value: $columnsCount, in: 2...4, step: 1)
                    .padding(.horizontal)
                    .onChange(of: columnsCount) { newValue in
                        gridSwitched()
                    }
                
                //MARK: - GRID
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 20, content: {
                    ForEach(animals) { item in
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .stroke(Color.white,lineWidth: 1.5)
                            )
                            .onTapGesture {
                                hapticImpact.impactOccurred()
                                selectedAnimal = item.id.lowercased()
                            }
                    }// : LOOP
                })// : LazyVGrid
                .animation(.easeIn)
                .onAppear() {
                    gridSwitched()
                }
            } // : VStack
            .padding(.horizontal, 10)
            .padding(.vertical, 50)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            MotionAnimationView()
        )
        
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView(animal: animals[1])
    }
}
