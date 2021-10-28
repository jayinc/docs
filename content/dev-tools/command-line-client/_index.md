---
title: Speechly Command Line Tool
description: The Speechly Command Line Tool provides additional configuration options and allows you to efficiently integrate Speechly to your development workflow.
weight: 5
category: "User guide"
aliases: [/command-line-client/]
menu:
  sidebar:
    title: "Command Line Tool"
    weight: 8
    parent: "Development tools"
---
<script>
  // updateTab function specific to this pages' tabs; called by updateTab() in app.js
  function updateTab() {
    let urlParams = new URLSearchParams(window.location.search);
    selectTab("platform", urlParams.get("platform"));
  }
</script>

# What is the Command Line Tool and what does it do?

The Command Line Tool (CLI) is a simple program that works in a Unix shell or Windows Terminal. It allows you to create, maintain and deploy Speechly applications on the command line. It provides the same functionalities as the Dashboard, as well as the following additional benefits:

1. The CLI gives you access to some advanced configuration options (most notably [Imports and Lookups](/slu-examples/imports-and-lookups/)) that are not available on the Dashboard.
2. Using the CLI allows you to use standard tools to maintain Speechly configurations as part of your other development workflow.

# Installation

The tool is open-source and can be found at our [Github repository](https://github.com/speechly/cli). For easy installation, we also provide binary releases for macOS, Linux and Windows. Once installed, the tool is invoked by typing `speechly`.

Select your OS for quick installation instructions.
<div class="tab">
  <button class="tablinks platform macos active" onclick="openTab(event, 'platform=macos')">MacOS</button>
  <button class="tablinks platform windows" onclick="openTab(event, 'platform=windows')">Windows</button>
  <button class="tablinks platform linux" onclick="openTab(event, 'platform=linux')">Linux</button>
</div>

<div class="platform macos tabcontent code" style="display: block;">
If you are using MacOS, the easiest way to install is by using <a href="https://brew.sh">Homebrew</a>. 

```bash
$ brew tap speechly/tap
$ brew install speechly
```
After tapping, brew updates will include the new versions of `speechly`.
</div>

<div class="platform windows tabcontent code">
If you are using Windows, the easiest way to install is by using <a href="https://github.com/lukesampson/scoop">Scoop</a>.

```posh
C:\> scoop bucket add speechly https://github.com/speechly/scoop-bucket
C:\> scoop install speechly
```
You can update the tool by using `scoop update`.
</div>

<div class="platform linux tabcontent code">
For Linux, we provide a pre-compiled x86_64 binary at
<a href="https://github.com/speechly/cli/releases/latest">https://github.com/speechly/cli/releases/latest</a>.
The release package contains a README as well as the binary. Just put it anywhere on your PATH and you are good to go.
<br><br>
Of course you can also build the client from source if you need to run this on an exotic architecture.
</div>

# Adding an API token
After installing the CLI, you must obtain an API token from the [Dashboard](https://api.speechly.com/dashboard). Please follow these steps to create an API token:

1. Log on to the [Dashboard](https://api.speechly.com/dashboard).
2. Click on the project menu in the top right corner (to the left of your user name), and select "Project settings".
3. On the page that opens, click on "Create API Token" and give the token a name (this can be whatever).
4. Click "Show" to see the API Token (It is a long, random string.), and click "Copy" to copy the token to the clipboard.

You have now created an API token for the project that is active on the Dashboard. It provides access to all app_ids within the active project.

Once you have copied the API token to the clipboard, run the command below where `<API_Token>` has been replaced with your API token. (Simply paste it in your terminal.) You should also specify a name for the project by replacing `project_name` with something descriptive.
```bash
speechly config add --name project_name --apikey <API_Token> --host api.speechly.com
```
Now you are ready to start using the CLI!


# Managing multiple projects

If you have split your applications to multiple projects, you must configure the CLI for each of the projects by following the steps in [Adding an API token](#adding-an-api-token) separately for each project. NOTE: Before selecting "Project settings", please ensure that you have the correct project currently selected in the Dashboard!

You can see a list of all projects (called "Contexts" in the CLI) that have an API token, as well as the one that is currently active, by invoking
```bash
speechly config
```
The project that is currently active is indicated by "Current config" in the listing.

Switching between projects is done by invoking
```bash
speechly config use --name name_of_my_other_project
```


# Basic usage and getting help

This is a brief overview of how the CLI works in general. A [reference](#cli-reference) of the most important commands is at the end of this document.

The CLI follows an approach similar to e.g. `git` or `docker` where different functionalities of the tool are accessed by specifying a command followed by arguments to this command. The tool provides usage instructions when invoked without sufficient parameters.

For example, invoking
```bash
speechly
```
without other arguments, will print a list of all commands supported by the CLI. Running `speechly command` will print a brief usage guide for the given `command`, e.g. typing
```bash
speechly create
```
gives instructions on how to create a new application.


# Deploying with the CLI

When deploying a Speechly application with the CLI, the application configuration (SAL templates, Entity Data Types, etc) are defined in a YAML formatted file. This *Configuration YAML*, together with other configuration files if needed, should all be put in the same directory. The contents of this directory are deployed by invoking
```bash
speechly deploy name_of_directory -a deployment_app_id -w
```
where `deployment_app_id` should be replaced with the app_id you want to deploy the application to. The `-w` flag means the Command Line Tool will wait until model training is complete.

Note that the CLI builds and uploads a deployment package that contains *all files* in the specified directory! It is thus highly recommended to store there only files that are relevant to the configuration. In the simplest case this is only the Configuration YAML.


# Configuration YAML
The configuration YAML defines a dictionary of `(key, value)` pairs that contain definitions both for SAL templates and Entity Data Types as described below. Also, [Imports and Lookups](/slu-examples/imports-and-lookups/) are configured within the same Configuration YAML.

## Defining SAL templates
Templates are defined with key `templates` within a "Literal Block Scalar":
```yaml
templates: |
  SAL line 1
  SAL line 2
  ...
```

## Defining Entity Data Types
Entity Data Types are defined with key `entities` that has a list of `(name, type)` pairs as its value:
```yaml
entities:
 - name: entity1_name
   type: entity1_type
 - name: entity2_name
   type: entity2_type
   ...
```

## Example configuration YAML
This is a simple example that shows what a complete configuration YAML with entity types and templates looks like:
```yaml
entities:
 - name: product_name
   type: string
 - name: product_amount
   type: number
 - name: delivery_date
   type: date_future
templates: |
  product = [apples | oranges | bananas | grapefruits | mangoes | apricots | peaches]
  amount = [1..99]
  *add_to_cart {add} $amount(product_amount) $product(product_name)
  *set_delivery_date [{schedule} delivery for | delivery on] $SPEECHLY.DATE(delivery_date)
```

## Suggested workflow

1. Create a directory for your application's configuration.
2. Save files in git or other version control system.
3. Use `speechly deploy` in your CI pipeline for deploying the configuration.


# Updating the API token

Updating the API token of a project in the command line tool is done by modifying the CLI config file. You can see where the config file is located by invoking
```
speechly config
```
The first output line should indicate the "Config file used". The name of the config file should be `.speechly.yaml` and it should be located in your home directory. Open this file in a text editor. You should see something like
```yaml
contexts:
- apikey: A_REALLY_LONG_SEEMINGLY_RANDOM_STRING
  host: api.speechly.com
  name: my_project
current-context: my_project
```
where `A_REALLY_LONG_SEEMINGLY_RANDOM_STRING` is the current API token of project `my_project`. If you have several projects, they are all shown separately, each with their own API token.

You can generate a new API token by following steps 1-4 in [Adding an API token](#adding-an-api-token). (Ensure that you are viewing the appropriate project in the Dashboard before generating the token!) When you have copied the new token, replace `A_REALLY_LONG_SEEMINGLY_RANDOM_STRING` with the new token, which is just another really long seemingly random string. Save the config file, and the new API token for project `my_project` is immediately in use.

If you have several projects, you must separately replace the API token for each of these by creating a new token for every project in the Dashboard, and pasting it in the config file.


# Evaluate the accuracy of your configuration

Once you have deployed a configuration, it is useful to evaluate the configuration with a set of test utterances that users of your application might say. Evaluation helps you to verify that these utterances work on your app, and identify those test utterances that are not recognized properly. To use the evaluation feature, you need both the set of test utterances, as well as ground truth annotations (correct intents and entities) for these.

Evaluation consists two steps:
1) Run `speechly annotate` to submit your test utterances to the API to be annotated.
2) Run `speechly evaluate` to compute accuracy between the API annotations and the ground truth annotations.

## Annotate test utterances with the API

To run this command, you need a text file with a single utterance on each line (without any annotations!). Suppose the file `test_utterances.txt` contains four test utterances:

```txt
can i see blue sneakers
i want two of those
my address is one twenty three imaginary road
delivery tomorrow
```

Run the following command, where `APP_ID` is the App id to which you have deployed the configuration you want to test.

```bash
speechly annotate -a APP_ID --input test_utterances.txt > annotated_utterances.txt
```

The resulting `annotated_utterances.txt` contains the test utterances as annotated by the API in the same order as `test_utterances.txt`. For example, depending on how the intents and entities are configured, it might contain:

```yaml
*search can i see [blue|blue](color) [sneakers|category_sneaker](product)
*add_to_cart i want two of those
*set_address my address is [one twenty three imaginary road|123 Imaginary Rd.](address)
*set_delivery_date delivery [tomorrow|2021-10-19](delivery_date)
```

The annotations are given in a syntax similar to [Speechly Annotation Language](/slu-examples/cheat-sheet/), with the exception that each entity has two values that are separated by a `|` character. Of these, the first is the original transcript, while the second is the post-processed value that depends on the [Entity data type](/slu-examples/postprocessing/). If an entity has type `string`, then both the transcript and post-processed value are equal.

For example, above in the first test utterance, the entity `color` has the value `[blue|blue]` meaning that `color` has type `string`, while the entity `product` has the value `[sneakers|category_sneaker]`, meaning that `product` must have a lookup table to map `sneakers` to the canonical name `category_sneaker`. Likewise, the remaining entities, `address` and `delivery_date`, have a suitable type associated with them.

### Annotate with reference date

The entities with type *date* let users to utter dates relative to the current date. For example, the utterance "today" normally resolves to the current date. The postprocessed value therefore depends on the day you test the utterance. When you test such utterances, specify a `reference_date` to fix the resolved dates.

```bash
speechly annotate -a APP_ID --reference-date 2021-09-12 --input test_utterances.txt
```
This command applied to previous example now yields a different annotation for `delivery_date` that is type *date*.
```yaml
...
*set_delivery_date delivery [tomorrow|2021-09-13](delivery_date)
...
```

## Compute accuracy

To compute accuracy, you need both the annotations from the Speechly API, as obtained in previous step, as well as ground truth annotations. The ground truth annotations must be given using the same syntax as the API returns. For example, suppose the file `ground_truth.txt` contains:
```yaml
*search can i see [blue|blue](color) [sneakers|category_sneaker](product)
*add_to_cart i want [two|2](amount) of those
*set_address my address is [one twenty three imaginary road|123 Imaginary Rd.](address)
*set_delivery_date delivery [tomorrow|2021-09-12](delivery_date)
```
These are compared against the API generated annotations by running:

```bash
speechly evaluate --input annotated_utterances.txt --ground-truth ground_truth.txt
```
the command outputs:
```
Ground truth had:
  *add_to_cart i want [two|2](amount) of those
but prediction was:
  *add_to_cart i want two of those

Ground truth had:
  *set_delivery_date delivery [tomorrow|2021-09-12](delivery_date)
but prediction was:
  *set_delivery_date delivery [tomorrow|2021-10-19](delivery_date)

Matching rows out of total:
2 / 4
Accuracy:
0.50
```
In the first case the prediction is missing the `amount` entity. This type of errors can be mitigated by ensuring that the utterance appears in the configuration and is properly annotated. In the second case the `delivery_date` entity was correctly recognized (from the word "tomorrow"), but since the return value of relative dates resolves to the current day, it is a good idea to make sure all the relative dates in your ground truth data are computed against some fixed reference date, and then use that when running `speechly annotate` as described above.

If you modify and re-deploy your application, you can run the evaluation again with the same test utterances (`test_utterances.txt`) and ground truths (`ground_truth.csv`). Note that you always have to first run `speechly evaluate annotate` to get the API annotations, and then `speechly evaluate accuracy` to compare these against the ground truths.

## Tip: Prepare ground truth by pre-annotating the test utterances

Creating the ground truth annotations manually from scratch can be tedious. To reduce the amount of work this requires, you can use the annotations generated by `speechly evaluate annotate` as a starting point. Assuming you already have the non-annotated test utterances in `test_utterances.txt`, run
```bash
speechly annotate -a APP_ID --input test_utterances.txt > ground_truth.txt
```
Next, go through the content of `ground_truth.txt` and fix all errors in intents or entities that you find.


# CLI Reference
The Command Line Tool has a built-in help functionality. This is a brief reference of the most important commands.

## List applications
You can print all applications in the currently active project by invoking:
```bash
speechly list
```

## Create a new application
A new Speechly app_id is created by invoking
```bash
speechly create -l en-US -n name-of-my-app
```
where you should replace `name-of-my-app` with a descriptive name of the application. The command will print the newly created app_id.

## Deploy a configuration
The simplest way is to enter the directory that contains your configuration files, and run
```bash
speechly deploy . -a APP_ID
```
where `APP_ID` is replaced with the app_id to which you want to deploy the configuration. (Note that `APP_ID` must belong to the project that is currently active in the Command Line Tool. See also `speechly config`.)

## See usage statistics
You can view statistics about the usage of your applications by typing
```bash
speechly stats
```
This will print hourly usage statistics for all applications in the current project for the past two weeks. The output shows the total number of utterances, as well as the total amount of *received* and *annotated* audio (in secods), respectively.

You can view statistics only of a given application by adding the flag `-a APP_ID`, where `APP_ID` is the relevant application id. To adjust the time interval of the results, use the `--start-date` and `--end-date` flags. For example
```bash
speechly stats -a APP_ID --start-date 2021-03-01 --end-date 2021-04-01
```
shows usage statistics for March 2021 (the `--end-date` value is exclusive) for `APPLICATION_ID`.

## Print random Example utterances
When working on a configuration, it can be very useful to inspect the Example utterances that the templates are expanded to. This way you can spot mistakes and other problems with your configuration.

Enter the directory that contains your configuration files, and run
```bash
speechly sample . -a APP_ID
```
and again replace `APP_ID` with a valid app id from your current project.

By default the above command returns 100 randomly generated Example utterances from the configuration. If you want to see a larger sample, you can specify the number of Example utterances to generate with the `--batch_size` (or `-s` for short) flag:
```bash
speechly sample . -a APP_ID --batch_size 1000
```
samples 1000 Example utterances.

## Evaluate your configuration
You can evaluate a deployed configuration with the CLI. Assuming you have a set of test utterances in file `test_utterances.txt`, the corresponding ground truth annotations in file `ground_truth.txt`, and the configuration you want to test deployed to `APP_ID` (replace this with your actual App id), first run
```bash
speechly annotate -a APP_ID --input test_utterances.txt > annotated_utterances.txt
```
and then
```bash
speechly evaluate --input annotated_utterances.txt --ground-truth ground_truth.txt
```
The command will output those test utterances that failed, as well as the total number of these utterances that passed without error. For more details about evaluation, please see [above](#evaluate-the-accuracy-of-your-configuration).
