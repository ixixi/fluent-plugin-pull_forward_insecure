# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-pull_forward_insecure"
  spec.version       = "0.0.3"
  spec.authors       = ["Yuri Odagiri"]
  spec.email         = ["ixixizko@gmail.com"]
  spec.summary       = %q{Fluentd plugin to forward data, by pulling from input plugin}
  spec.description   = %q{Fluentd plugin that store data to be forwarded, and send these when client(input plugin) requests it}
  spec.homepage      = "https://github.com/ixixi/fluent-plugin-pull_forward_insecure"
  spec.license       = "APLv2"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency "fluentd"
  spec.add_runtime_dependency "fluent-plugin-buffer-pullpool"
  spec.add_runtime_dependency "fluent-mixin-config-placeholders", ">= 0.3.0"
  spec.add_runtime_dependency "resolve-hostname", ">= 0.0.4"
end
