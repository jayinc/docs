---
title: "UI components"
description: Speechly UI components provide the visual interface to support voice functionality.
weight: 3
category: "References"
display: article
menu:
  sidebar:
    title: "UI components"
    parent: "Client Libraries"
---

<script>
  // updateTab function specific to this pages' tabs; called by updateTab() in app.js
  function updateTab() {
    let urlParams = new URLSearchParams(window.location.search);
    selectTab("platform", urlParams.get("platform"));
  }
</script>

{{< figure src="ui-components-intro.png" alt="Introduction to Speechly UI Components" >}}

### [Push-to-Talk Button](/client-libraries/ui-components/push-to-talk-button)

Push-to-Talk Button is a holdable switch for controlling listening for speech.

### [Big Transcript](/client-libraries/ui-components/big-transcript)

Big Transcript is an overlay-style component that displays real-time speech-to-text transcript and feedback to the user.

### [Transcript Drawer](/client-libraries/ui-components/transcript-drawer)

Transcript Drawer is an alternative for Big Transcript that slides down from the top of the viewport. It displays usage tips along with the real-time speech-to-text transcript and feedback.

## Other UI components

### [Error Panel](/client-libraries/ui-components/error-panel)

Use Error Panel to help users diagnose and recover from voice-related issues.

## Figma and Sketch files

- [Speechly UI components and layout designs in Figma](https://www.figma.com/file/CqXMKQX6LNSnSai00P5xbz/Speechly-UI?node-id=0%3A1)
- [Download Speechly UI Components and layout designs for Sketch](https://speechly.github.io/speechly-ui-assets/speechly-ui.sketch)
