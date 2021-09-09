---
title: Basic usage
description: How to install, instantiate and use Speechly Client Libraries
display: article
category: "User guide"
weight: 1
aliases: [/client-libraries/web-client/, /client-libraries/react/tutorial/, /client-libraries/ios/tutorial/, /client-libraries/react-native/]
menu:
  sidebar:
    title: "Basic usage"
    parent: "Client Libraries"
---
<script>
  // updateTab function specific to this pages' tabs; called by updateTab() in app.js
  function updateTab() {
    let urlParams = new URLSearchParams(window.location.search);
    selectTab("platform", urlParams.get("platform"));
  }
</script>

*Note that you also need a Speechly application id. This you can obtain from the [Dashboard](https://api.speechly.com/dashboard) for one of the ready-made example applications, or after having [configured](/slu-examples/) one yourself. And don't forget to deploy your application on the Dashboard as well!*

# Install and import the client library

<div class="tab">
  <button class="tablinks platform WebClient active" onclick="openTab(event, 'platform=WebClient')">Web Toolkit</button>
  <button class="tablinks platform React" onclick="openTab(event, 'platform=React')">React</button>
  <button class="tablinks platform iOS" onclick="openTab(event, 'platform=iOS')">iOS</button>
  <button class="tablinks platform Android" onclick="openTab(event, 'platform=Android')">Android</button>
</div>

<div class="WebClient tabcontent platform code" style="display: block;">
The Speechly Web Toolkit provides a number of components to help you get started quickly. Just add the resources in your <code>head</code> block:
{{< highlight html >}}
<head>
  <script type="text/javascript" src="https://speechly.github.io/browser-ui/v3/push-to-talk-button.js"></script>
  <script type="text/javascript" src="https://speechly.github.io/browser-ui/v3/big-transcript.js"></script>
  <link rel="stylesheet" href="https://speechly.github.io/browser-ui/v3/speechly-ui.css">
</head>
{{< /highlight >}}
</div>

<div class="React tabcontent platform code">
Install the client with npm:
{{< highlight bash >}}
npm install --save @speechly/react-client
npm install --save @speechly/react-ui
{{< /highlight >}}
And import the components into your application:
{{< highlight typescript >}}
import React from "react";
import { SpeechProvider, useSpeechContext } from "@speechly/react-client";
{{< /highlight >}}
</div>

<div class="iOS tabcontent platform code">
The Speechly iOS client is distributed using Swift Package Manager,
add it as a dependency to your <code>Package.swift</code>:
{{< highlight swift >}}
// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "MySpeechlyApp",
    dependencies: [
        .package(name: "speechly-ios-client", url: "https://github.com/speechly/ios-client.git", from: "0.3.0"),
    ],
    targets: [
        .target(name: "MySpeechlyApp", dependencies: []),
        .testTarget(name: "MySpeechlyAppTests", dependencies: ["MySpeechlyApp"]),
    ]
)
{{< /highlight >}}

Import the client...
{{< highlight swift >}}
import Speechly
{{< /highlight >}}

... and instantiate it in your manager class:
{{< highlight swift >}}
let client: Speechly.Client

public init() {
    client = try! Speechly.Client(
        appId: UUID(uuidString: "YOUR_APP_ID_HERE")!,
    )
    client.delegate = self
    ...
}
{{< /highlight >}}
</div>

<div class="Android tabcontent platform code">
<p>The client package is available from our Github repository:<br>
<a href="https://github.com/speechly/android-client/releases/latest">https://github.com/speechly/android-client/releases/latest</a>.</p>
Add android-client to your build.gradle dependencies.
{{< highlight gradle >}}
dependencies {
  implementation 'com.speechly:android-client:latest'
}
{{< /highlight >}}

Import the client, as well as the <code>SpeechlyButton</code>.
{{< highlight kotlin >}}
import com.speechly.client.speech.Client
import com.speechly.client.slu.*
import com.speechly.ui.SpeechlyButton
{{< /highlight >}}

Instantiate the client in your main activity
and add a <code>SpeechlyButton</code>.
Make sure to replace <code>YOUR_APP_ID_HERE</code>
with the correct Speecly app id.
{{< highlight kotlin >}}
private val speechlyClient: Client = Client.fromActivity(
        activity = this,
        UUID.fromString("YOUR_APP_ID_HERE")
)

private var button: SpeechlyButton? = null
{{< /highlight >}}
</div>

# Take UI components to use
We provide ready-made UI components that implement a Push-to-Talk Button for
starting and stopping voice recording, and a display component for showing the returned transcript (not yet available on Android). It is not necessary to use these, but we highly recommend this as a first step to get started quickly.
<div class="tab">
  <button class="tablinks platform WebClient active" onclick="openTab(event, 'platform=WebClient')">Web Toolkit</button>
  <button class="tablinks platform React" onclick="openTab(event, 'platform=React')">React</button>
  <button class="tablinks platform iOS" onclick="openTab(event, 'platform=iOS')">iOS</button>
  <button class="tablinks platform Android" onclick="openTab(event, 'platform=Android')">Android</button>
</div>

<div class="WebClient tabcontent platform code" style="display: block;">
Include the following lines in your <code>body</code>:
{{< highlight html >}}
<div class="BigTranscriptContainer">
  <big-transcript></big-transcript>
</div>
<div class="PushToTalkContainer">
  <push-to-talk-button appid="YOUR_APP_ID_HERE"></push-to-talk-button>
</div>
{{< /highlight >}}
</div>

