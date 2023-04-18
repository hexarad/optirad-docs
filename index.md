---
layout: page
---

<img src="{{site.baseurl}}/assets/images/hr-logo.png" style="height:60px;display: block; margin-left: auto; margin-right: auto; " >

Welcome to the Optirad document site. Here you will find structured links to help
navigate you to the documentation you require.

Alternatively you can view the most recent documentation [here]({% link recent.md %})

<div>
{% if site.data.menu.nav[0] %}
  {% for item in site.data.menu.nav %}
    <h3>{{ item.title }}</h3>
      {% if item.subfolderitems[0] %}
        <ul>
          {% for entry in item.subfolderitems %}
              <li><a href="{{ entry.url }}">{{ entry.page }}</a>
                {% if entry.subsubfolderitems[0] %}
                  <ul>
                  {% for subentry in entry.subsubfolderitems %}
                      <li><a href="{{ subentry.url }}">{{ subentry.page }}</a></li>
                  {% endfor %}
                  </ul>
                {% endif %}
              </li>
          {% endfor %}
        </ul>
      {% endif %}
    {% endfor %}
{% endif %}
</div>
