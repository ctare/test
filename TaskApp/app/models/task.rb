# -*- coding: utf-8 -*-
class Task < ActiveRecord::Base
  belongs_to :project
  validates :title , presence: true
  scope :unfinished, -> {where(done: true)}

end
