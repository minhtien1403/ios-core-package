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
        Log.context()
        handlers.append(handler)
    }

    public func resolveViewController(for link: DeepLink) -> UIViewController? {
        Log.context()
        for handler in handlers {
            if handler.canHandle(link) {
                Log.context()
                return handler.viewController(for: link)
            }
        }
        return nil
    }
}
