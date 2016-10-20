module ApplicationHelper
  def limit_length(str, length)
    if str.size < length
      return str
    else
      return "#{str[0..length]}.."
    end
  end
end
