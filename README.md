# concourse-worker-vagrant

A standalone worker for Concourse CI running with Vagrant.

## Issues, Bugs, Feature Requests

Any bugs and feature requests should be reported on the GitHub issue tracker:

https://github.com/amclain/concourse-worker-vagrant/issues


**Pull requests are preferred via GitHub.**

Mercurial users can use [Hg-Git](http://hg-git.github.io/) to interact with
GitHub repositories.

## Prerequisites

* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* [Vagrant](https://www.vagrantup.com/downloads.html)
* [Ansible](http://docs.ansible.com/ansible/intro_installation.html#tarballs-of-tagged-releases)

This guide assumes you have a working knowledge of configuring [Concourse CI](https://concourse.ci).

## Configuration

Your installation-specific settings are stored in `ansible/group_vars/config.yml`.
This file needs to be configured before the VM can be provisioned. A sample
template is provided as a starting point:

```text
cp ansible/group_vars/config.sample.yml ansible/group_vars/config.yml
```

The settings in this file should look familiar after having configured your
Concourse CI web server.

>Consult the [Concourse CI installation documentation](https://concourse.ci/binaries.html)
for information about the Concourse CI settings.

## Running

The worker will automatically start after the VM boots:

```text
vagrant up
```

The woker process will then connect to your TSA server. To monitor the worker,
run the command:

```text
make attach
```

This will connect to the running worker via a dtach session. To break out of the
session and leave the worker running, use the key sequence `CTRL + \`. If the
worker is terminated or crashes, running `make attach` will spawn a new worker
process.
