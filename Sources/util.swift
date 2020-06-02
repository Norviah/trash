//
//  util.swift
//  trash
//
//  Created by norviah on 5/4/20.
//  Copyright © 2020 norviah. All rights reserved.
//

import Foundation

/// Executes the given string as apple script.
/// - Parameter source: The script to execute.
/// - Returns: The result of the execution.
@discardableResult
func runAppleScript(source: String) -> String? {
  return NSAppleScript(source: source)?.executeAndReturnError(nil).stringValue;
}

/// Executes the given string as a shell script.
/// - Parameter args: The given string to execute, with each argument as it's own parameter.
/// - Returns: The response from the script.
@discardableResult
func shell(_ args: String...) -> Int32 {
  
  let task = Process();
  task.launchPath = "/usr/bin/env";
  task.arguments = args;
  task.launch();
  task.waitUntilExit();
  return task.terminationStatus;
  
}