<div class="React tabcontent platform code">
Import the components:
{{< highlight typescript >}}
import {
  PushToTalkButton,
  PushToTalkButtonContainer,
  BigTranscript,
  BigTranscriptContainer,
  ErrorPanel
} from "@speechly/react-ui";
{{< /highlight >}}
Place the components inside your <SpeechProvider> block
{{< highlight typescript >}}
function App() {
  return (
    <SpeechProvider appId="014ce3a6-9bbf-4605-976f-087a8f3ec178" language="en-US">
      <BigTranscriptContainer>
        <BigTranscript />
      </BigTranscriptContainer>

      <PushToTalkButtonContainer>
        <PushToTalkButton captureKey=" " />
        <ErrorPanel/>
      </PushToTalkButtonContainer>
    </SpeechProvider>
  );
}
{{< /highlight >}}
</div>

<div class="iOS tabcontent platform code">
Initialise the <code>TranscriptView</code> and <code>MicrophoneButtonView</code>,
and add them in the <code>addViews</code> function of your manager class.
{{< highlight swift >}}
let transcriptView = TranscriptView()
lazy var speechButton = MicrophoneButtonView(delegate: self)

public func addViews(view: UIView) {
        view.addSubview(transcriptView)
        view.addSubview(speechButton)
        ...
}
{{< /highlight >}}

Implement an extension that maps the microphone button to
starting and stopping the client.
{{< highlight swift >}}
extension SpeechlyManager: MicrophoneButtonDelegate {
    func didOpenMicrophone(_ button: MicrophoneButtonView) {
        self.client.startContext()
    }
    func didCloseMicrophone(_ button: MicrophoneButtonView) {
        self.client.stopContext()
    }
}
{{< /highlight >}}
</div>

<div class="Android tabcontent platform code">
In your main activity,
define a touch listener that
activates and deactivates audio transmission.
Also, in the <code>onCreate</code> method
assign this listener to <code>SpeechlyButton</code>.
{{< highlight kotlin >}}
private var buttonTouchListener = object : View.OnTouchListener {
    override fun onTouch(v: View?, event: MotionEvent?): Boolean {
        when (event?.action) {
            MotionEvent.ACTION_DOWN -> {
                speechlyClient.startContext()
            }
            MotionEvent.ACTION_UP -> {
                speechlyClient.stopContext()
            }
        }
        return true
    }
}

override fun onCreate(savedInstanceState: Bundle?) {
    ...
    this.button = findViewById(R.id.speechly)
    this.button?.setOnTouchListener(buttonTouchListener)
    ...
}
{{< /highlight >}}
</div>

# Handle speech input
The basic idea of the client-side API is to provide a “live view” to the ongoing speech segment. This is done by registering a callback function that receives a <code>Segment</code> data structure as argument. This data structure represents the ongoing speech segment. Also see our [Client API reference](/client-libraries/client-api-reference/).

After an audio context has started, callback is called every time the Speechly API returns an event that updates the currently ongoing segment.
<div class="tab">
  <button class="tablinks platform WebClient active" onclick="openTab(event, 'platform=WebClient')">Web Toolkit</button>
  <button class="tablinks platform React" onclick="openTab(event, 'platform=React')">React</button>
  <button class="tablinks platform iOS" onclick="openTab(event, 'platform=iOS')">iOS</button>
  <button class="tablinks platform Android" onclick="openTab(event, 'platform=Android')">Android</button>
</div>

<div class="WebClient tabcontent platform code" style="display: block;">
Assign a listener to the <code>push-to-talk-button</code> that handles broadcasted updates
to the ongoing <code>SpeechSegment</code>.
{{< highlight html >}}
<script type="text/javascript">
document
  .getElementsByTagName("push-to-talk-button")[0]
  .addEventListener("speechsegment", (e) => {
    const segment = e.detail;

    // Handle speech segment and make tentative changes to app state
    console.log("speechsegment message:", segment);

    if (segment.isFinal) {
      // Handle speech segment and make permanent changes to app state
      // Optionally show confirmation
      window.postMessage({ type: "speechhandled", success: true }, "*");
    }
 });
</script>
{{< /highlight >}}

You can find more details about the Speechly Web Toolkit in [this tutorial](https://speechly.github.io/browser-ui/v3/).
</div>

<div class="React tabcontent platform code">
{{< highlight typescript >}}
function SpeechlyApp() {
  const { segment } = useSpeechContext()
  return (
    <div>
      {segment ? <div className="segment">{segment.words.map(w => w.value).join(' ')}</div> : null}
    </div>
  )
}
{{< /highlight >}}
</div>

<div class="iOS tabcontent platform code">
Implement the `Speechly.SpeechlyDelegate` for reacting to recognition results.
{{< highlight swift >}}
extension SpeechlyManager: SpeechlyDelegate {
    func speechlyClientDidUpdateSegment(_ client: SpeechlyProtocol, segment: Segment) {
        // segment handling logic goes here
        ...
        // If you are using the TranscriptView component, also add
        DispatchQueue.main.async {
            self.transcriptView.configure(segment: segment, animated: true)
        }
    }
}
{{< /highlight >}}
</div>

<div class="Android tabcontent platform code">
In the <code>onCreate</code> method,
define the callback to be used for handling a <code>Segment</code>.
{{< highlight kotlin >}}
override fun onCreate(savedInstanceState: Bundle?) {
    ...
    GlobalScope.launch(Dispatchers.Default) {
        speechlyClient.onSegmentChange { segment: Segment ->
            // segment handling logic goes here
            ...
        }
    }
    ...
}
{{< /highlight >}}
For more details, please see our <a href="/client-libraries/client-api-reference/">Client API reference</a>,
as well as the <a href="https://github.com/speechly/android-client/blob/main/client/src/main/kotlin/com/speechly/client/slu/Segment.kt">source code of Segment on Github</a>.
</div>

# Learn more!

Learn how to [configure](/slu-examples/) your own application.

For descriptions of complete example applications built using the client libraries,
please see our [tutorials](/tutorials/).
