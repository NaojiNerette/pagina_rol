module ApplicationHelper

# Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Las puertas de Kairn Re'ox"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def markdown(text)  
    Redcarpet.new(text).to_html.html_safe  
  end  
  
end

