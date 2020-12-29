---
layout: default
---

<style>
  .microblog_post {
    margin: 2em 0;
  }

  .microblog_post p {
    margin: 0;
  }

  .microblog_time {
    margin: 0;
    text-align: right;
    font-size: small;
  }
</style>

<section>
  <script type="text/javascript" src="http://micro.blog/sidebar.js?username=avi&count=25"></script>

  <ul class="post-list">
    {% for post in paginator.posts %}
      <li>
        <span class="post-meta"><a class="post-link" href="{{ post.url | relative_url }}">{{ post.date | date: "%b %-d, %Y" }}</a></span>

        {% if post.tags contains "tweet" %}
          <h3>{{ post.content }}</h3>
        {% else %}
          <h2>
            <a class="post-link" href="{{ post.url | relative_url }}">{{ post.title | escape }}</a>
          </h2>
          {{ post.excerpt }}
          <a class="post-link" href="{{ post.url | relative_url }}">…more…</a>
        {% endif %}
      </li>
    {% endfor %}
  </ul>

  <!-- Pagination links -->
  <div class="pagination">
    {% if paginator.previous_page %}
      <a href="{{ paginator.previous_page_path }}" class="previous">Previous</a>
    {% endif %}

    <span class="page_number ">Page {{ paginator.page }} of {{ paginator.total_pages }}</span>

    {% if paginator.next_page %}
      <a href="{{ paginator.next_page_path }}" class="next">Next</a>
    {% endif %}
  </div>
</section>
