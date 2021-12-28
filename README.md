# ToggleNumber.vim

⚠️ Deprecated, prefer https://github.com/myusuf3/numbers.vim

Toggle the `nonumber`, `number` and `relativenumber` status in vim.

## Usage

The plugin support `:ToggleNumber` command to toggle the `nonumber`, `number` and
`relativenumber` status.

Its default key mapping is `<leader>nn`.

## Options

1.  `g:toggle_number_custom_keymap`

If you do NOT want use the default key mappings, set
`g:toggle_number_custom_keymap` to `1` and set your favorite keys for
`:ToggleNumber` commmond in the `.vimrc` file. For example, mapping `<leader>t`:

```vim
let g:toggle_number_custom_keymap = 1
nnoremap <LEADER>t :ToggleNumber<CR>
```
