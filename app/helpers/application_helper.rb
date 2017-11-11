module ApplicationHelper

  def full_title(page_title ='')
    base_title = "Groselha Factory"
    if page_title.empty? || page_title == "Groselha Factory"
      base_title + " | " + "Blog"
    else
      page_title + " | " + base_title
    end
  end


end
