//
//  ImageInterpolationView.swift
//  HotProspects
//
//  Created by Rodrigo on 27-08-24.
//

import SwiftUI

struct ImageInterpolationView: View {
    var body: some View {
        Image(.example)
            .interpolation(.none)
            .resizable()
            .scaledToFit()
            .background(.black)
    }
}

#Preview {
    ImageInterpolationView()
}
