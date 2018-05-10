package 'httpd' do
  action: install
end

file '/var/www/html/index.html' do
  content 'Hello World from apache-nttpd!'
end

service 'httpd' do
  action: start
end
