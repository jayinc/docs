---
title: Speech-to-Text
description: Speechly can also be used as a plain speech-to-text API.
weight: 1
display: article
category: "User guide"
menu:
  sidebar:
    parent: "Speechly Examples"
---

If your application only needs speech-to-text functionalities, we recommend creating an application that does not provide any other features besides speech recognition. Useful text entry and note taking.

# Try it yourself

1. Log-in to the Speechly [Dashboard](https://api.speechly.com/dashboard)
1. Create a new application and select the "Empty" template
1. Click "Deploy" adn wait for the deployment to finish (the status indicator turns green)
1. Copy the `App ID` from the header
1. Run it locally or try it in CodePen

## Run it locally

https://github.com/speechly/speechly/tree/main/templates/empty

```bash
npx degit speechly/speechly/templates/empty my-app
cd my-app
// Add your App ID into index.js
npm install
npm start
```

## Try it in CodePen

Paste `App ID` into the CodePen

https://codepen.io/speechly/pen/VwzoMrW?editors=1010
