# virtualboxbackup

<h4 align="center">VirtualBoxBackup is a script to automate the backups of your VirtualBox virtual machines.</h4>

&nbsp;

<div align="center">

<a href="./LICENSE">
	<img alt="License: MIT" src="https://img.shields.io/badge/MIT-License-yellow.svg">
</a>
<a href="./CODE_OF_CONDUCT.md">
	<img alt="Contributor covenant: 2.1" src="https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg">
</a>
<a href="https://semver.org/">
	<img alt="Semantic Versioning: 2.0.0" src="https://img.shields.io/badge/Semantic--Versioning-2.0.0-a05f79?logo=semantic-release&logoColor=f97ff0">
</a>

<a href="./issues/new/choose">Report Bug</a>
·
<a href="./issues/new/choose">Request Feature</a>

<a href="https://twitter.com/intent/tweet?text=👋%20Check%20this%20amazing%20repo%20https://github.com/mauroalderete/virtualboxbackup,%20created%20by%20@_mauroalderete%0A%0A%bash%20%opensource%20%23virtualbox%20%23devtools">
	<img src="https://img.shields.io/twitter/url?label=Share%20on%20Twitter&style=social&url=https%3A%2F%2Fgithub.com%2Fatapas%2Fmodel-repo">
</a>

</div>

&nbsp;
## Introducing

Allows you schedule periodical backups of your virtual machine created for Virtualbox

- Manual backup of any virtual machine from Virtualbox
- Schedule periodical backups with cron
- Unschedule periodical backups with cron
- List all periodical backups registered

## Requirements

The script requires VBoxManage to be installed and in the system's PATH.

## Installation

1. Clone the repository or download the script
```bash
git clone https://github.com/mauroalderete/virtualboxbackup
```

2. Enter repository folder
```bash
cd virtualboxbackup
```

3. Make the script `install.sh` executable
```bash
chmod +x install.sh
```

4. Run the script `install.sh`. Requires root permissions.
```bash
sudo bash install.sh
```

## Usage

You can use the script with the following commands:

- `virtualboxbackup backup -j <job_name> -m <machine_name> -d <directory>`: Execute a backup of a virtual machine. All the options are required.
- `virtualboxbackup schedule -j <job_name> -m <machine_name> -d <directory> -p <periodicity>`: Schedule a backup job. All the options are required.
- `virtualboxbackup unschedule -j <job_name>`: Unschedule a backup job. The option `-j` is required.
- `virtualboxbackup list`: List all the scheduled backup jobs.
- `virtualboxbackup help`: Show a help message.

## Notifications

By default, if a backup job fails, `cron` will try to send an email to the local user account with any output produced during the execution. To read these emails, you can use a command-line email client like `mail`.

## Disclaimer

The script only executes the backups if the virtual machine is turned off. Make sure to turn off your virtual machines before the backup job starts.

## Code of conduct

`/CODE_OF_CONDUCT.md`

This code is based on the covenant code. He is only required to specify an email address to the community to send his messages. Now, this email is alderete.mauro@gmail.com.

## License

This script is available as MIT LICENSE. You feel free to use it and modify it.
