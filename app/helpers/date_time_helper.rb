module DateTimeHelper

  # Format the time by time ago
  def timeago time, options = {}
    options[:title] = options[:title] == false ? nil : l(time)
    options[:datetime] = time.to_s
    content_tag(:abbr, "#{time_ago_in_words(time).capitalize} ago", options) if time
  end

  # Facny date
  def fancy_date date
    date.strftime('%m/%d/%Y at %I:%M %p') if date.present?
  end

  # Full and fancy date
  def full_date date
    date.strftime('%b %-d, %Y at %I:%M %p') if date.present?
  end

end
