---
title: Styling the components
weight: 200
category: "References"
display: article
menu:
  sidebar:
    title: "Styling the components"
    parent: "Voice form components"
---

<script>
  // updateTab function specific to this pages' tabs; called by updateTab() in app.js
  function updateTab() {
    let urlParams = new URLSearchParams(window.location.search);
    selectTab("platform", urlParams.get("platform"));
  }
</script>

Add either `voice-form-theme-mui.css` or `voice-form-theme-capsule.css` with the following content to your `src` folder and import it. Tweak to your liking!

{{< highlight tsx >}}
import "voice-form-theme-mui.css";
{{< /highlight >}}

## voice-form-theme-mui.css
{{< highlight css >}}
{{< include-html "voice-form-theme-mui.css" >}}
{{< /highlight >}}

## voice-form-theme-capsule.css
{{< highlight css >}}
{{< include-html "voice-form-theme-capsule.css" >}}
{{< /highlight >}}
