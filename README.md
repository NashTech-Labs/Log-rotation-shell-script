# Log Rotation and Cleanup Script

## Overview

This Bash script is designed to automate the process of log file management by deleting log files older than a specified number of days. The script utilizes the `find` command to identify log files that exceed the defined age threshold and removes them, thereby ensuring the efficient use of disk space.

## Usage

### Prerequisites

- Bash shell environment
- Proper permissions to execute the script

### Configuration

1. Set the `log_directory` variable to the path of the directory containing your log files.

    ```bash
    log_directory="/path/to/log/directory"
    ```

2. Adjust the `days_to_keep` variable to specify the number of days for which log files should be retained. Log files older than this threshold will be deleted.

    ```bash
    days_to_keep=2
    ```

### Execution

Make the script executable:

```bash
chmod +x log_cleanup_script.sh
```

### Notification

Upon completion of the log cleanup process, the script provides a notification message:

```bash
Log files older than $days_to_keep days have been deleted.
```
