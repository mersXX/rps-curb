# frozen_string_literal: true

class ResponseFetcher
  URL = 'https://5eddt4q9dk.execute-api.us-east-1.amazonaws.com/rps-stage/throw'
  TYPES = %w[rock paper scissors].freeze

  def call
    valid?(response) ? JSON.parse(response['body']) : TYPES.sample
  end

  private

  def response
    HTTParty.get(URL)
  end

  def valid?(curb_response)
    return false if curb_response.blank? || curb_response['statusCode'] != 200
  end
end
