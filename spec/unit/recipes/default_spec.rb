# Cookbook Name: sonarqube-liatrio
# Spec::default
# Author: Shane MacBride <shanem@liatrio.com>

require 'spec_helper'

describe 'sonarqube-liatrio::default' do
  let(:chef_run) do
    ChefSpec::SoloRunner.new.converge(described_recipe)
  end

  it 'includes java' do
    expect(chef_run).to include_recipe('java')
  end

  it 'includes sonarqube' do
    expect(chef_run).to include_recipe('sonarqube')
  end
end
