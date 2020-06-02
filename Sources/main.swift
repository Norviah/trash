//
//  main.swift
//  trash
//
//  Created by norviah on 5/4/20.
//  Copyright © 2020 norviah. All rights reserved.
//

import Foundation
import ArgumentParser

struct Trash: ParsableCommand {
  
  /// Determines if the program should recycle the user's trash can.
  @Flag(name: .shortAndLong, help: "Recycles the trash can (asks for confirmation).")
  var empty: Bool;
  
  /// Determines if the program should not prompt the user for confirmation prompts.
  @Flag(name: .shortAndLong, help: "Skips the confirmation prompt for -e.")
  var yes: Bool;

  /// Determines if the program should list all items in the user's trash can.
  @Flag(name: .shortAndLong, help: "Lists all of the items within the trash can.")
  var list: Bool;
  
  /// The given files to delete.
  @Argument(help: "The given files to delete.")
  var files: [String];

  /// The logic for this command.
  func run() {
    
    Delete(files: files);
    
    // Handle flags.
    
    if (empty) {
      Empty(prompt: yes);
    }
    
    if (list) {
      List();
    }
    
  }
  
}

Trash.main()
