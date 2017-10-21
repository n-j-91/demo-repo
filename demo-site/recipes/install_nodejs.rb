#Author Nayanajith Chandradasa
#This receipe will do the pre-deployment tasks for demo-site

execute 'get_nodejs' do
        cwd "/tmp"
        user "root"
        command 'curl --silent --location https://rpm.nodesource.com/setup_6.x | sudo bash -'
        action :run
end

execute 'install_nodejs' do
    cwd "/tmp"
    user "root"
    command 'yum -y install nodejs'
    action :run
end