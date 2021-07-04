# Connecting the dots

My home desktop bootstrap using Ansible.

This installs firmware, my most used software, my dotfiles, configures my
network, programming languages environment and some development tools.

# Requirements

* Debian Bullseye
* Python3
* Ansible (ansible.posix, community.general)
* a [vault.yaml](#vault-variables) file

# Vault variables

There is a vault.yaml file missing. That is because the variables in it are
sensitive personal data. So, I have a untracked, ansible-vault encrypted var
file.

Here is an example:

```yaml
vault_wifi_net_dev: wlan0
vault_wifi_ssid: SafeWiFiNetwork
vault_wifi_psk: Uncr4ck4bl3P455w0rd
vault_wifi_dhcp: false
vault_wifi_addr: 192.168.0.42/24
vault_wifi_gateway: 192.168.0.1
vault_wifi_dns: 192.168.0.1
```

# Running

```
ansible-playbook --ask-vault-pass -i hosts site.yaml
```
