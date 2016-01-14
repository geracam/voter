class Candidate < ActiveRecord::Base
  validates :name, presence: true

  def self.get_votes(id)
    @votes = Candidate.where(["id = ?", id]).select("tally").first
  end

end
