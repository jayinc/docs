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

Big Transcript is an overlay-style component that displays real-time speech-to-text transcript and feedback to the user.

The component is momentarily displayed when speech input is used and automatically hidden shortly after. The recommended placement is near top-left corner of the screen.

Recognized entities are highlighted. You can customise the colors of the component.

## Usage

<div class="tab">
  <button class="tablinks platform WebClient active" onclick="openTab(event, 'platform=WebClient')">Web Components</button>
  <button class="tablinks platform React" onclick="openTab(event, 'platform=React')">React</button>
</div>

## Customisation

Styling like colors can be assigned to `.BigTranscript` container class and to different entity types by using `.Entity.<EntityName>` selector. Replace `<EntityName>` with the exact entity name defined in your SAL.

```css
.BigTranscript {
  color: #fff;
  font-family: "Organetto";
  font-size: 1.4rem;
  line-height: 1.15;
}

.BigTranscript .Entity {
  color: #909090;
}

.BigTranscript .Entity.room {
  color: #1fd3f3;
}

.BigTranscript .Entity.device {
  color: #1fd3f3;
}
```
