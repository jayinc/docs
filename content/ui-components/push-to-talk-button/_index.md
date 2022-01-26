---
title: Push-To-Talk Button
weight: 1
category: "References"
display: article
menu:
  sidebar:
    parent: "UI Components"
---

<script>
  // updateTab function specific to this pages' tabs; called by updateTab() in app.js
  function updateTab() {
    let urlParams = new URLSearchParams(window.location.search);
    selectTab("platform", urlParams.get("platform"));
  }
</script>

Push-To-Talk Button is a holdable switch for controlling listening for speech. Pressing the button starts listening by calling `startContext`. Releasing it turns listening off by calling `stopContext`. Desktop users can control listening on/off with an optional keyboard hotkey, e.g. `space`.

You can toggle visibility and customise the appearance and the hint texts on the button.

## Usage

<div class="tab">
  <button class="tablinks platform WebClient active" onclick="openTab(event, 'platform=WebClient')">Web Components</button>
  <button class="tablinks platform React" onclick="openTab(event, 'platform=React')">React</button>
</div>

<div class="WebClient tabcontent platform code" style="display: block;">

{{< highlight html >}}
<script type="text/javascript" src="https://unpkg.com/@speechly/browser-ui/core/push-to-talk-button.js"></script>

<push-to-talk-button
  appid="YOUR_APP_ID_FROM_SPEECHLY_DASHBOARD"
  placement="bottom"
  hide="false"
  capturekey=" "
  intro="Push to talk"
  size="80px" >
</push-to-talk-button>
{{< /highlight >}}

{{< include-md "api-for-web-components.md" >}}

</div>

<div class="React tabcontent platform code">

Place `<PushToTalkButton>` component inside your `<SpeechProvider>` block. Please see [Basic usage](/client-libraries/usage/?platform=React) for a full app example.

{{< highlight tsx >}}

import { PushToTalkButton } from "@speechly/react-ui";

...
<SpeechProvider appId="YOUR_APP_ID_FROM_SPEECHLY_DASHBOARD">
  <PushToTalkButton
    placement="bottom"
    hide="false"
    captureKey=" "
    intro="Push to talk"
    size="80px" >
  </PushToTalkButton>
</<SpeechProvider>
...

{{< /highlight >}}

### Properties

{{< include-md "api-for-react.md" >}}

</div>

## Button placement options

- Place the button close to the bottom-center of the viewport (fixed) to indicate app-wide speech control. Use `placement="bottom"` for this option.
- Place the button close to a group of components if speech input only controls a few input fields.
- Place the button close to an input field if speech input only controls that component (e.g. text in a search box)
