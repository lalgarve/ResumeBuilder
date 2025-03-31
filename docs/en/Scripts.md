<!----------------------------------------------------------------------- 
    This is part of the documentation of the Deployo.io Resume Builder System.
    Copyright (C) 2025
    Leila Otto Algarve
    Licensed under the GNU Free Documentation License v1.3 or later.
    See LICENSE-DOCUMENTATION for details. 
------------------------------------------------------------------------>
# Scripts

## setup_resumebuilder.sh

Sets up the `PATH` and environment variables for the "ResumeBuilder" project. This script must be executed from the project's root directory.

**Usage:** source scripts/setup_resumebuilder.sh

## sed_files.sh

This script enables running a `sed` command across multiple files by combining the `find` and `sed` utilities. Files are located using a filename pattern within the specified directory and all its subdirectories. It is designed for batch file modifications, ensuring files are editable and handling errors appropriately.

**Usage:** sed_files.sh <directory> <filename_pattern> <sed_program>

**Arguments:**

1. **<directory>**: The directory where files will be searched.
2. **<filename_pattern>**: The pattern for filenames to process (e.g., "*.txt").
3. **<sed_program>**: The `sed` command to execute on each matching file.

**Example:**

To replace all occurrences of "foo" with "bar" in all `.txt` files within the `/opt/app` directory and its subdirectories:

```bash
./sed_files.sh /opt/app *.txt 's/foo/bar/g'
```

**Features:**

- Validates the correct number of arguments.
- Checks if the specified directory exists.
- Creates a temporary file for each processed file to prevent data loss in case of failure.
- Verifies write permissions for each file before attempting modifications.
- Reports errors if the `sed` command fails to execute.
- Ensures temporary files are removed, even if the script is interrupted.
