#
# Cookbook Name:: my-test
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#
%w{httpd tmux php} do |packages|
	package packages do
		action :install
end

cookbook_file "/tmp/hoge" do
	source "hoge"
	mode "00644"
	owner "root"
	group "root"
	action :create
end
