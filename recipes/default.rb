#
# Cookbook Name:: alex_example
# Recipe:: default
#
# Copyright (C) 2014 Zachary Stevens
# 
# All rights reserved - Do Not Redistribute
#

log "notified by alex_example_inline[foo]" do
  level :warn
  action :nothing
end

log "notified by alex_example_outline[bar]" do
  level :warn
  action :nothing
end

log "notified by directory[/tmp/dir_bar]" do
  level :warn
  action :nothing
end

alex_example_inline "foo" do
  action :create
  notifies :write, "log[notified by alex_example_inline[foo]]"
end

alex_example_outline "bar" do
  action :create
  notifies :write, "log[notified by alex_example_outline[bar]]"
end
