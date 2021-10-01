---
title: Example configurations for the Web
description: These examples each demonstrate different use-cases of Speechly on the Web.
weight: 4
aliases: [/editing-nlu-examples/example-configuration/]
menu:
  sidebar:
    title: "Example Configurations"
    parent: "Configuring Your Application"
---
You can choose these as a starting point when creating a new application on the [Speechly Dashboard](https://www.speechly.com/dashboard). The examples can be expanded further to build more complex applications.
# Speech-to-text: an empty configuration
<table>
<tr>
<td>
<p>
An empty configuration provides a transcript, but no intents or entities. Use this
<ul>
<li>if your application only needs basic transcription capabilities,
<li>for trying out our non-adapted speech-to-text-service, or
<li>when you want to build your own configuration with custom intents and entities from scratch.
</ul>
</p>
<p>
(Note that also speech-to-text accuracy is affected by the configuration. Especially accuracy on domain-specific vocabulary can be significantly increased by providing these as part of your configuration.)
</p>
</td>
</tr>
</table>

# Ecommerce Voice FAQ
<table>
<tr>
<td width="66%">
<p>Users not finding a piece of information on a complex website is a common UX frustration. This example demonstrates how a voice FAQ service can make your site easier to navigate.</p>
<p>Supports utterances such as
<ul>
<li><i>what is your email address</i></li>
<li><i>tell me about delivery options</i></li>
<li><i>i want to know about your return policy</i></li>
</ul>
</p>
<p>
Click <a href="voice-faq">here for more details</a>.
</p>
</td>
<td><img src="voice-faq.png"><br><a href="https://codepen.io/aukkonen/pen/powYbMd?editors=1010" target="_new">View in Codepen.</a></td>
</tr>
</table>

# Sneaker Shop Search Filters
<table>
<tr>
<td width="66%">
<p>This example demonstrates the technology that underlies our Fashion demo. At the core is a regular faceted search engine, and voice is simply used to manipulate the drop-down filters.</p>
<p>Supports utterances such as
<ul>
<li><i>brand is converse</i></li>
<li><i>color blue</i></li>
<li><i>red sneakers by new balance</i></li>
</ul>
</p>
<p>
Click <a href="search-filters">here for more details</a>.
</p>
</td>
<td><img src="sneaker-filters.png"><br><a href="https://codepen.io/aukkonen/pen/QWgoKWM?editors=1010" target="_new">View in Codepen.</a></td>
</tr>
</table>

# Customer Contact Form
<table>
<tr>
<td width="66%">
<p>Entering data into a Web form can be a daunting task, especially on a mobile device. This example shows how to set up a form so that it can be filled out with voice.</p>
<p>Supports utterances such as
<ul>
<li><i>my name is sherlock holmes</i></li>
<li><i>i live at one twenty two baker street</i></li>
<li><i>email sherlock at gmail dot com</i></li>
</ul>
</p>
<p>
Click <a href="contact-form">here for more details</a>.
</p>
</td>
<td><img src="contact-form.png"><br><a href="https://codepen.io/aukkonen/pen/abwMmNM?editors=1010" target="_new">View in Codepen.</a></td>
</tr>
</table>
