[[ $TMUX = "" ]] && export TERM="screen-256color"
export FZF_DEFAULT_COMMAND='fd --type f'
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:/usr/local/sbin:$PATH:/opt/homebrew/bin"

export RAILS_MAX_THREADS=1

alias pg_start="launchctl load  /opt/homebrew/opt/postgresql@15/homebrew.mxcl.postgresql@15.plist"
alias pg_stop="launchctl unload /opt/homebrew/opt/postgresql@15/homebrew.mxcl.postgresql@15.plist"
alias ember-exam="ember exam --split=2 --parallel | grep \"^not ok\""
alias elixir-lint="mix format --check-formatted && mix lint"
alias migrate-dev="rake db:migrate RAILS_ENV=development"
alias migrate-test="rake db:migrate RAILS_ENV=test"
alias rails-demo="USE_MAILCATCHER=1 MULTITENANT=1 CUSTOMER=demo rails s"
alias lint-rails="bundle exec rubocop"
alias rails-serve="USE_MAILCATCHER=1 rails s"
alias rails-test="RAILS_ENV=test rails s"
alias psql="pgcli"
. /opt/homebrew/opt/asdf/libexec/asdf.sh
alias purge_local_branches="git branch | grep -v "main" | grep -v \"\*\" | xargs git branch -D "
