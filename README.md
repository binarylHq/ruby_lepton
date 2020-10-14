
# Ruby Lepton
[![Gem Version](https://badge.fury.io/rb/ruby_lepton.svg)](https://badge.fury.io/rb/ruby_lepton)

## Description
A Ruby wrapper library for Dropbox JPEG Lepton compression tool.

## Getting started
Install Dropbox Lepton

On macOS with Homebrew:
 ```
 brew install lepton
 ```
On linux:
```
sudo apt update
sudo apt install lepton
```
**This guide assumes you have Dropbox Lepton installed.**

## Installation

```ruby
gem install ruby_lepton
```
or include inside Gemfile
```ruby
gem "ruby_lepton"
```
Install ruby lepton:

    $ bundle exec ruby_lepton install

## Usage

**Compress method**
```ruby
RubyLepton::Base.compress(path_to_source_file, options)
```
returns output file path: `"output/filename.lep"`

**Decompress method**
```ruby
RubyLepton::Base.decompress(path_to_source_file, options)
```
returns output file path: `"output/filename.jpeg"`

`options` can be passed as hash `{binary: true}`

Supported options:
`binary`

## Usage CLI

Generate binstubs for CLI commands:

`bundle binstubs ruby_lepton`

`ruby_lepton` executable will be generated  under `bin/` folder


**Compress a image:**
```
$ bundle exec ruby_lepton compress [PATH] [OPTIONS]
```
**Decompress a file:**
```
$ bundle exec ruby_lepton decompress [PATH] [OPTIONS]
```

File is generated after compression and decompression under `output/` folder

**Options**
```
$ bundle exec ruby_lepton compress path_to_file --verbose
$ bundle exec ruby_lepton decompress path_to_file --no-verbose
```
## Output

#### File generation
By default, file is generated after compression and decompression under `output/` folder
```ruby
RubyLepton::Base.decompress(path_to_source_file)
```

#### Binary data
Binary data will be returned instead of file by passing `{binary: true}` option
```ruby
RubyLepton::Base.decompress(path_to_source_file, {binary: true})
```

File is not generated when `--binary` option is passed


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/binarylHq/ruby_lepton. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/binarylHq/ruby_lepton/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Lepton project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/binarylHq/ruby_lepton/blob/master/CODE_OF_CONDUCT.md).

## Authors and acknowledgment

[![](https://github.com/karandocs.png?size=100)](https://github.com/karandocs)
