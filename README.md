Run Interactive
===============

Run Interactive is a Vim plugin for selectively running commands via an
interactive shell. This allows you to take advantage of custom functions,
aliases, etc that are configured via your login shell scripts.

Vim supports treating the shell as an interactive shell, but this has
[performance and maintenance concerns][]. This plugin allows for temporarily
setting Vim to use an interactive shell, then returns to default
non-interactive configuration after executing the specified command.

It provides a single command, `RunInInteractiveShell`, which allows you to
run a command via an interactive shell. For instance, assume you have a
a git alias called `update` defined in your `~/.gitconfig`. By default you
would not be able to run this command from within Vim, but with this plugin
you can run it via:

``` vim
:RunInInteractiveShell git update
```

[performance and maintenance concerns]: https://github.com/tpope/vim-sensible/issues/29

Installation
------------

Install with [Vundle][] by adding the following line to your `vimrc`:

``` vim
Bundle 'christoomey/vim-run-interactive'
```

And then run the `:BundleInstall` command from within Vim.

[Vundle]: https://github.com/gmarik/Vundle.vim

Usage
-----

The main interface to the plugin is via the command, `RunInInteractiveShell`.
This is obviously a bit of a mouthful, so a mapping like the following is
recommended:

``` vim
" Add this to your vimrc to provide a shortcut
nnoremap <leader>ri :RunInInteractiveShell<space>
```

Assuming you are using `,` as you `leader`, then you can type `,ri` in normal
mode and the command name will be populated for you along with a trailing
space. You can then enter your desired shell command and hit `enter` to run
it.
