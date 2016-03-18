require 'minitest/spec'

describe_recipe 'sonarqube::default' do

  it "listens for imaps using sonarqube on tcp port 9000" do
    service_is_listening("9000", "sonarqube")
  end

  it 'must match the check SonarQube' do
    web_check_match("http://127.0.0.1:19000/", "SonarQube")
  end

  it 'must have created /opt/sonarqube folder' do
    directory("/opt/sonarqube")
  end

  it "boots on startup" do
    service("sonarqube").must_be_enabled
  end

  it "runs as a daemon" do
    service("sonarqube").must_be_enabled
  end

end
