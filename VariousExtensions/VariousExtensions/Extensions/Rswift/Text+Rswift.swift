//
//  Text+Rswift.swift
//  VariousExtensions
//
//  Created by kazunori.aoki on 2022/04/05.
//

import SwiftUI
import Rswift

extension Text {
    init(_ resource: StringResourceType) {
        self.init(.init(resource.key), tableName: resource.tableName, bundle: resource.bundle)
    }
}

extension StringResource {
    var localizedStringKey: LocalizedStringKey {
        LocalizedStringKey(key)
    }

    var text: Text {
        Text(localizedStringKey)
    }

    var string: String {
        return NSLocalizedString(key, comment: "")
    }
}
