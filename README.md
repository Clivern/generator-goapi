<p align="center">
    <img src="https://raw.githubusercontent.com/clivern/generator-goapi/main/app/templates/assets/logo.png?v=1.0.3" width="110" />
    <p align="center">Yeoman Generator for Golang Microservices</p>
    <p align="center">
        <a href="https://www.npmjs.com/package/generator-goapi">
            <img src="https://img.shields.io/badge/Version-1.0.3-cyan.svg">
        </a>
        <a href="https://github.com/clivern/generator-goapi/blob/master/LICENSE">
            <img src="https://img.shields.io/badge/LICENSE-MIT-pink.svg">
        </a>
    </p>
</p>

## Documentation

#### Usage

Install Yeoman

```zsh
$ npm install -g yo
```

Install with NPM

```zsh
$ npm install generator-goapi

$ yo goapi

? Author Name: clivern
? Package Name: helmet
? Package Title: Helmet
? Package Description: Orders Microservice
? Output Directory: helmet
   create helmet/.goreleaser.yml
   create helmet/.mergify.yml
   create helmet/CODE_OF_CONDUCT.md
   create helmet/CONTRIBUTING.md
   create helmet/Dockerfile
   create helmet/LICENSE
   create helmet/Makefile
   create helmet/README.md
   create helmet/config.dist.yml
   create helmet/config.prod.yml
   create helmet/config.test.yml
   create helmet/config.toml
   create helmet/.gitignore
   create helmet/go.mod
   create helmet/go.sum
   create helmet/helmet.go
   create helmet/renovate.json
   create helmet/.github/CODEOWNERS
   create helmet/.github/FUNDING.yml
   create helmet/.github/dependabot.yml
   create helmet/.github/workflows/build.yml
   create helmet/.github/workflows/release.yml
   create helmet/.github/workflows/release_pkg.yml
   create helmet/.github/ISSUE_TEMPLATE/bug_report.md
   create helmet/.github/ISSUE_TEMPLATE/feature_request.md
   create helmet/assets/logo.png
   create helmet/bin/release.sh
   create helmet/cache/.gitignore
   create helmet/cmd/license.go
   create helmet/cmd/root.go
   create helmet/cmd/server.go
   create helmet/cmd/version.go
   create helmet/core/controller/health.go
   create helmet/core/middleware/correlation.go
   create helmet/core/model/.gitkeep
   create helmet/core/module/.gitkeep
   create helmet/core/service/correlation.go
   create helmet/core/service/file_system.go
   create helmet/core/util/map.go
   create helmet/core/util/map_test.go
   create helmet/deployment/.gitkeep
   create helmet/deployment/docker/.gitkeep
   create helmet/deployment/k8s/.gitkeep
   create helmet/deployment/linux/install.sh
   create helmet/deployment/linux/upgrade.sh
   create helmet/docs/.gitkeep
   create helmet/pkg/loader.go
   create helmet/pkg/server_mock.go
   create helmet/rfc/.gitkeep
   create helmet/sdk/.gitkeep
```

Or with Yeoman

```zsh
$ yo

? 'Allo Clivern! What would you like to do? Install a generator
? Search npm for generators: generator-goapi
```

## Versioning

For transparency into our release cycle and in striving to maintain backward compatibility, generator-goapi is maintained under the [Semantic Versioning guidelines](https://semver.org/) and release process is predictable and business-friendly.

See the [Releases section of our GitHub project](https://github.com/clivern/generator-goapi/releases) for changelogs for each release version of generator-goapi. It contains summaries of the most noteworthy changes made in each release.

## Bug tracker

If you have any suggestions, bug reports, or annoyances please report them to our issue tracker at https://github.com/clivern/generator-goapi/issues

## Security Issues

If you discover a security vulnerability within generator-goapi, please send an email to [hello@clivern.com](mailto:hello@clivern.com)

## Contributing

We are an open source, community-driven project so please feel free to join us. see the [contributing guidelines](CONTRIBUTING.md) for more details.

## License

© 2021, Clivern. Released under [MIT License](https://opensource.org/licenses/mit-license.php).

**generator-goapi** is authored and maintained by [@Clivern](http://github.com/clivern).
