action :create do
  directory "/tmp/dir_#{new_resource.name}" do
    notifies :write, "log[notified by directory[/tmp/dir_bar]]", :immediately
    action :create
  end
end

action :delete do
# nothing required
end
