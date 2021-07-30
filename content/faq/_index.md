---
title: FAQ
description: Frequently Asked Questions about the Speechly SLU platform and API. 
weight: 100
display: article
menu:
  sidebar:
    title: "FAQ"
---

# Building models

- **What is an utterance?**
An utterance is something that the end-user says. It can consist of one or more segments. See [SLU Examples](/slu-examples/).

- **Why must I provide example utterances?**
The Speechly API relies on machine learning. The example utterances are used both to adapt the speech recognition model, as well as to train models for detecting intents and entities for your specific application.

- **How many example utterances do I need to train my models with?**
It depends fully on the complexity of the model. The amount of the examples is not as crucial as diversity of the phrases that appear in the examples, and coverage of entity values. A smaller amount of examples that properly cover all aspects of your application is much better than a huge amount of very similar utterances.

- **What if I do not provide any example utterances?**
You can do this. However, then the API will not identify any intents nor entities, and only acts as a speech-to-text API.

- **What is an AppId and how do I use it?**
The AppId identifies the specific model that you want to use in your application. After having [set one up](/slu-examples/) on the Dashboard and deployed it, you must use the AppId when integrating a Client library to your application.

- **How do I test my model in practice?**
You can test your model in the Speechly Playground, and share access to it in our Dashboard.

- **How long does it take to the train the model?**
It depends heavily on the number of example utterances. It shouldn't take more than a few minutes with most setups. You will get a notification once the training is completed.

- **How do I share my model for someone else to test it?**
You can do this easily in the Playground window by clicking the `Share` button located on the top right corner.
 
- **How do I connect my client to the model I've built?**
The Speechly API can be accessed from a variety of devices and platforms. The easiest way is to use our [Client libraries](/client-libraries/). If these are not suitable for your use-case, please check out our [gRPC API documentation](/speechly-api/).

- **How can I evaluate the performance of my model?**
We will launch our more advanced analytics features shortly, but in the meanwhile, you can test your model in the Speechly Playground.

# User data

- **How do I delete my data?**
You can delete all user data from the Admin Dashboard. If you want a verification that all data is deleted, you can contact [privacy@speechly.com](mailto:privacy@speechly.com)

- **How is my data protected?**
We protect all data using industry best practices. Speechly can use the data you provide us to train our own models in free tier. You can revisit our privacy policy [here](https://www.speechly.com/privacy/).

# Developing on Speechly

- **How can I find my Speechly API token for command line tool?**
You can find your API token under Project Settings. Remember that you need to save the token as there's no way to see it after you've created it.

{{<videoloop src="cli-token.webm" >}}

- **How can I integrate Speechly to my app?**
The easiest way to start developing on Speechly is to use our [client libraries](/client-libraries/)

- **How can I integrate Speechly to my app built on another platform?**
You can either use our [API reference](/speechly-api/api-reference/) or [contact us](mailto:hello@speechly.com).

- **What is device ID and why do I need that?**
The device ID is a unique identifier for the end-user device. It is used in our API to differentiate between the different devices that use the model. The device ID is used to adapt the speech recognition to the particular acoustic properties of the microphone on the device, the speaker, and the usage context of the application. Keeping this ID persistent and distinct for each user/device will significantly improve the accuracy of the voice user experience. 

- **The microphone doesn't work on iOS and Mobile Safari?**
iOS doesn't allow asking for microphone permissions on the page load, but rather, after user interaction. While some browsers might support other patterns, this is the best practice on all browsers, because the user should explicitly initiate the action that requires a microphone. If the permissions are asked on the page load, the user might not understand why it is needed, and may simply deny access.

# Troubleshooting

- **Why I'm getting bad results on browser?**
If you are experiencing bad speech recognition results on browser clients (React and browser) it may due to corrupted audio. As Speechly is optimized for low latency and real-time audio, the audio samples can become corrupted if the main thread is blocked for too long times.

Make sure your application's main thread is not blocked by moving all resource heavy computation to other threads by using Web Workers.

- **Why are my intents and entities not recognized correctly?**
The Speechly SLU model is based on machine learning. If your intents and entities are not recognized correctly, we recommend you to add more example utterances to the configuration that contain those intents and entities. Re-deploy the application and try again.

- **I'm having a weird issue and can't find the answer from the documentation, or the documentation is not correct.**
Please [send us an email](mailto:hello@speechly.com) and we can help you forward.

- **Why do I get "Mic consent denied" error in the Playground? Why doesn't my microphone work in the Playground?**
Once you start the Playground, you'll have to click on `Tap to start` and give permissions for your browser to access the microphone. Here's a short clip that shows the process:

{{<videoloop src="permissions-in-playground.webm" >}}
 
If you have denied access to the microphone and don't get the dialog for microphone permissions, see these browser-specific instructions:

* [Chrome](https://crazycall.zendesk.com/hc/en-us/articles/115003407512-How-do-I-reallow-access-to-my-microphone-in-Chrome)
* [Safari](https://support.apple.com/guide/safari/customize-settings-per-website-ibrw7f78f7fe/13.0/mac/10.15)
