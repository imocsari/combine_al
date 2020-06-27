class Conference < ApplicationRecord
  has_many :audios
  has_many :users


  def get_durations(conference)
    user_avereges = {}
    audio_group_by_user(@conference).each do |key, value|
      user_avereges[key] = value.pluck(:duration).inject{ |sum, el| sum + el } / value.size
    end
    user_avereges
  end

  def most_and_less_contributors(conference)
    user_most_and_less = {}
    audio_group_by_user(@conference).each do |key, value|
      user_most_and_less[key] = value.pluck(:duration).inject{ |sum, el| sum + el }
    end
    largest_and_smallest_hash_key(user_most_and_less)
  end

  def audio_group_by_user(conference)
    Audio.where(conference_id: conference.id).to_a.group_by(&:user_id)
  end

  def largest_and_smallest_hash_key(hash)
      hash.minmax_by{|k,v| v}
  end
end
