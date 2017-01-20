module Jekyll
  class TagPage < Page
    def initialize(site, base, dir, tag)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'tag-index.html')
      self.data['tag'] = tag

      tag_title_prefix = site.config['tag_title_prefix'] || 'Tag: '
      site.config['is_custom_plugin_enabled'] = true
      self.data['title'] = "#{tag_title_prefix}#{tag}"
    end
  end

  class TagPageGenerator < Generator
    safe true

    def generate(site)
      if site.layouts.key? 'tag-index'
        dir = site.config['tag_dir'] || 'tag'
        site.tags.each_key do |tag|
          gen_dir = File.join(dir, tag.gsub(" ", "-").downcase)
          site.pages << TagPage.new(site, site.source, gen_dir, tag)
        end
      end
    end
  end
end