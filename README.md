# reverse-proxy

Simple reverse proxy setup using [rack-reverse-proxy].

[rack-reverse-proxy]: https://github.com/jaswope/rack-reverse-proxy

## Description

This is a simple web application set up using the [rack-reverse-proxy] gem. The
app allows for proxying to multiple hosts by specifying them each through the
environment.

## Usage

Run the application using `rackup`: 

```
$ rackup config.ru
```

If you want to disable the Rack linter, you want to run it in deployment mode.
You most likely want to do this if either you want to set up a proxy towards a
Rails application, since Rails gives back a response that the linter complains
about. To do this, set the `-E` option:

```
$ rackup -E deployment config.ru
```

This starts a web server on port 9292.

## Installation

Install the dependency and you should be good to go:

```
$ bundle install
```

## Contributing

Please check our [playbook] for guidelines on contributing.

[playbook]: https://github.com/hyperoslo/playbook/blob/master/GIT_AND_GITHUB.md

## Credits

[Hyper] made this. We're a digital communications agency with a passion for good
code, and if you're using this library we probably want to [hire you].

[hyper]: http://hyper.no
[hire you]: http://www.hyper.no/jobs

## License

This project is available under the MIT license. See the [LICENSE].

[license]: https://github.com/hyperoslo/hyper-content-for-angular/blob/master/LICENSE.md
