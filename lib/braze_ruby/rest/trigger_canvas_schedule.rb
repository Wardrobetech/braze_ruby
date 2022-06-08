# frozen_string_literal: true

module BrazeRuby
  module REST
    class TriggerCanvasSchedule < Base
      attr_reader :params

      def initialize(api_key, braze_url, options, **params)
        @params = params
        super api_key, braze_url, options
      end

      def perform
        http.post("/canvas/trigger/schedule/create", @params)
      end
    end
  end
end