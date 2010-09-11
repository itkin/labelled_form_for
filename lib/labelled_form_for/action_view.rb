class ActionView::Base

  def labelled_form_for(record_or_name_or_array, *args, &proc)
    options = args.extract_options!.symbolize_keys!
    form_for(record_or_name_or_array, *(args << options.merge(:builder => LabelledFormBuilder)), &proc)
  end

  def form_tag_html(html_options)
    super + content_tag(:div, content_tag(:div,' '), :class => "ajax-loader")
  end

end

