# simple http string match check
def web_check_match( url, check )
  assert system "wget -q --no-proxy -O - #{url} | grep '#{check}'"
end
