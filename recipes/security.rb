#
# Cookbook Name::sonarqube-liatrio
# Recipe::default
#
#
sonar_data_bag = Chef::EncryptedDataBagItem.load('jenkins', 'cred')
admin_id = sonar_data_bag['admin_id']
admin_password = sonar_data_bag['admin_password']

node.default['sonarqube']['scanner']['host']['username'] = admin_id
node.default['sonarqube']['scanner']['host']['username'] = admin_password
