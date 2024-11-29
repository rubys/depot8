class AtcController < ApplicationController
  def index
    @config = YAML.load_file(Rails.root + "config/atc.yml")
  end
end
