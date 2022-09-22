#### Using the vm provided by vagrant

##### Start the vm
```sh
vagrant up
```
##### get the host ip
```sh
ansible all --list-hosts
```
##### Set up SSH connection by adding a public key to all hosts
- Method one:
    ```shell
    ssh-copy-id -i ~/.ssh/your_key.pub user@X.X.X.X
    ```
    If password authentication is not enabled on the server, enable it in ` /etc/ssh/sshd_config` 
    ```shell
    PasswordAuthentication yes

    ```
    Then restart the service
    ```
    service sshd restart
    ```
- Method Two, paste your public key manually into `~/.ssh/authorized_keys` (use `vagrant ssh` to connect to the server)
---

##### Ping hosts to check they are reachable
```shell
ansible all -m ping
```