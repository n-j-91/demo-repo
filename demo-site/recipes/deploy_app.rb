#Author Nayanajith Chandradasa
#This receipe will do the the code deployment for demo-site

release_dir = node['demo_site']['release_home']
build = node['demo_site']['build_loc']+"/"+node['demo_site']['build_name']

bash 'deploy_code' do
    cwd "/tmp"
    user "/root"
    code <<-EOH
    deploymentTime=$(date +"%Y%m%d%H%M%S")
    mkdir -p #{release_dir}/$deploymentTime
    aws s3 cp #{build} #{release_dir}/$deploymentTime/
    EOH
    action :run
end
