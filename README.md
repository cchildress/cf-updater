# cf-updater
Daemon to monitor the apparent public IP address of a machine and update a given CloudFlare DNS record to match.

### Runtime arguments
* `-c` / `--config` - path to the config file
* `-d` / `--debug` - enable debug logging / output
* `-f` / `--foreground` - run in the foreground instead of forking as a Daemon
* `-h` / `--help` - print help info and exit
* `-v` / `--version` - print the version number and exit

### Configuration file options
```
[default]
pid_file - Location of the pid file
log_file - Location of the log file
polling_interval - How often to refresh records and update if needed
polling_method - Whether to use an external reference or the IP of a given interface for the DNS value. Valid options are 'external' or 'interface'
polling_address - Address to poll for an IP in external polling mode
polling_interface - Interface to pull IP info from in interface polling mode

[cloudflare]
hostname - The hostname to update in CloudFlare
username - Your CloudFlare email address
auth_token - Your CloudFlare API token
```
CloudFlare has more information on the API tokens [here](https://api.cloudflare.com/).

Too many 429 errors means you need to relax a little with your polling_interval.
