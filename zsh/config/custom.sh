[[ $TMUX = "" ]] && export TERM="screen-256color"
export FZF_DEFAULT_COMMAND='fd --type f'
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/.fnm:$PATH"

eval "$(fnm env --multi)"
export RAILS_MAX_THREADS=1

if [[ -s $HOME/.rvm/scripts/rvm ]]; then
  source $HOME/.rvm/scripts/rvm;
fi
alias pg_start="launchctl load /usr/local/opt/postgres/homebrew.mxcl.postgresql.plist"
alias pg_stop="launchctl unload /usr/local/opt/postgres/homebrew.mxcl.postgresql.plist"
alias ember-exam="ember exam --split=2 --parallel | grep \"^not ok\""
alias elixir-lint="mix format --check-formatted && mix lint"
alias migrate-dev="rake db:migrate RAILS_ENV=development"
alias migrate-test="rake db:migrate RAILS_ENV=test"
alias rails-demo="USE_MAILCATCHER=1 MULTITENANT=1 CUSTOMER=demo rails s"
alias lint-rails="bundle exec rubocop"
alias rails-serve="USE_MAILCATCHER=1 rails s"
alias rails-test="RAILS_ENV=test rails s"
