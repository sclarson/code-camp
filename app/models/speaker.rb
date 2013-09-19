class Speaker < ActiveRecord::Base
  validates_presence_of :firstname, :lastname, :email

  HIDDEN = "hidden"
  VISIBLE = "visible"

  def fullname
    "#{firstname} #{lastname}"
  end
  def to_s
    fullname
  end
  def state
    display ? VISIBLE : HIDDEN
  end
  def md5
    Digest::MD5.hexdigest(email)
  end
end
