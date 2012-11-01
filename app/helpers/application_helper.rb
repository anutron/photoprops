module ApplicationHelper
  def notice_msg(msg)
    "<div class='alert alert-success'>#{msg}</div>".html_safe
  end
  
  def alert_msg(msg)
    "<div class='alert'>#{msg}</div>".html_safe
  end
  
  # fields can either be an array or a single symbol value.  The following two values are OK:
  #    [:field1, :field2] -or- :field2
  # in the case when two fields are provided, the group will be in err if one or both of the fields
  # is in the error array.
  def control_group(resource, fields)
    if fields.class.name == "Array"
      div_class = "control-group"
      fields.each do |field|
        if resource.errors.include?(field)
          div_class = "#{div_class} error"
          break
        end
      end
    else
      div_class = resource.errors.include?(fields) ? "control-group error" : "control-group"
    end
    "<div class=\"#{div_class}\">".html_safe
  end
end
