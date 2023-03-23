## Code Test

This is a pretty basic Rails application with a couple of models and a handful of controllers. It requires Ruby, Rails, and Sqlite.

This simple app allows `Users` (employees at media companies) to manage their `Schedulings` (scheduled media content).

### Setting up the application

1. Setup Ruby in your machine (see `.ruby-version` file)
2. Setup everything with `bin/setup` (see the script for details)
3. Run the test suite with `rake`
4. Start the app with `rails server`
5. Visit http://0.0.0.0:3000 (login as any user in `tests/fixtures/users.yml`)


Currently, users can authenticate in the UI by using a regular form-based authentication mechanism (we store passwords securely). However, in the API, we need to allow users to authenticate using [HTTP digest authentication](https://en.wikipedia.org/wiki/Digest_access_authentication).

## Requirements

* Users will be able to access API resources by providing their credentials using digest authentication.
* Users will continue to be able to access the UI using the same mechanism as today.
* The solution needs to provide a way for pre-existing and new users to get access to the API.
* The password digest needs to stay updated when the password changes.
* Test coverage is desired.

Note that the purpose of this issue is not to implement an HTTP Digest library. You can use any existing implementation.

Feel free to make any changes to the app: updating or installing gems, changing the testing framework