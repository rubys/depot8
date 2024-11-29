class AtcController < ApplicationController
  def index
    config_file = Rails.root + "config/atc.yml"
    if File.exist? config_file
      @config = YAML.load_file(Rails.root + "config/atc.yml")
    else
      redirect_to products_url
    end
  end
end
