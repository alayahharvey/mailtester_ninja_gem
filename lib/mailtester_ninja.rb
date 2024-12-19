require "httparty"
require "mailtester_ninja/version"

module MailTesterNinja
  class Client
    include HTTParty

    base_uri "https://api.mailtesterninja.com"

    def initialize(api_key)
      @headers = { "Authorization" => "Bearer #{api_key}", "Content-Type" => "application/json" }
    end

    def validate_email(email)
      response = self.class.post("/validate", headers: @headers, body: { email: email }.to_json)
      parse_response(response)
    end

    private

    def parse_response(response)
      if response.success?
        response.parsed_response
      else
        raise StandardError, "Error: #{response.code} - #{response.message}"
      end
    end
  end
end
