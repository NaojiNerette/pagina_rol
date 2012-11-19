# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
PaginaRol::Application.initialize!

#Configuracion HAML
#config.gem "haml"
Haml::Template.options[:format] = :html5

# Formateo de fechas
Time::DATE_FORMATS[:formateo_corto] = "%d-%m-%Y %H:%M:%S"
