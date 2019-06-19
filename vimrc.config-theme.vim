" ==================================================================================================
" Theme settings
" ==================================================================================================

if $VIM_THEME == 'gruvbox-dark'
  if has_key(g:plugs, 'gruvbox')
    let g:gruvbox_italic = 1
    colorscheme gruvbox
    set termguicolors
    set t_8f=[38;2;%lu;%lu;%lum
    set t_8b=[48;2;%lu;%lu;%lum
    exe 'highlight StatusLine guifg=' . $VIM_STATUS_BAR_FG 'guibg=' . $VIM_STATUS_BAR_BG
  endif

  if has_key(g:plugs, 'vim-airline')
    let g:airline_theme='gruvbox'
  endif

  if has_key(g:plugs, 'ale')
    exe 'highlight ALEErrorSign guifg=' . $VIM_ALE_ERROR_FG 'guibg=' . $VIM_ALE_ERROR_BG
    exe 'highlight ALEWarningSign guifg=' . $VIM_ALE_WARNING_FG 'guibg=' . $VIM_ALE_WARNING_BG
  endif
endif

if $VIM_THEME == 'deus'
  if has_key(g:plugs, 'vim-deus')
    colorscheme deus
    set termguicolors
    set t_Co=256
    set background=dark
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    exe 'highlight StatusLine guifg=' . $VIM_STATUS_BAR_FG 'guibg=' . $VIM_STATUS_BAR_BG
  endif

  if has_key(g:plugs, 'vim-airline')
    let g:airline_theme='deus'
  endif

  if has_key(g:plugs, 'ale')
    exe 'highlight ALEErrorSign guifg=' . $VIM_ALE_ERROR_FG 'guibg=' . $VIM_ALE_ERROR_BG
    exe 'highlight ALEWarningSign guifg=' . $VIM_ALE_WARNING_FG 'guibg=' . $VIM_ALE_WARNING_BG
  endif
endif

if $VIM_THEME == 'ayu'
  if has_key(g:plugs, 'ayu-vim')
    let ayucolor="mirage"
    colorscheme ayu
    set termguicolors
    set t_8f=[38;2;%lu;%lu;%lum
    set t_8b=[48;2;%lu;%lu;%lum
    exe 'highlight StatusLine guifg=' . $VIM_STATUS_BAR_FG 'guibg=' . $VIM_STATUS_BAR_BG
  endif

  if has_key(g:plugs, 'vim-airline')
    let g:airline_theme='deus'
  endif

  if has_key(g:plugs, 'ale')
    exe 'highlight ALEErrorSign guifg=' . $VIM_ALE_ERROR_FG 'guibg=' . $VIM_ALE_ERROR_BG
    exe 'highlight ALEWarningSign guifg=' . $VIM_ALE_WARNING_FG 'guibg=' . $VIM_ALE_WARNING_BG
  endif
endif

if $VIM_THEME == 'dracula'
  if has_key(g:plugs, 'dracula')
    colorscheme dracula
    set termguicolors
    set t_8f=[38;2;%lu;%lu;%lum
    set t_8b=[48;2;%lu;%lu;%lum
    exe 'highlight StatusLine guifg=' . $VIM_STATUS_BAR_FG 'guibg=' . $VIM_STATUS_BAR_BG
  endif

  if has_key(g:plugs, 'vim-airline')
    let g:airline_theme='deus'
  endif

  if has_key(g:plugs, 'ale')
    exe 'highlight ALEErrorSign guifg=' . $VIM_ALE_ERROR_FG 'guibg=' . $VIM_ALE_ERROR_BG
    exe 'highlight ALEWarningSign guifg=' . $VIM_ALE_WARNING_FG 'guibg=' . $VIM_ALE_WARNING_BG
  endif
endif

if $VIM_THEME == 'onehalf-dark'
  if has_key(g:plugs, 'onehalf')
    colorscheme onehalfdark
  endif

  if has_key(g:plugs, 'vim-airline')
    let g:airline_theme='onehalfdark'
  endif
endif

if $VIM_THEME == 'gotham'
  if has_key(g:plugs, 'vim-gotham')
    colorscheme gotham
  endif
endif

if $VIM_THEME == 'iceberg'
  if has_key(g:plugs, 'iceberg.vim')
    colorscheme iceberg
  endif

  if has_key(g:plugs, 'ale')
    exe 'highlight ALEErrorSign guifg=' . $VIM_ALE_ERROR_FG 'guibg=' . $VIM_ALE_ERROR_BG
    Exe 'highlight ALEWarningSign guifg=' . $VIM_ALE_WARNING_FG 'guibg=' . $VIM_ALE_WARNING_BG
  endif
endif
