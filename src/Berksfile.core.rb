def workstations_cookbook(type, name)
  cookbook "workstations_#{name}", path: "#{File.dirname(__FILE__)}/#{type}/#{name}/cookbooks/workstations_#{name}"
end

def cookbook(name)
  cookbook "#{name}", github: '/chef', rel: "cookbooks/#{name}", branch: '0.2.2'
end
