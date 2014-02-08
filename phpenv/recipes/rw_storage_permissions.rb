node[:deploy].each do |application, deploy|
	directory "#{deploy[:deploy_to]}/current/app/storage" do
	  owner "deploy"
	  group "apache"
	  mode 777
	  recursive true
	  action :create
	end
end