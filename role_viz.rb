
module RoleVizPlugins
  class RoleViz < Chef::Knife
    banner "knife role viz (options)"

    deps do
      require 'chef/role'
    end

    def run
      roles = Chef::Role.list(true)
      puts 'digraph chef_roles {'
#      roles.each_value do |r|
#        puts "  #{r.name};"
#      end
      roles.each_value do |r|
        r.run_list.role_names.each do |i|
            puts "  #{r.name} -> #{i};"
        end
#        r.run_list.recipe_names.each do |i|
#            puts "  #{r.name} -> #{i.gsub(':', '_').gsub('-', '_')};"
#        end
      end
      puts '}'
    end

  end
end
