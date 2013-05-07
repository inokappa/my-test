require 'chefspec'

describe 'my-test::default' do
	let (:chef_run) { ChefSpec::ChefRunner.new.converge 'my-test::default' }
	%w{httpd tmux vim php}.each do |packages|
		it 'should install packages' do
			expect(chef_run).to install_package packages
		end
	end
	it 'should create /tmp/hoge' do
		expect(chef_run).to create_cookbook_file '/tmp/hoge'
		file = chef_run.cookbook_file('/tmp/hoge')
		expect(file.mode).to eq "00644"
		expect(file).to be_owned_by('root','root')
	end	
end
