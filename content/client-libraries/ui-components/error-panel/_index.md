---
title: Error Panel
weight: 10
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

Use Error Panel to help users diagnose and fix common problems preventing the use of voice.

Error Panel automatically unhides when the user presses Push-To-Talk Button if <code>ClientState</code> indicates an initialisation error.

## Usage

<div class="tab">
  <button class="tablinks platform WebClient active" onclick="openTab(event, 'platform=WebClient')">Web Components</button>
  <button class="tablinks platform React" onclick="openTab(event, 'platform=React')">React</button>
</div>

<div class="WebClient tabcontent platform code" style="display: block;">

{{< highlight html >}}

<head>
  <script type="text/javascript" src="https://speechly.github.io/browser-ui/dev/error-panel.js"></script>
</head>

<body>
  <error-panel
    placement="bottom" >
  </error-panel>
</body>
{{< /highlight >}}

</div>

<div class="React tabcontent platform code">

Place `<ErrorPanel>` component inside your `<SpeechProvider>`. Please see [Basic usage](/client-libraries/usage/?platform=React) for a full app example.

{{< highlight tsx >}}

import { ErrorPanel } from "@speechly/react-ui";

...
<SpeechProvider appId="YOUR_APP_ID_FROM_SPEECHLY_DASHBOARD">
  <ErrorPanel
    placement="bottom"
  />
</SpeechProvider>
...
{{< /highlight >}}

</div>

## Error Panel provides the following recovery instructions

- No microphone permission
  - Cause: The user has denied the use of microphone
  - Proposed fix: To use the voice interface, please allow your web browser access the microphone and reload.
- Unsupported browser
  - Cause: Required browser APIs for using voice functions are not available
  - Proposed fix: To use the voice interface, please visit this site using a supported browser.
- Page accessed without HTTPS
  - Cause: The site that contains voice functions is accessed with file:// or http:// protocol causing the browser to prevent access to required browser APIs.
  - Proposed fix: To use the voice interface, please visit this site using the secure https:// protocol.
