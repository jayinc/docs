---
title: "UI components"
description: Speechly UI components provide the visual interface to support voice functionality.
weight: 3
category: "References"
display: article
menu:
  sidebar:
    title: "UI components"
    parent: "Client Libraries [Remove me to unhide]"
---

<script>
  // updateTab function specific to this pages' tabs; called by updateTab() in app.js
  function updateTab() {
    let urlParams = new URLSearchParams(window.location.search);
    selectTab("view", urlParams.get("view"));
  }
</script>

<div class="tab">
  <button class="view ComponentIntroduction tablinks active" onclick="openTab(event, 'view=ComponentIntroduction')">Push-To-Talk Button and Big Transcript</button>
  <button class="view TranscriptDrawer tablinks" onclick="openTab(event, 'view=TranscriptDrawer')">Transcript Drawer</button>
</div>

<div class="view ComponentIntroduction tabcontent" style="display: block;">

  {{< figure src="Component introduction.png" alt="Introduction to Speechly UI Components" >}}

</div>

<div class="view TranscriptDrawer tabcontent">

  {{< figure src="Transcript Drawer.png" alt="Introduction to Speechly UI Components" >}}

</div>


### [Push-to-Talk Button](/client-libraries/ui-components/push-to-talk-button)

Push-to-Talk Button is a holdable switch for controlling listening for speech.

### [Big Transcript](/client-libraries/ui-components/big-transcript)

Big Transcript is an overlay-style component that displays real-time speech-to-text transcript and feedback to the user.

### [Transcript Drawer](/client-libraries/ui-components/transcript-drawer)

Transcript Drawer is an alternative for Big Transcript that slides down from the top of the viewport. It displays usage tips along with the real-time speech-to-text transcript and feedback.

### [Error Panel](/client-libraries/ui-components/error-panel)

Error Panel displays recovery instructions for common voice-related problems.

## Figma and Sketch design files

- [Speechly UI components and layout templates in Figma](https://www.figma.com/file/CqXMKQX6LNSnSai00P5xbz/Speechly-UI?node-id=0%3A1)
- [Download Speechly UI Components and layout templates for Sketch](https://speechly.github.io/speechly-ui-assets/speechly-ui.sketch)
