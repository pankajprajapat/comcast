module Blending
  extend ActiveSupport::Concern

  included do
    after_save -> { make_juice }
  end

  def make_juice
    if self.class.name == "Apple"
      puts "inside make_juice"
      # run this method after changes in apple
    end
  end
end
