---
title: Push-To-Talk Button
weight: 1
category: "References"
display: article
menu:
  sidebar:
    title: "Push-To-Talk Button"
    parent: "UI components"
---

<script>
  // updateTab function specific to this pages' tabs; called by updateTab() in app.js
  function updateTab() {
    let urlParams = new URLSearchParams(window.location.search);
    selectTab("platform", urlParams.get("platform"));
  }
</script>

Push-To-Talk Button is a holdable switch for controlling listening for speech. Pressing the button starts listening by calling <code>startContext</code>. Releasing it turns listening off by calling <code>stopContext</code>. Desktop users can control listening on/off with an optional keyboard hotkey, e.g. <code>space</code>.

You can toggle visibility and customise the appearance and the hint texts on the button.

## Usage

<div class="tab">
  <button class="tablinks platform WebClient active" onclick="openTab(event, 'platform=WebClient')">Web Components</button>
  <button class="tablinks platform React" onclick="openTab(event, 'platform=React')">React</button>
</div>

<div class="WebClient tabcontent platform code" style="display: block;">

{{< highlight html >}}

<head>
  <script type="text/javascript" src="https://speechly.github.io/browser-ui/v3/push-to-talk-button.js"></script>
</head>

<body>
  <push-to-talk-button
    appid="YOUR_APP_ID_FROM_SPEECHLY_DASHBOARD"
    placement="bottom"
    hide="false"
    capturekey=" "
    intro="Push to talk"
    size="80px" >
  </push-to-talk-button>
</body>
{{< /highlight >}}

{{< include-html "api-for-web-components.html" >}}

</div>

<div class="React tabcontent platform code">

Place `<PushToTalkButton>` component inside your `<SpeechProvider>`. Please refer to [Basic usage](/client-libraries/usage/?platform=React) for app setup.

{{< highlight tsx >}}

import {
  PushToTalkButton,
} from "@speechly/react-ui";

...

<PushToTalkButton
  placement="bottom"
  hide="false"
  captureKey=" "
  intro="Push to talk"
  size="80px" >
</PushToTalkButton>

{{< /highlight >}}

### Properties

{{< include-md "api-for-react.md" >}}

</div>

## Button placement options

- Place the button close to the bottom-center of the viewport (fixed) to indicate app-wide speech control. Use <code>placement="bottom"</code> for this option.
- Place the button close to a group of components if speech input only controls a few input fields.
- Place the button close to an input field if speech input only controls that component (e.g. text in a search box)
