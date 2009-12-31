# -*- coding: utf-8 -*-
class Plan < ActiveRecord::Base
  def self.add_plans
    start_time = Time.local(0,0,0,31,12,2009,0,0,false,'Asia/Tokyo')#Time.utc(2008, 12, 31, 12, 0, 'Asia/Tokyo')#08/12/31 12:00

    0.upto(48) do |i|
      content = "未定"
      time = start_time + i.hours
      Plan.create(:content=> content, :start=> time)
    end
  end
end
