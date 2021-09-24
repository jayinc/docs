---
title: UI Components
description: Speechly UI components provide the visual interface to support voice functionality. Ready-made components are available for toggling listening on/off and providing feedback to the user.
weight: 2
category: "References"
display: article
menu:
  sidebar:
    title: "UI components"
    parent: "Client Libraries"
---
<script>
  // updateTab function specific to this pages' tabs; called by updateTab() in app.js
  function updateTab() {
    let urlParams = new URLSearchParams(window.location.search);
    selectTab("platform", urlParams.get("platform"));
  }
</script>

- [Speechly UI components and layout designs in Figma](https://www.figma.com/file/CqXMKQX6LNSnSai00P5xbz/Speechly-UI?node-id=0%3A1)
- [Download Speechly UI Components and layout designs for Sketch](https://speechly.github.io/speechly-ui-assets/speechly-ui.sketch)

{{< figure src="ui-components-intro.png" alt="Introduction to Speechly UI Components" title="Key Speechly UI components and their sub-components" >}}

# Push-to-Talk Button component

Push-to-Talk Button is a holdable switch for controlling listening for speech. Pressing the button starts listening by calling <code>startContext</code>. Releasing it turns listening off by calling <code>stopContext</code>. Desktop users can control listening on/off with an optional keyboard hotkey, e.g. <code>space</code>.

We recommend the following button placements:
- Placing the button close to the bottom-center of the viewport (fixed) to indicate app-wide speech control (default)
- Placing the button close to a group of components if speech input only controls a few input fields
- Placing the button close to an input field if speech input only controls that component (e.g. text in a search box)

You can also control the visibility, colors and hint texts on the button.

#### Usage

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

<h3>Attributes</h3>
<ul>
  <li><code>appid</code> - Speechly App id to connect to.
  <li><code>placement</code> - Optional "bottom" turns on internal placement. The button will float at the bottom-center of the viewport. Otherwise, you need to use custom CSS styling to position the element.
  </li>
  <li><code>hide</code> - Optional "false" | "true". Default: "false"</li>
  <li><code>capturekey</code> - Optional string (of length 1). Defines a keyboard hotkey that with control listening on/off. Default: undefined. Recommendation: Space (" ")</li>
  <li><code>poweron</code> - Optional string "true" | "false". Shows poweron state. If false, recording can immediately start but will first press will cause a system permission prompt. Default: "false" </li>
  <li><code>size</code> - Optional string (CSS). Defines the button frame width and height. Default: "6rem"</li>
  <li><code>voffset</code> - Optional CSS string. Vertical distance from viewport edge. Only effective when using placement.</li>
  <li><code>intro</code> - Optional string containing a short usage introduction. Displayed when the component is first displayed. Default: "Push to talk". Set to "" to disable.</li>
  <li><code>hint</code> - Optional string containing a short usage hint. Displayed on a short tap. Default: "Push to talk". Set to "" to disable.</li>
  <li><code>fontsize</code> - Optional CSS string for hint text. Default: "1.2rem"</li>
  <li><code>showtime</code> - Optional number in ms. Visibility duration for intro and hint callouts. Default: "5000" (ms)</li>
  <li><code>textcolor</code> - Optional string (CSS color) for hint text. Default: "#ffffff"
  <li><code>backgroundcolor</code> - Optional string (CSS color) for hint text background. Default: "#202020"
  <li><code>gradientstop1</code> - Optional string (CSS color). Default: "#15e8b5"
  <li><code>gradientstop2</code> - Optional string (CSS color). Default: "#4fa1f9"
</ul>
<h3>Events emitted</h3>
<ul>
  <li><code>holdstart</code> - CustomEvent triggered upon hold start</li>
  <li><code>holdend</code> - CustomEvent triggered upon hold end. event.detail.timeMs contains hold time in ms.</li>
  <li><code>speechsegment</code> - CustomEvent triggered when speech-to-text segment changes. Segment available as the event.details property.</li>
  <li><code>starting</code> - CustomEvent triggered on initialization start</li>
  <li><code>initialized</code> - CustomEvent triggered on initialization end. details: {success: true | false, status: "Ready" | "Failed" | "NoBrowserSupport" | "NoAudioConsent"}</li>
</ul>
<h3>Window messages emitted (postMessage)</h3>
<ul>
  <li><code>{type: "speechsegment", segment: Segment}</code> - Broadcasts new segment when an update is available</li>
  <li><code>{type: "speechstate", state: ClientState}</code> - Broadcasts state changes. Refer to browser-client documentation for values.</li>
  <li><code>{type: "holdstart"}</code> - Broadcasted upon hold start</li>
  <li><code>{type: "holdend"}</code> - Broadcasted upon hold end</li>
</ul>

</div>

<div class="React tabcontent platform code">

## Customisation

- `<PushToTalkButtonContainer>` is a convenience container that places the button at the lower part of the screen. You may replace it with your own `<div>` or similar.

- The widget size is defined by the `size` property. Parameters are in css, e.g. `6rem`.

```tsx
<PushToTalkButton size="6rem" />
```

- Colors are defined by `gradientStops` property. Parameter is an array of 2 colors, e.g. ["#aaa","#ddd"].

```tsx
<PushToTalkButton gradientStops={["#aaa", "#ddd"]} />
```
</div>

# Big Transcript component

  > 
  > Big Transcript is an overlay-style component that displays real-time speech-to-text transcript and feedback to the user.
  > 

Big Transcript is intended to be placed as an overlay near top-left corner of the screen. The component is momentarily displayed when speech input is used and automatically hidden shortly after.

Recognized entities are tagged with css classes so they can be styled individually.

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

# ErrorPanel component

`<ErrorPanel/>` is a normally hidden panel for voice-related error messages and recovery instructions when there is a problem with voice functions, e.g. when accessing site via http or if microphone permission is denied or unsupported in browser.

`<ErrorPanel/>` is intended to be placed inside `<PushToTalkButtonContainer>` block. You may, however, place it anywhere in the component hierarchy.

It automatically shows if there is problem detected upon pressing the `<PushToTalkButton/>`. Internally, it uses `pubsub-js` for component to component communication.

  > 
  > Use `<ErrorPanel/>` to help users diagnose and recover from voice-related issues
  > 
