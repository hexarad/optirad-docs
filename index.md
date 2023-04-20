---
layout: page
---

<img src="{{ site.url }}/assets/images/hr-logo.png" style="height:60px;display: block; margin-left: auto; margin-right: auto; " >

Welcome to the Optirad document site. Here you will find a categorised list of documents to help
you use the application effectively.

Click [here]({{ site.url }}/recent.html) for the uncategorised list

{% assign CATEGORIES = site.categories | sort:"order" %}
<div>
{% for cat in CATEGORIES %}
  {% assign local_list = site.docs | where: "category", cat.category_name %}
  <h3>{{ cat.category_name }}</h3>
  <ul>
  {% for doc in local_list %}
    <li><a href="{{ site.url }}{{ doc.url }}">{{ doc.title }}</a></li>
  {% endfor %}
  </ul>
{% endfor %}
</div>
