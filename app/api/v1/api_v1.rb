require 'doorkeeper/grape/helpers'

module V1
  class APIV1 < Grape::API
    helpers Doorkeeper::Grape::Helpers

  end
end