require 'chefspec'

describe 'my-test::default' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'my-test::default' }
  it 'should do something' do
    pending 'Your recipe examples go here.'
  end
end
