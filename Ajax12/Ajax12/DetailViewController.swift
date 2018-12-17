//
//  DetailViewController.swift
//  Ajax12
//
//  Created by Kenn Villegas on 12/16/18.
//  Copyright © 2018 Kenn Villegas. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

  @IBOutlet weak var detailDescriptionLabel: UILabel!


  func configureView() {
    // Update the user interface for the detail item.
    if let detail = detailItem {
        if let label = detailDescriptionLabel {
            label.text = detail.description
        }
    }
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    configureView()
  }

  var detailItem: NSDate? {
    didSet {
        // Update the view.
        configureView()
    }
  }


}

