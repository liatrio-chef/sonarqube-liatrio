require 'minitest/spec'

def service_is_listening( port, service )
  assert system "sudo netstat -lp --numeric-ports | grep \":#{port}.*LISTEN.*#{service}\""
end

def web_check_match( url, check )
  assert system "wget -q -O - #{url} | grep '#{check}'"
end

describe_recipe 'sonarqube::default' do

  it "listens for java on tcp port 9000" do
    service_is_listening("9000", "java")
  end

  it 'must match the check SonarQube' do
    web_check_match("http://localhost:9000/", "SonarQube")
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
