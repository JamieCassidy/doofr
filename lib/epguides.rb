require 'httparty'

class EpGuides
  include HTTParty
  base_uri 'epguides.frecar.no'

  def find(id)
    url = '/show/#{ id }'
    self.class.get(url)
  end
end
