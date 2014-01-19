directory "#{deploy[:deploy_to]}/current/app/storage" do
  owner "root"
  group "root"
  mode 0755
  action :create
end