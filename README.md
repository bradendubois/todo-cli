# 📄 todo-cli

A minimal, command-line to-do manager.

## Installation

The repository can be cloned as follows:

```shell_script
git clone https://github.com/bradendubois/todo-cli
cd todo-cli
```

## Usage

Call with a flag to indicate functionality, as well as required parameters

- **add**: todo \(-a | -add | --add\) \<priority flag\> \<message to add\>
  - Priority flags are:
    - **Low**: -l | --low
    - **Medium**: -m | --medium
    - **High**: -h | --high

- **clear all**: todo (-clear | --clear)

- **complete**: todo \(-c | --complete\) \<lines to complete\>
  - Either provide one line (1-based), or 2 to represent an upper and lower range of items to complete
  - **Examples**:
    - todo -c 5: completes item 5
    - todo -c 2 4: completes items 2-4

- **help**: todo \(-h | --help\)
  - See this message

- **list**: todo \(-l | -ls | --list\)

- **remove**: todo \(-r | -rm | --remove\) \<lines to complete\>
  - Follows the same rules as complete

