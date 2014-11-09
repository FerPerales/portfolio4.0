module ApplicationHelper

  def footer_info
    "<p>#{ Date.today.year } - Fer Perales</p>".html_safe
  end
end
