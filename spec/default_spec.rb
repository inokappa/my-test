require 'chefspec'

describe 'my-test::default' do
	let (:chef_run) { ChefSpec::ChefRunner.new.converge 'my-test::default' }
	it 'should install tmux' do
		expect(chef_run).to install_package 'tmux'
	end
end
