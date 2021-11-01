---
title: Product updates
description: New features and improvements to Speechly spoken language understanding API and client libraries 
weight: 3
type: release-notes
menu:
  sidebar:
    title: "Product updates"
    weight: 999
---

# November 1, 2021

- **React Voice Form Components**: A new UI library with multi-modal browser widgets that can be controlled with speech, tap, pointer, and keyboard. Available [with npm](https://www.npmjs.com/package/@speechly/react-voice-forms). Documentation [here](/client-libraries/voice-forms/).
- **Speechly Web UI Components**: Latest version adds support for "Tap-to-Talk" feature. A short tap on the microphone button will start recording, and the connection is closed automatically when the user stops talking.
- **Speechly Command Line Tools**: Version 0.5.4 introduces functionality for evaluating a deployed Speechly configuration using a list of test utterances (text only). Documentation [here](/dev-tools/command-line-client/#evaluate-the-accuracy-of-your-configuration).

# October 8, 2021

- **Speechly Dashboard**: Updated look of main application listing and SAL configuration view with small usability improvements. Three new example configurations for [common use-cases of Voice UIs on the Web](/web-examples/).
- **Speechly Web UI Components**: New versions of our [UI Components](/client-libraries/ui-components/) for web developers, including the [Push-to-Talk Button](/client-libraries/ui-components/push-to-talk-button), [Big Transcript](/client-libraries/ui-components/big-transcript), [Transcript Drawer](/client-libraries/ui-components/transcript-drawer) and [Error Panel](/client-libraries/ui-components/error-panel).
- **Documentation**: [How Speechly Works - The Video Tutorial Series](/quick-start/how-speechly-works/) is a collection of brief introductory videos to help you get started developing with Speechly.

# September 6, 2021

- **Speechly API** Improved handling of initial latency when streaming audio to a new app_id, improved handling of client connections.
- **SLU Engine** New Standard Variable and Entity Type for handling (US style) street addresses.
- **Speechly CLI Tool** Version 0.4.2 released.
- **Browser client** Version 1.0.17 released (with automatic gain control of audio)
- **Several small other improvements and bugfixes across all services**

# June 18, 2021

- **Speechly API** A new and improved load balancer.
- **Browser client** Version 1.0.15, better handling of audio capture and websockets.
- **Various bugfixes**

# May 25, 2021

- **ASR improvements** New baseline ASR model.
- **Dashboard** The dashboard now has a button ("SHOW SAMPLE") that displays a set of random example utterances generated from the given SAL configuration.
- **Web UI components** Major update with a unified API for both JS and React, a new TranscriptDrawer component with just-in-time usage hints for an improved user onboarding experience, a listening prompt to indicate when the app is listening, and a developer-triggerable command to acknowledge that an utterance was received.

# May 11, 2021

- **Browser client** v1.0.13, stability improvements.
- **SLU engine** Make entity and intent detectors more robust against inadvertent non-device-directed speech.
- **Speechly CLI Tool** Version 0.4.1, show amount of annotated audio for each app_id.

# April 23, 2021

- **Speechly CLI Tool** Version 0.4, with support for displaying utterance statistics for each app_id.
- **Documentation** Major update to developer documentation.
- **Small bugfixes** Several fixes to handling entities and segments.

# April 9, 2021

- **iOS client** Version 0.3 released, includes update UI components and other improvements.
- **Project-based login** Support for logging in using a project_id. This allows an application to easily switch between app_ids.

# March 19, 2021

- **SLU engine** Update to entity detection model with increased accuracy.
- **Documentation** More examples of gRPC API usage.
- **Browser client** More robust audio recording.
- **ASR improvements** New baseline ASR model.
- **Small bugfixes**

# March 5, 2021

- **Training time estimates** Changed the way how we estimate deployment times when training the models.
- **Playground** Pressing 'alt' temporarily enables the Try-button so that one can use the Playground with an old model while a new one is being trained.
- **Model deployment** More robust training infrastructure that reduces model training times in certain situations.

# February 22, 2021

- **iOS UI Components** Ready-made [UI components](/client-libraries/ios/ui-components/) for microphone and transcript for hastened development on iOS.
- **Android Client** An Android client for easy integration with Speechly is [now available](https://github.com/speechly/android-client/). The Android client enables quick and efficient development of Speechly applications for native Android applications.
- **Support for new entities** Support for natural time expressions such as "fifteen thirty", "20 past nine" or "5 minutes after midnight" with $SPEECHLY.TIME standard variable and entity type Time.
- **Minor bugfixes** Better support for long utterances, Other fixes

# February 8, 2021

- **Debugging models in Speechly CLI tool** New debugging feature in Speechly CLI tool displays example utterances for a given configuration and calculates statistics about occurrences of intents and entities.
- **Support for unadapted ASR** Typically Speechly SLU models are adapted for a specific use case, which helps improve speech recognition accuracy. Now you can also use unadapted ASR for pure transcription use cases. You can test the speech recognition performance [here](https://api.speechly.com/dashboard/#/playground/ead4b9e7-e5c4-48ed-9dae-3c530916ed76?language=en-US)
- **Support for new entities** Speechly Annotation Language supports natively phone numbers, emails, person names and website addresses. This enables developers to easily build voice experiences that contain these data types, for example something like "Add contact with name Jack Johnston and email address jack dot johnston at gmail dot com"
- **Minor bugfixes**

# January 25, 2021

- **Improved audio handling in browser clients** Streaming audio and handling API results is done by using multiple threads for improved performance. Main UI thread is never blocked by Speechly, resulting in a faster UI.
- **Minor bugfixes**

# January 11, 2021

- **ASR Improvements** New baseline model for speech recognition improves ASR accuracy in all use cases.
- **Improvements to ASR adaptation** Utterances that are out of domain (ie. no example utterances provided in the model configuration) now have better speech recognition results.
