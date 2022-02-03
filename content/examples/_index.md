---
title: Speechly Examples
description: Examples of using Speechly for different use-cases.
weight: 7
display: article
aliases: ["/editing-nlu-examples/example-configuration/", "/web-examples/"]
menu:
  sidebar:
    title: "Examples"
---

Each example is a complete application consisting of a configuration and a web application. You can choose to run it locally using our handy [react templates](https://github.com/speechly/speechly/tree/main/templates) or straight in the browser using the linked CodePen. 

# [Speech-to-Text](./stt-only/)

An empty configuration provides a transcript, but no intents or entities.

Useful when

- your application only needs basic transcription capabilities, or
- for trying out our non-adapted speech-to-text-service, or
- when you want to build your own configuration with custom intents and entities from scratch.

Note that also speech-to-text accuracy is affected by the configuration. Especially accuracy on domain-specific vocabulary can be significantly increased by providing these as part of your configuration.

# [Product Filtering](./search-filters/)

This example demonstrates the technology that underlies our Fashion demo. At the core is a regular faceted search engine, and voice is simply used to manipulate the drop-down filters.

Supports utterances such as

- _brand is converse_
- _color blue_
- _red sneakers by new balance_

# [Contact Form](./contact-form/)

Entering data into a Web form can be a daunting task, especially on a mobile device. This example shows how to set up a form so that it can be filled out with voice.

Supports utterances such as

- _my name is sherlock holmes_
- _i live at one twenty two baker street_
- _email sherlock at gmail dot com_

# [Command and Control](./voice-faq/)

Users not finding a piece of information on a complex website is a common UX frustration. This example demonstrates how a voice FAQ service can make your site easier to navigate.

Supports utterances such as

- _what is your email address_
- _tell me about delivery options_
- _i want to know about your return policy_
