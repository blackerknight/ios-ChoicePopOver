//
//  ViewController + popup.swift
//  ios-ChoicePopOver
//
//  Created by eduardo mancilla on 9/20/19.
//  Copyright © 2019 eduardo mancilla. All rights reserved.
//

import UIKit

extension ViewController {
    
    func showPopup(_ controller: UIViewController, sourceView: UIView, width: Int, height: Int) {
        controller.preferredContentSize = CGSize(width: width, height: height)
        let presentationController = AlwaysPresentAsPopover.configurePresentation(forController: controller)
        presentationController.sourceView = sourceView
        presentationController.sourceRect = sourceView.bounds
        presentationController.permittedArrowDirections = [.down, .up]
        self.present(controller, animated: true)
    }
    
}
