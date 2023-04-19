---
layout: base
list_title: Recent docs
show_excerpts: true
---

<div class="home">
  {% if site.paginate %}
    {% assign docs = paginator.docs %}
  {% else %}
    {% assign docs = site.docs %}
  {% endif %}


  {%- if docs.size > 0 -%}
    {%- if page.list_title -%}
      <h2 class="post-list-heading">{{ page.list_title }}</h2>
    {%- endif -%}
    <ul class="post-list">
      {%- assign date_format = site.minima.date_format | default: "%b %-d, %Y" -%}
      {%- for doc in docs -%}
      <li>
        <span class="post-meta">{{ doc.date | date: date_format }}</span>
        <h3>
          <a class="post-link" href="{{ site.url }}{{ doc.url | relative_url }}">
            {{ doc.title | escape }}
          </a>
        </h3>
        {%- if site.show_excerpts -%}
          {{ doc.excerpt }}
        {%- endif -%}
      </li>
      {%- endfor -%}
    </ul>

    {% if site.paginate %}
      <div class="pager">
        <ul class="pagination">
        {%- if paginator.previous_page %}
          <li><a href="{{ site.url }}{{ paginator.previous_page_path | relative_url }}" class="previous-page">{{ paginator.previous_page }}</a></li>
        {%- else %}
          <li><div class="pager-edge">•</div></li>
        {%- endif %}
          <li><div class="current-page">{{ paginator.page }}</div></li>
        {%- if paginator.next_page %}
          <li><a href="{{ site.url }}{{ paginator.next_page_path | relative_url }}" class="next-page">{{ paginator.next_page }}</a></li>
        {%- else %}
          <li><div class="pager-edge">•</div></li>
        {%- endif %}
        </ul>
      </div>
    {%- endif %}

  {%- endif -%}
</div>
