//
//  AwardsView.swift
//  AwardsCollectionAppSwiftUI
//
//  Created by Aleksandr F. on 03.06.2022.
//

import SwiftUI


struct AwardsView: View {
    let awards = Award.getAwards().filter { $0.awarded }
    
    var body: some View {
          NavigationView {
              CustomGridView(items: awards, columns: 2) { itemSize, award in
                  VStack {
                      award.awardView
                      Text(award.title)
                  }
                  .padding()
                  .frame(width: itemSize, height: itemSize)
              }
              .navigationBarTitle("Your awards: \(awards.count)")
          }
      }
}

struct AwardsView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView()
    }
}
