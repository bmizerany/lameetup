module Sinatra
  module CacheControl
    def cache_control(options={})
      options[:public] ||= true
      headers['Cache-Control'] =
        options.map do |k,v|
          "#{k.to_s.tr("_", "-")}=#{v}"
        end * "; "
    end
  end
  helpers CacheControl
end
