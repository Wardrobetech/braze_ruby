module BrazeRuby
  module REST
    class SendMessages < Base
      attr_reader :api_key, :messages, :external_user_ids, :segment_id

      def initialize(api_key, braze_url, messages: [], external_user_ids: [], segment_id: nil)
        @api_key = api_key
        @messages = messages
        @external_user_ids = external_user_ids
        @segment_id = segment_id
        super braze_url
      end

      def perform
        http.post '/messages/send', {
          'api_key':           api_key,
          'messages':          messages,
          'external_user_ids': external_user_ids,
          'segment_id':       [segment_id].compact
        }
      end
    end
  end
end
