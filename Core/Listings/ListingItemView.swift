//
//  ListingView.swift
//  AirBnbClone
//
//  Created by Srimathi  Vadivel  on 6/1/24.
//

import SwiftUI

struct ListingItemView: View {
    let listing: Listing
    
    func formatRating(_ rating: Double) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 2
        formatter.usesSignificantDigits = true

        let multiplier = pow(10.0, 2.0) 
        let roundedRating = round(rating * multiplier) / multiplier

        return formatter.string(from: NSNumber(value: roundedRating)) ?? "\(rating)"
    }
    
    var body: some View {
        VStack(spacing: 8) {
            // images
            
            
            ListingImageCarouselView(listing: listing)
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius:  10))
                
            // listing details
            
            HStack(alignment: .top) {
                // details
                VStack(alignment: .leading) {
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    Text("12 miles away")
                        .foregroundColor(.gray)
                    Text("November 3 - 10")
                        .foregroundColor(.gray)
                    HStack(spacing: 4) {
                        Text("$\(listing.pricePerNight)")
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                        Text("night")
                            .foregroundStyle(.black)
                    }
                }
                
                //this will push whatever comes after to the left
                Spacer()
                
                // rating
                
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    
                    Text(formatRating(listing.rating))
                }
                .foregroundStyle(.black)
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingItemView(listing: DeveloperPreview.shared.listings[0])
}
