//
//  File.swift
//  Core
//
//  Created by partnertientm2 on 3/11/25.
//

import Foundation
import Shared

public final class FeatureRegistry {
    public private(set) var registeredHandlers: [DeepLinkHandler] = []

    public init() {}

    public func register(_ handler: DeepLinkHandler) {
        registeredHandlers.append(handler)
    }

    public func registerMany(_ handlers: [DeepLinkHandler]) {
        registeredHandlers.append(contentsOf: handlers)
    }
}
