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

The application code can [signal the component](#displaying-the-confirmation-checkmark) to display a confirmation mark to let the user know that the voice command was successfully responded to.

You can customise the appearance of the component.

## Usage

<div class="tab">
  <button class="tablinks platform WebClient active" onclick="openTab(event, 'platform=WebClient')">Web Components</button>
  <button class="tablinks platform React" onclick="openTab(event, 'platform=React')">React</button>
</div>

<div class="WebClient tabcontent platform code" style="display: block;">

  {{< highlight html >}}
  <script type="text/javascript" src="https://unpkg.com/@speechly/browser-ui/core/big-transcript.js"></script>

  <big-transcript
    placement="top"
    formattext="false" >
  </big-transcript>
  {{< /highlight >}}

  {{< include-md "api-for-web-components.md" >}}

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

  - `{type: "speechhandled", success: boolean}` - Optional. Shows an indication to the user that the voice command was successfully understood by the app. Use window.postMessage to send it on segment.isFinal.

</div>

## Displaying the confirmation checkmark

Once the application has successfully responded to the voice input, send a `speechhandled` message to display the confirmation mark:

{{< highlight tsx >}}
window.postMessage({ type: "speechhandled", success: true }, "*");
{{< /highlight >}}
