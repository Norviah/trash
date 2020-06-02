//
//  trash.swift
//  trash
//
//  Created by norviah on 5/4/20.
//  Copyright © 2020 norviah. All rights reserved.
//

import Foundation
import PathKit

/// Deletes all of the given files to the user's trash can.
/// - Parameter files: The files to delete.
func Delete(files: [String]) {
  
  // Make sure that the user has given atleast one file to delete.
  guard files.count != 0 else {
    return;
  }
  
  // We take every given file and convert them to
  // an absolute path, then, we filter out the paths that don't exist.
  let absolute: [String] = files.map({ return Path($0).absolute() }).filter({ return $0.exists }).map(String.init);

  // Convert the array into a string that apple script
  // likes. It converts every path into the form 'the POSIX file "[path]"'.
  let files: String = "the POSIX file \"\(absolute.joined(separator: "\", the POSIX file \""))\"";

  runAppleScript(source: "tell application \"Finder\" to move {\(files)} to trash");
  
}
