# Matchers for chefspec 3

if defined?(ChefSpec)
  def create_rackspace_yum_repository(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:rackspace_yum_repository, :create, resource_name)
  end

  def add_rackspace_yum_repository(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:rackspace_yum_repository, :add, resource_name)
  end

  def delete_rackspace_yum_repository(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:rackspace_yum_repository, :delete, resource_name)
  end

  def remove_rackspace_yum_repository(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:rackspace_yum_repository, :remove, resource_name)
  end

  def create_rackspace_yum_globalconfig(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:rackspace_yum_globalconfig, :create, resource_name)
  end

  def delete_rackspace_yum_globalconfig(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:rackspace_yum_globalconfig, :delete, resource_name)
  end
end
