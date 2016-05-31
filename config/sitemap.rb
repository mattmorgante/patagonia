# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.patagoniaonabudget.com"
SitemapGenerator::Sitemap.sitemaps_host = "http://warm-tor-51266.herokuapp.com/"
SitemapGenerator::Sitemap.public_path = 'tmp/'
SitemapGenerator::Sitemap.sitemaps_path = 'sitemaps/'

SitemapGenerator::Sitemap.create do

  add '/subscribers', :changefreq => 'weekly'
  add '/pages/show', :changefreq => 'weekly'
  add '/articles/index', :changefreq => 'weekly'
  add '/articles/hitchhiking', :changefreq => 'weekly'
  add '/articles/accommodation', :changefreq => 'weekly'
  add '/articles/activities', :changefreq => 'weekly'

  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  #Add '/articles'
  #
  # add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  #Add all articles:
  #
  # Article.find_each do |article|
  #   add article_path(article), :lastmod => article.updated_at
  # end
end

SitemapGenerator::Sitemap.ping_search_engines
