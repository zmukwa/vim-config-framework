"NeoBundleLazy 'Rip-Rip/clang_complete', {
NeoBundleLazy 'DarkDefender/clang_complete', {
      \ 'rev': 'deo_clang_py3',
      \ 'autoload': {
      \  'filetypes':['c', 'cpp'],
      \  'external_commands' : ['clang'],
      \ }
      \}

NeoBundleLazy 'jeaye/color_coded', { 
      \ 'build': {
      \   'unix': 'cmake . && make && make install',
      \   'linux': 'cmake . -DCUSTOM_CLANG=1 -DLLVM_ROOT_PATH=/usr -DLLVM_INCLUDE_PATH=/usr/lib/llvm-3.4/include'
      \ },
      \ 'autoload' : { 'filetypes' : ['c', 'cpp', 'objc', 'objcpp'] },
      \ 'build_commands' : ['cmake', 'make'],
      \ 'external_commands' : ['clang'],
      \ 'disabled' : has('nvim')
      \}

NeoBundle 'critiqjo/lldb.nvim', {
      \ 'autoload': {
      \  'filetypes':['c', 'cpp'],
      \ }
      \ }

NeoBundleLazy 'rhysd/vim-clang-format',
      \ { 'autoload' : { 'filetypes' : ['c', 'cpp', 'objc', 'objcpp'] } }

NeoBundleLazy 'octol/vim-cpp-enhanced-highlight', {'autoload':{'filetypes':['cpp']}}

NeoBundle 'justinmk/vim-syntax-extra', {
      \ 'autoload': {
      \  'filetypes':['c', 'cpp'],
      \ }
      \}
