module ApplicationHelper
	# Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Stanford Club of San Francisco"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}".html_safe
    end
  end
end
