---
title: "Voice form components"
description: Speechly Voice form components are multi-modal browser widgets that can be controlled with speech, tap, pointer and keyboard.
weight: 4
category: "References"
display: article
menu:
  sidebar:
    title: "Voice forms"
    parent: "Client Libraries [Remove to unhide]"
---

### [Voice Input](/client-libraries/voice-forms/voice-input)

Voice Input is a voice-enabled text field component. Its value changes whenever the specified _entity type_ is found in the SpeechSegment. The new value will be the _entity's value_.

### [Voice Select](/client-libraries/voice-forms/voice-select)

Voice Select is a voice-enabled single-select dropdown component. It changes the selection based on the _intent_, _entity type_ or _entity value_ found in the SpeechSegment.

### [Voice Toggle](/client-libraries/voice-forms/voice-toggle)

Voice Toggle is a voice-enabled single-select button group component. It changes the selection based on the _intent_, _entity type_ or _entity value_ found in the SpeechSegment.

### [Voice Checkbox](/client-libraries/voice-forms/voice-checkbox)

Voice Checkbox is a voice-enabled checkbox component. It changes to checked if the specified _entity type_ is found in the SpeechSegment.

### [Voice Date Picker](/client-libraries/voice-forms/voice-date-picker)

Voice Date Picker is a voice-enabled date picker component. It changes the date if the specified _entity type_ with a [Speechly Date](/slu-examples/standard-variables/#supported-standard-variables) as the _entity value_ is found in the SpeechSegment.
