---
layout: page
permalink: /publications/
title: Publications
description: Symbol * or ^ represents equal contribution or advising.
nav: true
nav_order: 1
---
<!-- _pages/publications.md -->

<div class="publications">
  {% include category_buttons.html %}

  <!-- Publications List -->
  <div class="publications-list">
    {% bibliography -f {{ site.scholar.bibliography }} %}
  </div>
</div>

{% include category_filter_js.html %}
