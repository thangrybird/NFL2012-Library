module ViewHelpers
  def app_nav(&block)
    output = ""
    html = ""
    if block_given?
      output << capture(&block)
    else
      output << "No block"
    end
    
    html << "<nav class=\"app nav\">\n"
    html << "<ul id=\"main_nav\" class=\"nav main\" role=\"main navigation\">"
    html << output
    html << "</ul>"
    html << "</nav>"
    
    return output
  end
end