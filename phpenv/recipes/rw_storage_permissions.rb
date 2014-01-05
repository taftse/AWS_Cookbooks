node[:deploy].each do |application, deploy|
  app_root = "#{deploy[:deploy_to]}/current/app/storage"
  execute "chmod -R g+rw #{app_root}" do
  end
end