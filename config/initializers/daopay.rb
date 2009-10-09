DAOPAY_APP_CONFIG = YAML::load(ERB.new((IO.read("#{RAILS_ROOT}/config/daopay.yml"))).result)[RAILS_ENV]
#DAOPAY_APP_CONFIG = YAML.load_file("#{RAILS_ROOT}/config/daopay.yml")[RAILS_ENV]

