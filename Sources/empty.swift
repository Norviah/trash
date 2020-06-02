//
//  empty.swift
//  trash
//
//  Created by norviah on 5/4/20.
//  Copyright © 2020 norviah. All rights reserved.
//

import Foundation

/// Empties the user's trash can.
/// - Parameter prompt: Determines if the user wants to skip any confirmation prompts.
func Empty(prompt: Bool) {

  // If the user hadn't provide the yes flag,
  // we ask them to confirm before we continue.
  if (!prompt) {

    print("Are you sure you want to empty out your trash can? [y/yes]\n> ", terminator: "");

    // Make sure that the user agreed.
    let response = ["y", "yes"].contains(readLine()?.lowercased());

    // If they haven't, we stop.
    if (!response) {
      return;
    }

  }

  runAppleScript(source: "tell application \"Finder\" to empty trash");

}
