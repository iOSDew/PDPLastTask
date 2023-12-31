//
//  Post.swift
//  PDPLastTask
//
//  Created by Khojimurod Sultonov on 31.12.23.
//

import Foundation
import UIKit

class Post{
    var contentImage: UIImage?
    var label: String? = ""
    init(contentImage: UIImage? = nil, label: String? = nil) {
        self.contentImage = contentImage
        self.label = label
    }
}
