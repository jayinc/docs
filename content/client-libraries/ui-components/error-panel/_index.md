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

Use Error Panel to help users diagnose and recover from voice-related issues.

Error Panel automatically unhides upon pressing the Push-To-Talk Button if there is a voice-related error. It also displays recovery instructions.

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

...

<body>
  <error-panel
    placement="bottom" >
  </error-panel>
</body>
{{< /highlight >}}

</div>

<div class="React tabcontent platform code">

Place `<ErrorPanel>` component inside your `<SpeechProvider>`. Please refer to [Basic usage](/client-libraries/usage/?platform=React) for app setup.

{{< highlight tsx >}}

import {
  ErrorPanel,
} from "@speechly/react-ui";

...

<ErrorPanel
  placement="bottom"
/>

{{< /highlight >}}

</div>
