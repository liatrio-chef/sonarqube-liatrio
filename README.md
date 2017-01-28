sonarqube-liatrio Cookbook
========================
A wrapper cookbook that installs and configures sonarqube. Berkshelf is used to satisfy cookbook dependencies with Vagrant.

Requirements
------------
Ensure the ChefDK is installed from https://downloads.chef.io/chef-dk/

Ensure the vagrant-berkshelf plugin is installed: `vagrant plugin install vagrant-berkshelf`

Usage
-----
#### sonarqube-liatrio::default
`vagrant up`

Browse to http://localhost:19000/

or

Just include `sonarqube-liatrio` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[sonarqube-liatrio]"
  ]
}
```

License and Authors
-------------------
Authors:
* drew@liatrio.com
* eddieb@liatrio.com
* justin@liatrio.com
* mattd@liatrio.com
