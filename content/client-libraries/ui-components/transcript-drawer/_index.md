---
title: Transcript Drawer
weight: 3
category: "References"
display: article
menu:
  sidebar:
    title: "Transcript Drawer"
    parent: "UI components"
---
<script>
  // updateTab function specific to this pages' tabs; called by updateTab() in app.js
  function updateTab() {
    let urlParams = new URLSearchParams(window.location.search);
    selectTab("platform", urlParams.get("platform"));
  }
</script>

Transcript Drawer is an alternative for Big Transcript that slides down from the top of the viewport. It displays usage tips along with the real-time speech-to-text transcript and feedback.

The component is momentarily displayed when speech input is used and automatically hidden shortly after. The recommended placement is near top-left corner of the screen.

Once the application has successfully responded to the voice input, send a <code>speechhandled</code> message to display the confirmation mark: <code>window.postMessage({ type: "speechhandled", success: true }, "*");</code>.

You can customise the appearance of the component.

## Usage

<div class="tab">
  <button class="tablinks platform WebClient active" onclick="openTab(event, 'platform=WebClient')">Web Components</button>
  <button class="tablinks platform React" onclick="openTab(event, 'platform=React')">React</button>
</div>

<div class="WebClient tabcontent platform code" style="display: block;">

{{< highlight html >}}

<head>
  <script type="text/javascript" src="https://speechly.github.io/browser-ui/v3/transcript-drawer.js"></script>
</head>

<body>
  <transcript-drawer
    hint='["Try: 1st hint", "Try: 2nd hint"]'
    formattext="false" >
  </transcript-drawer> 
</body>
{{< /highlight >}}

{{< include-html "api-for-web-components.html" >}}

</div>

<div class="React tabcontent platform code">

Place `<BigTranscript>` component inside your `<SpeechProvider>`. For app setup, please refer to [Basic usage](/client-libraries/usage/?platform=React).

{{< highlight tsx >}}

import { TranscriptDrawer } from "@speechly/react-ui";

...
<SpeechProvider appId="YOUR_APP_ID_FROM_SPEECHLY_DASHBOARD">
  <TranscriptDrawer
    hint='["Try: 1st hint", "Try: 2nd hint"]'
    formatText={false}
  />
</SpeechProvider>
...

{{< /highlight >}}

### Properties

{{< include-md "api-for-react.md" >}}

</div>
