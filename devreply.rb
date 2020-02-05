widget_link = @context.page.send(Formatters.string_to_snake_case(widget_id)).get_links
  devices_added_count = nil
  widget_link.each do|list_item|
    if list_item.span(class: 'ng-binding').present?
      devices_added_count = list_item.span(class: 'ng-binding').text.to_i
      a+++
    end
  end
