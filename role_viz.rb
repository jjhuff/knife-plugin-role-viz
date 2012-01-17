
module RoleVizPlugins
  class RoleViz < Chef::Knife
    banner "knife role viz (options)"

    deps do
      require 'chef/role'
    end

    def run
      roles = Chef::Role.list(true)
      puts 'digraph chef_roles {'
      roles.each_value do |r|
        filtered_r = "#{r.name.gsub(':', '_').gsub('-', '_').gsub('.', '_')}"
        r.run_list.role_names.each do |i|
            filtered_i = "#{i.gsub(':', '_').gsub('-', '_').gsub('.', '_')}"
            puts "  #{filtered_r} -> #{filtered_i};"
        end
        #r.run_list.recipe_names.each do |i|
        #    filtered_i = "#{i.gsub(':', '_').gsub('-', '_').gsub('.', '_')}"
        #    puts "  #{filtered_r} -> #{filtered_i};"
        #end
      end
      puts '}'
    end

  end
end
