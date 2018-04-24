//
//  WebImage.swift
//  Kingfisher
//
//  Created by 王小涛 on 2018/4/12.
//

import Foundation
import Kingfisher
import KingfisherWebP

public func enableWebp() {
    KingfisherManager.shared.defaultOptions = [.processor(WebPProcessor.default), .cacheSerializer(WebPSerializer.default)]
}

public struct WebImage<Base> {
    public let base: Base
    public init(_ base: Base) {
        self.base = base
    }
}

public protocol WebImageCompatible {
    associatedtype WebImageCompatibleType
    var web: WebImageCompatibleType { get }
}

public extension WebImageCompatible {
    public var web: WebImage<Self> {
        get { return WebImage(self) }
    }
}

extension UIImageView: WebImageCompatible {}
extension UIButton: WebImageCompatible {}
