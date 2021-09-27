---
title: Error Panel
weight: 3
category: "References"
display: article
menu:
  sidebar:
    title: "Error Panel"
    parent: "UI components"
---
<script>
  // updateTab function specific to this pages' tabs; called by updateTab() in app.js
  function updateTab() {
    let urlParams = new URLSearchParams(window.location.search);
    selectTab("platform", urlParams.get("platform"));
  }
</script>

Use Error Panel to help users diagnose and recover from voice-related issues.

Error Panel automatically unhides upon pressing the Push-To-Talk Button if there is a voice-related error. It also displays recovery instructions.
