//
//  Image+Rswift.swift
//  VariousExtensions
//
//  Created by kazunori.aoki on 2022/04/05.
//

import SwiftUI
import Rswift

extension Image {
    // Image(R.image.ic_launcher)
    init(_ resource: ImageResource) {
        self.init(resource.name, bundle: resource.bundle)
    }
}

extension ImageResource {
    var image: Image {
        Image(name)
    }
}
