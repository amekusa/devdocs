with (import <nixpkgs> {});
mkShell {
  buildInputs = [
    ruby_3_3
  ];
  shellHook = ''
    bundle config path 'vendor/bundle' --local
    alias thor='bundle exec thor'
    alias rackup='bundle exec rackup'
    echo
    echo '# Install deps'
    echo 'bundle'
    echo
    echo '# Download docs'
    echo 'thor docs:download html css javascript'
    echo
    echo '# List available docs'
    echo 'thor docs:list'
    echo
    echo '# Launch server'
    echo 'rackup'
  '';
}

