#### Using the Vagrant file

- You must have an rsa key named `id_rsa`
```
ls ~/.ssh
```
- Get and check host ip, make sure it match the ip defined in the Vagrantfile
```sh
ansible all --list-hosts
```
- Start the vm
```sh
vagrant up
```
- Check you can ping all hosts
```sh
ansible all -m ping
```
- Ready for work !


#### sources:

- [ansible terminology- role, playbook, task...](https://stackoverflow.com/a/46105500/5374043)

## Useless :
##### Set up SSH connection by adding a public key to all hosts
- Method one:
    ```shell
    ssh-copy-id -i ~/.ssh/your_key.pub user@X.X.X.X
    ```
    If password authentication is not enabled on the server, enable it in ` /etc/ssh/sshd_config` 
    ```
    PasswordAuthentication yes
    ```
    Then restart the service
    ```
    service sshd restart
    ```
- Method Two, paste your public key manually into `~/.ssh/authorized_keys` (use `vagrant ssh` to connect to the server)
---