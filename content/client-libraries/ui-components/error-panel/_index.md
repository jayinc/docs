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
<script type="text/javascript" src="https://speechly.github.io/browser-ui/dev/error-panel.js"></script>

<error-panel
  placement="bottom" >
</error-panel>
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

## Error Messages

- Failed to connect Speechly
  - Cause: Either the Speechly application id is invalid or the configuration has not been deployed successfully.
  - Proposed fix: Check that the Speechly application id is spelled exactly as shown in the Dashboard. If this is the first time you use the app id, check in the Dashboard that the speech model has finished training and try again once it has been deployed. Training usually takes some 5-10 minutes.
- No microphone permission
  - Cause: The user has denied the use of microphone
  - Proposed fix: To use the voice interface, please allow your web browser access the microphone and reload.
- Unsupported browser
  - Cause: Required browser APIs for voice functions are not available
  - Proposed fix: To use the voice interface, please visit this site using a supported browser.
- Page accessed without HTTPS
  - Cause: The site that contains voice functions is accessed with file:// or http:// protocol causing the browser to prevent access to required browser APIs.
  - Proposed fix: To use the voice interface, please visit this site using the secure https:// protocol.
