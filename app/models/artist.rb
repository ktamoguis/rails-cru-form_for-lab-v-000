class Artist < ActiveRecord::Base
  has_many :songs

  def show
  end
end
