#Author Nayanajith Chandradasa
#This receipe will install the demo-site service as a daemon. init.d script is start-damo

template '/etc/init.d/start-demo' do
    source 'init.d.start-demo.erb'
    owner 'root'
    group 'root'
    mode '0755'
end

execute 'enable_daemon' do
    cwd "/tmp"
    user "root"
    command 'chkconfig --level 345 start-demo'
    action :run
end