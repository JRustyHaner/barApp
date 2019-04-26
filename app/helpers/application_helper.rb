module ApplicationHelper
    def active_class(path)
        if request.path == path
            return 'active'
        else
           return ''
        end
    end
    def title(page_title)
        content_for(:title) { page_title }
    end
end
