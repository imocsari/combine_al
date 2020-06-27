class ConferencesController < ApplicationController
  before_action :set_conference, only: [:show]

  def show
    @times_of_speak = @conference.audios.group(:user_id).count
    @avarage_participation =  get_durations(@conference)
    @most_and_less_contributors = most_and_less_contributors(@conference)
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conference
      @conference = Conference.find(params[:id])
    end

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
