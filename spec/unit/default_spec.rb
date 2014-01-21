require 'spec_helper'

describe 'rackspace_yum::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'creates rackspace_yum_globalconfig[/etc/yum.conf]' do
    expect(chef_run).to create_rackspace_yum_globalconfig('/etc/yum.conf')
  end

end
