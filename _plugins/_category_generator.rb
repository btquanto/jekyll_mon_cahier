module Jekyll
  class CategoryPage < Page
    def initialize(site, base, dir, category)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'category-index.html')
      self.data['category'] = category

      category_title_prefix = site.config['category_title_prefix'] || 'Category: '
      site.config['is_custom_plugin_enabled'] = true
      self.data['title'] = "#{category_title_prefix}#{category}"
    end
  end

  class CategoryPageGenerator < Generator
    safe true

    def generate(site)
      if site.layouts.key? 'category-index'
        dir = site.config['category_dir'] || 'category'
        site.categories.each_key do |category|
          gen_dir = File.join(dir, category.gsub(" ", "-").downcase)
          site.pages << CategoryPage.new(site, site.source, gen_dir, category)
        end
      end
    end
  end
end