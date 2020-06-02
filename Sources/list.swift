//
//  list.swift
//  trash
//
//  Created by norviah on 5/4/20.
//  Copyright © 2020 norviah. All rights reserved.
//

import Foundation

/// Lists all items within the user's trash can with 'ls'.
func List() {

  // Get the absolute path for the user's trash can.
  let path = NSString(string: "~/.Trash").expandingTildeInPath;

  shell("ls", "-a", path);
  
}
