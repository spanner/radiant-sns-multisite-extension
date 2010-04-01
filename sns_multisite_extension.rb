class SnsMultisiteExtension < Radiant::Extension
  version "0.1"
  description "Scopes javascripts and stylesheets to sites. Requires the rather experimental sites extension."
  url "http//github.com/netzpirat/radiant-sns-multisite-extension"
  
  extension_config do |config|
    config.extension 'sns'
    config.extension 'sites'
  end
  
  def activate
    TextAsset.send :has_site
  end
  
end