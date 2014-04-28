# Personal computer configuration.

First install Homebrew. Then use Homebrew to install ansible.

    $ brew install ansible

Run the bootstrap script:

    $ ./bootstrap.sh

The script `configure` is now in `/usr/local/bin` and you can just
execute that script:

    $ configure

It's a shortcut to this command, as it would be run from the
configuration directory:

    ansible-playbook install.yml -K

If it's your first time, go brew some coffee or tea because this will
take some time building packages.
