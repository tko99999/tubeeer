class Blog < ApplicationRecord
	belongs_to :user
	attachment :image

    require 'rubygems'
    require 'google/apis'
    require 'trollop'

    DEVELOPER_KEY = 'AIzaSyDsho9meDxXiw2bQxgYfQD8X4jBRtlmVMQ'
    YOUTUBE_API_SERVICE_NAME = 'youtube'
    YOUTUBE_API_VERSION = 'v3'

    def get_service
	  client = Google::APIClient.new(
	    :key => DEVELOPER_KEY,
	    :authorization => nil,
	    :application_name => $PROGRAM_NAME,
	    :application_version => '1.0.0'
	  )
	  youtube = client.discovered_api(YOUTUBE_API_SERVICE_NAME, YOUTUBE_API_VERSION)

     return client, youtube
    end

end
