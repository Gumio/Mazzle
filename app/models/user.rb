class User < ApplicationRecord
  has_many :favorites

  def kinds=(value)
    str = ''
    value.each do |val|
    str += val.to_s + ','
    end

    rslt = str.empty? ? nil : (',' + str)
    write_attribute(:kinds, rslt)
  end

  def facilities
    read_attribute(:kinds).to_s.split(';')
  end
end
