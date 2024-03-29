---
title: Getting started
description: How to install and use Speechly Client Libraries
display: article
category: "User guide"
weight: 1
aliases: [/client-libraries/web-client/, /client-libraries/react/tutorial/, /client-libraries/ios/tutorial/, /client-libraries/react-native/, /client-libraries/usage/]
menu:
  sidebar:
    title: "Getting started"
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
  <button class="tablinks platform WebClient active" onclick="openTab(event, 'platform=WebClient')">Web Components</button>
  <button class="tablinks platform React" onclick="openTab(event, 'platform=React')">React</button>
  <button class="tablinks platform iOS" onclick="openTab(event, 'platform=iOS')">iOS</button>
  <button class="tablinks platform Android" onclick="openTab(event, 'platform=Android')">Android</button>
</div>

<div class="WebClient tabcontent platform code" style="display: block;">

Speechly Web Components help you get started quickly. Push-To-Talk Button component integrates [browser-client](https://github.com/speechly/speechly/tree/main/libraries/browser-client) library (which you can of course install via npm as well) and requires no other dependencies to work. Just add the resources in your `head` block:

{{< highlight html >}}
<head>
  <script type="text/javascript" src="https://unpkg.com/@speechly/browser-ui/core/push-to-talk-button.js"></script>
  <script type="text/javascript" src="https://unpkg.com/@speechly/browser-ui/core/big-transcript.js"></script>
  <script type="text/javascript" src="https://unpkg.com/@speechly/browser-ui/core/error-panel.js"></script>
</head>
{{< /highlight >}}
</div>

<div class="React tabcontent platform code">

Install the client with npm:

{{< highlight bash >}}
npm install --save @speechly/react-client
npm install --save @speechly/react-ui
{{< /highlight >}}

And import the context provider into your application:

{{< highlight typescript >}}
// index.js
import React from "react";
import { SpeechProvider } from "@speechly/react-client";

ReactDOM.render(
  <React.StrictMode>
    <SpeechProvider appId="YOUR_APP_ID_FROM_SPEECHLY_DASHBOARD">
      <App />
    </SpeechProvider>
  </React.StrictMode>,
  document.getElementById('root')
);
{{< /highlight >}}
</div>

<div class="iOS tabcontent platform code">

The Speechly iOS client is distributed using Swift Package Manager, add it as a dependency to your `Package.swift`:

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
        appId: UUID(uuidString: "YOUR_APP_ID_FROM_SPEECHLY_DASHBOARD")!,
    )
    client.delegate = self
    ...
}
{{< /highlight >}}
</div>

<div class="Android tabcontent platform code">

The client package is available from our [Github repository](https://github.com/speechly/android-client/releases/latest)

Add android-client to your build.gradle dependencies.

{{< highlight gradle >}}
dependencies {
  implementation 'com.speechly:android-client:latest'
}
{{< /highlight >}}

Import the client, as well as the `SpeechlyButton`.

{{< highlight kotlin >}}
import com.speechly.client.speech.Client
import com.speechly.client.slu.*
import com.speechly.ui.SpeechlyButton
{{< /highlight >}}

Instantiate the client in your main activity and add a `SpeechlyButton`. Make sure to replace `YOUR_APP_ID_FROM_SPEECHLY_DASHBOARD` with the correct Speechly App ID.

{{< highlight kotlin >}}
private val speechlyClient: Client = Client.fromActivity(
        activity = this,
        UUID.fromString("YOUR_APP_ID_FROM_SPEECHLY_DASHBOARD")
)

private var button: SpeechlyButton? = null
{{< /highlight >}}
</div>

# Take UI components to use

Ready-made [UI components](/ui-components/) provide a Push-To-Talk Button for
starting and stopping listening for speech, and a display component for showing the returned transcript (not yet available on Android). It is not necessary to use these, but we highly recommend this as a first step to get started quickly.

<div class="tab">
  <button class="tablinks platform WebClient active" onclick="openTab(event, 'platform=WebClient')">Web Components</button>
  <button class="tablinks platform React" onclick="openTab(event, 'platform=React')">React</button>
  <button class="tablinks platform iOS" onclick="openTab(event, 'platform=iOS')">iOS</button>
  <button class="tablinks platform Android" onclick="openTab(event, 'platform=Android')">Android</button>
</div>

<div class="WebClient tabcontent platform code" style="display: block;">

Include the following lines in your `body`:

{{< highlight html >}}
<big-transcript
  placement="top">
</big-transcript>
<push-to-talk-button
  appid="YOUR_APP_ID_FROM_SPEECHLY_DASHBOARD"
  placement="bottom">
</push-to-talk-button>
<error-panel
  placement="bottom">
</error-panel>
{{< /highlight >}}
</div>

<div class="React tabcontent platform code">

Import the components:

{{< highlight typescript >}}
// App.js
import {
  PushToTalkButton,
  BigTranscript,
  ErrorPanel
} from "@speechly/react-ui";

function App() {
  return (
    <div className="App">
      <BigTranscript placement="top"/>
      <PushToTalkButton placement="bottom" captureKey=" "/>
      <ErrorPanel placement="bottom"/>
      <SpeechlyApp />
    </App>
  );
}
{{< /highlight >}}
</div>

<div class="iOS tabcontent platform code">

Initialise the `TranscriptView` and `MicrophoneButtonView`, and add them in the `addViews` function of your manager class.

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

In your main activity, define a touch listener that activates and deactivates audio transmission. Also, in the `onCreate` method assign this listener to `SpeechlyButton`.

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
The basic idea of the client-side API is to provide a “live view” to the ongoing speech segment. This is done by registering a callback function that receives a `Segment` data structure as argument. This data structure represents the ongoing speech segment. Also see our [Client API reference](/client-libraries/client-api-reference/).

After an audio context has started, callback is called every time the Speechly API returns an event that updates the currently ongoing segment.

<div class="tab">
  <button class="tablinks platform WebClient active" onclick="openTab(event, 'platform=WebClient')">Web Components</button>
  <button class="tablinks platform React" onclick="openTab(event, 'platform=React')">React</button>
  <button class="tablinks platform iOS" onclick="openTab(event, 'platform=iOS')">iOS</button>
  <button class="tablinks platform Android" onclick="openTab(event, 'platform=Android')">Android</button>
</div>

<div class="WebClient tabcontent platform code" style="display: block;">

Assign a listener to the `push-to-talk-button` that handles broadcasted updates to the ongoing `SpeechSegment`.

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
</div>

<div class="React tabcontent platform code">
{{< highlight typescript >}}
// SpeechlyApp.js
import { useSpeechContext } from "@speechly/react-client";

function SpeechlyApp() {
  const { segment } = useSpeechContext()

  useEffect(() => {
    if (segment) {
      // Handle speech segment and make tentative changes to app state
      console.log(segment);
      if (segment.isFinal) {
        // Handle speech segment and make permanent changes to app state
        console.log("✅", segment)
      }
    }
  }, [segment])
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

In the `onCreate` method, define the callback to be used for handling a `Segment`.

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

Check out our [examples](https://github.com/speechly/speechly/tree/main/examples) and [demos](https://github.com/speechly/speechly/tree/main/demos) on GitHub.

Also, learn how to [configure](/slu-examples/) your own application.
