---
title: Voice Date Picker
weight: 104
category: "References"
display: article
menu:
  sidebar:
    title: "Voice Date Picker"
    parent: "Voice form components"
---

<script>
  // updateTab function specific to this pages' tabs; called by updateTab() in app.js
  function updateTab() {
    let urlParams = new URLSearchParams(window.location.search);
    selectTab("platform", urlParams.get("platform"));
  }
</script>

Voice Date Picker is a voice-enabled date picker component. It changes the date if the specified _entity type_ with a [Speechly Date](/slu-examples/standard-variables/#supported-standard-variables) as the _entity value_ is found in the SpeechSegment.

## Preview

<img src="preview.png" alt="Voice Date Picker" >

Voice Date Picker dressed in `capsule` and `mui` themes. See [styling the components](../styling-the-components) for more information.

## Usage

<div class="tab">
  <button class="tablinks platform React active" onclick="openTab(event, 'platform=React')">React</button>
</div>

<div class="React tabcontent platform code" style="display: block;">

> You'll need a [Speechly React app](/client-libraries/usage/?platform=React) and a [Speechly configuration](/slu-examples/basics/) that tags _entities_ in phrases to use this component.

Ensure you have added the `@speechly/react-voice-forms` dependency:

{{< highlight bash >}}
npm i @speechly/react-voice-forms
{{< /highlight >}}

Import the component, a css theme and component styling:

{{< highlight tsx >}}
import { VoiceDatePicker } from '@speechly/react-voice-forms'
import '@speechly/react-voice-forms/css/components/VoiceDatePicker.css'
import '@speechly/react-voice-forms/css/theme/mui.css'
{{< /highlight >}}

Place the form component somewhere inside your `SpeechProvider` block:

{{< highlight tsx >}}
<SpeechProvider appId="YOUR_APP_ID_FROM_SPEECHLY_DASHBOARD">
  <VoiceDatePicker
    label="Departure"
    changeOnEntityType="depart"
  />
</SpeechProvider>
{{< /highlight >}}

### Properties

{{< include-md "api-for-react.md" >}}

</div>
