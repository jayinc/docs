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

Error Panel is a normally hidden panel for voice-related error messages and recovery instructions when there is a problem with voice functions, e.g. when accessing site via http or if microphone permission is denied or unsupported in browser.

`<ErrorPanel/>` is intended to be placed inside `<PushToTalkButtonContainer>` block. You may, however, place it anywhere in the component hierarchy.

It automatically shows if there is problem detected upon pressing the `<PushToTalkButton/>`. Internally, it uses `pubsub-js` for component to component communication.

  > 
  > Use `<ErrorPanel/>` to help users diagnose and recover from voice-related issues
  > 
