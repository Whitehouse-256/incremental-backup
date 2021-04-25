# incremental-backup
Bash script to create incremental backups on linux host

# Usage
`/path/to/incr_backup backup_dir meta_file tar_dir projectname`
- `backup_dir` is directory which you want to backup.
- `meta_file` is a file to store data about incremental backup. When this file is deleted (or not created yet), a full backup happens on next script run.
- `tar_dir` is a directory which will hold all the .tar.gz files with backups/snapshots.
- `projectname` is a simple identifier for particular backed up directory - it will be used in final .tar.gz filenames for clarity.

# Requirements
- `tar` - used to create archives and incremental backups
- `date` - used to create filenames including current timedate
