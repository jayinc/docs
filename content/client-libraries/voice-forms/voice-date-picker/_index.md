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

You can [customise the appearance](#styling-the-components) the component with `css`.

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

Import the component:

{{< highlight tsx >}}
import { VoiceDatePicker } from '@speechly/react-voice-forms'
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

## Styling the components

Copy `voice-form-component-calendar.css` with the following content to your `src` folder and import it. Tweak to your liking!

{{< highlight tsx >}}
import "voice-form-component-calendar.css";
{{< /highlight >}}

`voice-form-component-calendar.css`
{{< highlight css >}}
{{< include-html "voice-form-component-calendar.css" >}}
{{< /highlight >}}


{{< include-md "../react-voice-forms-styling.md" >}}

</div>
