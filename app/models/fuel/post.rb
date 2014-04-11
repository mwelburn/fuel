module Fuel
  class Post < ActiveRecord::Base
    extend FriendlyId
    friendly_id :title, use: :slugged

    # attr_accessible :tag, :author, :content, :title, :slug, :published

    validates_presence_of :title, :content, :author
    paginates_per 5

    def should_generate_new_friendly_id?
      new_record? #Don't generate new id on edit
    end

    def save_as_draft
      self.published = false
    end

  end
end