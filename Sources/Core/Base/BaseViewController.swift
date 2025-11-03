//
//  File.swift
//  Core
//
//  Created by partnertientm2 on 3/11/25.
//

import UIKit
import Combine

open class BaseViewController<ViewModelType>: UIViewController {
    
    // MARK: - Properties
    public let viewModel: ViewModelType
    public var cancellables = Set<AnyCancellable>()
    
    // MARK: - Init
    public init(viewModel: ViewModelType) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    open override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        bindViewModel()
    }
    
    // MARK: - Override points
    /// Override để setup giao diện
    open func setupView() {
        view.backgroundColor = .systemBackground
    }
    
    /// Override để bind ViewModel (Combine)
    open func bindViewModel() {
        // subclasses implement
    }
    
    /// Override để hiển thị loading (nếu cần)
    open func showLoading(_ isLoading: Bool) {}
    
    /// Override để hiển thị error (nếu có)
    open func showError(_ message: String) {}
}
