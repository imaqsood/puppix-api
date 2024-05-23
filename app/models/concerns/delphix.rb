require 'rest-client'

class Delphix
  attr_reader :node, :config

  class << self
    def config
      @config ||= YAML.safe_load_file("#{Rails.root}/config/delphix.yml", symbolize_names: true)
    end
  end

  def initialize(clone_node)
    @config = self.class.config
    @node = clone_node
  end

  def clone_db
    ResetClient.post( config[:delphix_engine_url],
      {
        # clone db params
      }
    )
  end
end
