//
//  DimmingPresentationController.swift
//  StoreSearch
//
//  Created by Melanie Kramer on 2/26/21.
//  Copyright © 2021 Melanie Kramer. All rights reserved.
//

import UIKit

class DimmingPresentationController: UIPresentationController {
    override var shouldRemovePresentersView: Bool {
        return false
    }
    
    lazy var dimmingView = GradientView(frame: CGRect.zero)
    
    override func presentationTransitionWillBegin() {
        dimmingView.frame = containerView!.bounds
        containerView!.insertSubview(dimmingView, at: 0)
        
        dimmingView.alpha = 0
        if let coordinator =
            presentedViewController.transitionCoordinator {
            coordinator.animate(alongsideTransition: { _ in
                self.dimmingView.alpha = 1
            }, completion: nil)
        }
    }
    
    override func dismissalTransitionWillBegin() {
            if let coordinator =
                presentedViewController.transitionCoordinator {
                coordinator.animate(alongsideTransition: { _ in
                    self.dimmingView.alpha = 0
                }, completion: nil)
        }
    }
}
