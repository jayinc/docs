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
# Overview
Adding voice functionalities to a website (or mobile application) with Speechly is very similar to traditional event driven UI programming. The main difference is that whereas in "non-voice" UIs callbacks are triggered by the user interacting with some component on the website / application. In Speechly powered UIs this event triggering happens via the user talking.

But as a developer you can still focus on defining what happens when the user says something. The difficult part of turning speech to events is taken care of by our Client libraries and the Speechly API. The figure below illustrates this.

{{< figure src="speechly_architecture.jpg" alt="Speechly Application Architecture Overview" title="Speechly Application Architecture Overview" >}}

# Getting started with the Speechly Web Components
The video below will teach you the basics of using the Speechly [Dashboard](https://www.speechly.com/dashboard) and Playground, as well as guide you through the three steps of
1. setting up the Speechly microphone UI component,
2. configuring an Appid, and
3. binding the events returned by our API to UI functions.

Note that these steps are also related to the three parts of the architecture figure above.

{{<youtube QmpFAJmF1gk>}}

<br>

The Codepen example used in the video can be accessed [here](https://codepen.io/hheikinh/pen/ExmMxpZ).

Also, the video is the fifth part of a [five-part series](how-speechly-works) where we introduce our technology, introduce some basic concepts and briefly explain how things work under the hood.

More details about the Speechly Web Components can be found in [this tutorial](https://speechly.github.io/browser-ui/v3/). Note that it is only one of the many [Client Libraries](/client-libraries/) that we provide.

# Learn more!

- Read about how to [Configure](/slu-examples/) Speechly for the needs of your Application.
- Take a look at our [Development tool offering](/dev-tools).
- Check out some [Example Configurations](/slu-examples/example-configuration/).
- Explore the [Documentation](/).
- Browse our [public GitHub repositories](https://github.com/speechly/).
