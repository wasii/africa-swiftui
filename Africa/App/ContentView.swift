//
//  ContentView.swift
//  Africa
//
//  Created by NaheedPK on 13/04/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var isGridViewActivated: Bool = false
    let gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 1)
    var body: some View {
        NavigationView {
            Group {
                if !isGridViewActivated {
                    List {
                        CoverImageView()
                            .frame(height: 300)
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        ForEach(animals) { animal in
                            NavigationLink(destination: AnimalDetailView(animal: animal)) {
                                AnimalListItemView(animal: animal)
                            }
                        }
                    }
                } else {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                            ForEach(animals) { animal in
                                NavigationLink(destination: AnimalDetailView(animal: animal)) {
                                    AnimalGridItemView(animal: animal)
                                }//NavigationLink
                            }//ForEach
                        } // LazyVGrid
                        .padding(10)
                        .animation(.easeIn)
                    }// : ScrollView
                } // - List
            } // : GROUP
            .listStyle(PlainListStyle())
            .navigationBarTitle("Africa", displayMode: .large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack(spacing: 15) {
                        //List
                        Button(action: {
                            print("List View Activated")
                            hapticImpact.impactOccurred()
                            isGridViewActivated = false
                        }) {
                            Image(systemName: "square.fill.text.grid.1x2")
                                .font(.body)
                                .foregroundColor(isGridViewActivated ? .primary : .accentColor)
                        }// - Button
                        
                        //Grid
                        Button {
                            print("Grid View Activated")
                            hapticImpact.impactOccurred()
                            isGridViewActivated = true
                        } label: {
                            Image(systemName: "square.grid.2x2")
                                .font(.body)
                                .foregroundColor(isGridViewActivated ? .accentColor : .primary)
                        }
                        
                    } // - HStack
                } // ToolbarItems
            }// - Toolbar
        } // - navigation view
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
