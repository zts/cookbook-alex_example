use_inline_resources

action :create do
  directory "/tmp/dir_#{new_resource.name}" do
    # If the following line is uncommented, the Chef run will fail
    # with a ResourceNotFound exception as the specified resource is
    # not visible in this scope.
    # notifies :log, "log[notified by directory /tmp/dir_foo]"
    action :create
  end
end

action :delete do
# nothing required
end

