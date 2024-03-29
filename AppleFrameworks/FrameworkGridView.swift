//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Ahmed Nagy on 10/01/2024.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: columns, content: {
            FrameworkTitleView(framework: MockData.sampleFramework)
            FrameworkTitleView(framework: MockData.sampleFramework)
            FrameworkTitleView(framework: MockData.sampleFramework)
            FrameworkTitleView(framework: MockData.sampleFramework)
            FrameworkTitleView(framework: MockData.sampleFramework)
            FrameworkTitleView(framework: MockData.sampleFramework)
        })
    }
}

struct FrameworkTitleView: View {
    
    let framework: Framework
    
    var body: some View {
        VStack(spacing: 4) {
            Image(framework.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}

#Preview {
    FrameworkGridView()
}
