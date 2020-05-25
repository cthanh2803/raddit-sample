# frozen_string_literal: true

class Link < ApplicationRecord
  acts_as_votable
  belongs_to :user
end
