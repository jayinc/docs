---
title: Quick Start
description: The Speechly Quick Start helps you get started on developing with Speechly on the Web.
weight: 1
display: article
category: "User guide"
menu:
  sidebar:
    title: "Quick Start"
---
# Getting started with Speechly Web Components

The video below will in five minutes teach you the basics of using the Speechly [Dashboard](https://www.speechly.com/dashboard) and Playground, as well as guide you through the three steps of

1. Setting up the Speechly microphone UI component,
2. Configuring an Appid, and
3. Binding the events returned by our API to UI functions.

{{<youtube QmpFAJmF1gk>}}

<br>

The Codepen example used in the video can be accessed [here](https://codepen.io/speechly/pen/MWvNEoM?editors=1010).

# System Overview

Adding voice functionalities to a website (or mobile application) with Speechly is similar to traditional event driven UI programming. In "non-voice" UIs callbacks are triggered by the user interacting with some UI component on the website / application. In Speechly powered UIs this event triggering happens via the user talking.

When developing a Speechly Voice UI you can focus on defining what happens when the user says something. The difficult part of turning speech to events is taken care of by our Client libraries and the Speechly API. The figure below illustrates this.

{{< figure src="speechly_architecture.jpg" alt="Speechly Application Architecture Overview" title="Speechly Application Architecture Overview" >}}

# What next

1. Check out [Example Configurations for the Web](/web-examples/) and try them out in CodePen.
2. Have a look at Speechly's [Client Libraries](/client-libraries/) to discover the best way to introduce voice input to your app. For example, the above CodePens use the [Web Components](https://docs.speechly.com/client-libraries/usage/?platform=WebClient).
3. The above video is the fifth part of a [five-part series](how-speechly-works) where we introduce our technology, introduce some basic concepts and briefly explain how things work under the hood.
4. Read about how to [Configure](/slu-examples/) Speechly for the needs of your Application.
5. Take a look at our [Development tool offering](/dev-tools).
6. Browse our [public GitHub repositories](https://github.com/speechly).

# Get help

For general discussion or questions, please use our [GitHub Discussion forum](https://github.com/speechly/speechly/discussions).

For feature requests or bug reports, please file a [GitHub Issue](https://github.com/speechly/speechly/issues).

Try to be as specific as you can. Describe what you are trying to do, how you do it, and what errors (if any) you are getting. We are happy to help you forward, and you will receive an answer much quicker if your question is formulated in a way so that we can easily understand what your problem might be.
