//
//  File.swift
//  Core
//
//  Created by partnertientm2 on 3/11/25.
//

import UIKit
import Shared

public final class DeepLinkRouter {
    private var handlers: [DeepLinkHandler] = []
    
    public init() {}

    public func register(_ handler: DeepLinkHandler) {
        handlers.append(handler)
    }

    public func resolveViewController(for link: DeepLink) -> UIViewController? {
        for handler in handlers {
            if handler.canHandle(link) {
                return handler.viewController(for: link)
            }
        }
        return nil
    }
}
