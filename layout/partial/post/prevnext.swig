{% if not is_index and (post.prev or post.next) %}
<div class="actions pagination pagination-post">
    {% if post.prev %}
    <div class="pagination-post-prev"><a href="{{ url_for(post.prev.path) }}" class="button big" title="{{ post.prev.title }}"><i class="fa fa-chevron-left"></i> {{post.prev.title}}</a></div>
    {% endif %}
    {% if post.next %}
    <div class="pagination-post-next"><a href="{{ url_for(post.next.path) }}" class="button big" title="{{ post.next.title }}">{{post.next.title}} <i class="fa fa-chevron-right"></i></a></div>
    {% endif %}
</div>
{% endif %}
