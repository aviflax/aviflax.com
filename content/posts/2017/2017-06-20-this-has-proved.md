---
date: '2017-06-20T17:58:47-05:00'
---
🤓🚨

This has proved useful when printing Web pages with `&lt;details&gt;` elements:

    Array.prototype.forEach.call(document.getElementsByTagName("details"), elem =&gt; elem.open = true);
    
NodeList objects ← 😡
