#Author Nayanajith Chandradasa
#This receipe will configure read access to demo-site-deployments folder in s3

directory '/root/.aws' do
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end

template '/root/.aws/config' do
    source 'aws.config.erb'
    owner 'root'
    group 'root'
    mode '0600'
end

template '/root/.aws/credentials' do
    source 'aws.credentials.erb'
    owner 'root'
    group 'root'
    mode '0600'
end