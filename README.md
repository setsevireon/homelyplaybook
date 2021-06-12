# My home desktop bootstrap (Ansible playbook)

# Requirements

* Debian Bullseye
* Python3
* Ansible (ansible.posix, comunity.general)
* a [vars.yaml](#variables)

# Variables

There is a vars.yaml file missing. That is because the variables in it are
sensitive personal data. So, I have a untracked, ansible-vault encrypted var
file.

Here is an example:

```yaml
wifi_net_dev: wlan0
wifi_ssid: SafeWiFiNetwork
wifi_psk: Uncr4ck4bl3P455w0rd
wifi_dhcp: false
wifi_addr: 192.168.0.42/24
wifi_gateway: 192.168.0.1
wifi_dns: 192.168.0.1
```
