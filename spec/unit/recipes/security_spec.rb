# Cookbook Name: sonarqube-liatrio
# Spec::security
# Authors: Justin Bankes <justin@liatrio.com>
require 'spec_helper'

describe 'sonarqube-liatrio::security' do
  let(:chef_run) do
    ChefSpec::SoloRunner.new.converge(described_recipe)
  end

  before do
    Chef::EncryptedDataBagItem.stub(:load).with('sonarqube', 'cred').and_return(
      'admin_id' => 'admin',
      'admin_password' => 'admin'
    )
  end
end
