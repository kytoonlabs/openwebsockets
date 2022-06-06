# Contributing guidelines

## Before contributing

Welcome to [OpenWebSockets](https://github.com/kytoonlabs/openwebsockets)! Before sending your pull requests, make sure that you **read the entire guide**. If you have any question about the contributing guide, please feel free to [state it clearly in an issue](https://github.com/kytoonlabs/openwebsockets/issues/new).

## Contributing

### Contributor

We are very happy that you would consider contributing! As a contributor, you agree and confirm that:

- You did your work - no plagiarism allowed
  - Any plagiarized work will not be merged
- Your work will be distributed under [MIT License](LICENSE) once your pull request is merged
- Your submitted work follows (or mostly follows) the styles and standards already found in this repo

**New implementations** are welcome! For example, new solutions for an existing problem, add new functionality that doesn't broke the main idea and goals of the project.

**Improving comments** and **writing proper tests** are also highly welcome.

### Contribution

We appreciate any contribution, from fixing a grammar mistake in a comment to implementing complex algorithms or fixing bugs. Please read this section if you are contributing your work.

Please help us keep our issue list small by adding fixes: #{$ISSUE_NO} to the commit message of pull requests that resolve open issues. GitHub will use this tag to auto close the issue when the PR is merged.

#### Coding Style

We want your work to be readable by others; therefore, we encourage you to note the following:

- Please write in PHP 8.1+
- Please put thought into naming of functions, classes, and variables.  Help your reader by using __descriptive names__ that can help you to remove redundant comments
  - Single letter variable names are _old school_ so please avoid them unless their life only spans a few lines
  - Please follow the [PHP Basic Coding Standard](https://www.php-fig.org/psr/psr-1/) so functionNames should be camelCase, CONSTANTS in UPPER_CASE, Name\Spaces and ClassNames should follow an "autoloading" PSR, etc.

- Original code submission require docstrings or comments to describe your work

- OWS is a Laraval Application so, please follow the [Laravel Coding Style](https://laravel.com/docs/9.x/contributions#coding-style)

- Write tests



- Most importantly,
  - **Be consistent in the use of these guidelines when submitting.**
  - Happy coding!
