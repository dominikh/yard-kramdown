module YARD
  module Templates
    module Helpers
      module MarkupHelper
        MARKUP_PROVIDERS[:kramdown] =
          [{:lib => :kramdown, :const => "Kramdown::Document"}]

        MARKUP_EXTENSIONS[:kramdown] = ['.kmd']
      end

      module HtmlHelper
        def html_markup_kramdown(text)
          markup_class(:kramdown).new(text).to_html
        end
      end
    end
  end
end
