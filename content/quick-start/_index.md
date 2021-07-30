---
title: Getting Started
description: Taking your first steps with Speechly.
weight: 1
display: article
category: "User guide"
menu:
  sidebar:
    title: "Getting Started"
    weight: 1
---
# Overview
To take Speechly into use at your *website* or *mobile application*, you must:
1. [Set up a Speechly AppId](/slu-examples/), and
2. Integrate a suitable [Client library](/client-libraries/) to your website / app.

Integrating Speechly to a server-side application happens in the same way, except that you must directly access our [gRPC API](/speechly-api/) from your application.

# 1. Set up an AppId on the Speechly Dashboard

Speechly AppIds are set up using the Speechly [Dashboard](https://www.speechly.com/dashboard). The video below will guide you through the basics of the Dashboard. You an sign-up on the Dashboard either with your Google or GitHub account. After viewing the video, you can set up a simple example application by following the *Quick start* instructions at the [AppId Setup page](/slu-examples).

{{<youtube PVYEMqnykro>}}

# 2. Integrate a suitable Client library

Once you've obtained an AppId, you can proceed with integrating Speechly to your application. We recommend using our [Client libraries](/client-libraries/).

**Web tutorial:** A walk-through on integrating the Speechly Browser-client to a Web based application can be found in this [simple tutorial](https://speechly.github.io/browser-ui/v3/).

<!-- Option 2: As an alternative to the above tutorial, we also provide a [Web Speech API](https://wicg.github.io/speech-api/) compliant [speech recognition polyfill](https://github.com/speechly/speech-recognition-polyfill). This is especially recommended if you already have an application that uses the Web Speech API, and only need speech-to-text functionality. Instructions for deploying a speech-to-text Application ID can be found [here](/quick-start/stt-only). -->

**Android / iOS:** If you're planning to use Speechly on a mobile device, we provide Client libraries for both Android and iOS. These, as well as simple usage instructions are available [here](/client-libraries/usage).

**Server-side applications:** If you need to access the Speechly API from a server-side application, you can do so using our [gRPC API](/speechly-api/). This is a more advanced use-case, however.

# Learn more!

- Read more about how to [Set up the AppId](/slu-examples/) for the needs of your Application.
- Check out some [Example Configurations](/slu-examples/example-configuration/).
- Read about our [UI design philosophy](/design-philosophy/).
- Take a look at our [Development tool offering](/dev-tools).
- Explore the [Documentation](/).
- Browse our [public GitHub repositories](https://github.com/speechly/).
