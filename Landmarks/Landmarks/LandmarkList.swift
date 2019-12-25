/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing a list of landmarks.
*/

import SwiftUI

struct LandmarkList: View {
    @State var showFavoritesOnly = true
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        VStack {
            NavigationView {
                List {
                    Toggle(isOn: $userData.showFavoritesOnly) {
                        Text("Favorites Only")
                    }
                    
                    ForEach(userData.landmarks) { landmark in
                        if !self.userData.showFavoritesOnly || landmark.isFavorite {
                            NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                                LandmarkRow(landmark: landmark)
                            }
                        }
                    }
                    .frame(height: 550)
                }
                .padding(.bottom, 12)
                .onAppear { UITableView.appearance().separatorStyle = .none }
                .navigationBarTitle(Text("Landmarks"))
            }
            
            HStack {
                Spacer()
                
                Button(action: {
                    print("View closet")
                }) {
                    Image(systemName: "list.bullet")
                        .font(.title)
                        .shadow(radius: 2)
                }
                
                Spacer()
                
                Button(action: {
                    print("Add outfit entry")
                }) {
                    Image(systemName: "plus.rectangle.fill")
                        .font(.title)
                        .shadow(radius: 2)
                }
                
                Spacer()
            }
            .padding(.bottom, 20)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
        .environmentObject(UserData())
    }
}
