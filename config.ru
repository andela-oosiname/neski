APP_ROOT = __dir__
require_relative "../neski/config/application.rb"
use Rack::Reloader, 0
use Rack::MethodOverride
NeskiApplication = Neski::Application.new
require_relative "./config/routes.rb"
use Rack::Static, urls: ["/css"], root: "app/assets"
run NeskiApplication
