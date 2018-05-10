package 'apache2' do
  action:install
end

file '/var/www/html/index.html' do
  content 'Hello World from apache-httpd!'
end

service 'apache2' do
  supports status: true
  action [ :enable, :start ]
end
