require 'rinku'

module Jekyll
  module URLify
    def urlify(input)
      Rinku.auto_link(input, mode=:all, link_attr=nil, skip_tags=nil)
    end
  end
end

Liquid::Template.register_filter(Jekyll::URLify)
