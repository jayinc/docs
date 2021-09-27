---
title: Big Transcript
weight: 2
category: "References"
display: article
menu:
  sidebar:
    title: "Big Transcript"
    parent: "UI components"
---
<script>
  // updateTab function specific to this pages' tabs; called by updateTab() in app.js
  function updateTab() {
    let urlParams = new URLSearchParams(window.location.search);
    selectTab("platform", urlParams.get("platform"));
  }
</script>

Big Transcript is an overlay-style component that displays real-time speech-to-text transcript and feedback to the user. Recognized entities are highlighted.

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
  <script type="text/javascript" src="https://speechly.github.io/browser-ui/v3/big-transcript.js"></script>
</head>

<body>
  <big-transcript
    placement="top"
    formattext="false" >
  </big-transcript>
</body>
{{< /highlight >}}

{{< include-html "api-for-web-components.html" >}}

</div>

<div class="React tabcontent platform code">

Place `<BigTranscript>` component inside your `<SpeechProvider>` block. Please see [Basic usage](/client-libraries/usage/?platform=React) for a full app example.

{{< highlight tsx >}}

import { BigTranscript } from "@speechly/react-ui";

...
<SpeechProvider appId="YOUR_APP_ID_FROM_SPEECHLY_DASHBOARD">
  <BigTranscript
    placement="top"
    formatText={false}
  />
</SpeechProvider>
...
{{< /highlight >}}

### Properties

{{< include-md "api-for-react.md" >}}

### Window messages listened

<ul>
  <li><code>{type: "speechhandled", success: boolean}</code> - Optional. Shows an indication to the user that the voice command was successfully understood by the app. Use window.postMessage to send it on segment.isFinal.</li>
</ul>

</div>
