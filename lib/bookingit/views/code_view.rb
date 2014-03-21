module Bookingit
  module Views
    class CodeView < BaseView
      self.template_name = 'block_code.html'

      attr_reader :code, :filename, :css_class

      def initialize(code, filename, language)
        @code = CGI.escapeHTML(code)
        @filename = String(filename).strip == '' ? nil : filename.strip
        @css_class = language ? "language-#{language}" : ""
      end
    end
  end
end
