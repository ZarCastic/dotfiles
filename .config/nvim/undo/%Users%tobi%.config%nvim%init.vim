Vim�UnDo� �84�����8��)_��,y���:,t��'d   U                                  `�u    _�                    D        ����                                                                                                                                                                                                                                                                                                                                                             ^�Xv    �   C   D          ]let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v '])5�_�                    !        ����                                                                                                                                                                                                                                                                                                                                                             `i�!    �       !          Plug 'wakatime/vim-wakatime'5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `��     �                9Plug 'zchee/deoplete-clang' | Plug 'Shougo/deoplete.nvim'5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `��     �                Plug 'w0rp/ale'5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `��     �                Plug 'joonty/vdebug'5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `��     �                Plug 'tpope/vim-commentary'5�_�      	              %        ����                                                                                                                                                                                                                                                                                                                            %          +          V       `��     �   $   %          " Completion {{{    " deoplete.nvim (autocompletion)   $let g:deoplete#enable_at_startup = 1   Clet g:deoplete#sources#clang#libclang_path = "/usr/lib/libclang.so"   <let g:deoplete#sources#clang#clang_header = "/usr/lib/clang"   alet g:deoplete#sources#clang#std = {'c': 'c11', 'cpp': 'c++1z', 'objc': 'c11', 'objcpp': 'c++1z'}   "}}}5�_�      
           	   @        ����                                                                                                                                                                                                                                                                                                                            %          %          V       `��     �   ?   @          " EasyMotion {{{   " vim-easymotion   let g:EasyMotion_smartcase = 1    let g:EasyMotion_startofline = 0   "}}}5�_�   	              
   @        ����                                                                                                                                                                                                                                                                                                                            %          %          V       `��     �   ?   @          
" twig {{{5�_�   
                 @        ����                                                                                                                                                                                                                                                                                                                            %          %          V       `���     �   ?   @          4" au BufNewFile,BufRead *.html setlocal ft=twig.html5�_�                    @        ����                                                                                                                                                                                                                                                                                                                            %          %          V       `���     �   ?   @          3" au BufNewFile,BufRead *.htm setlocal ft=twig.html5�_�                    @        ����                                                                                                                                                                                                                                                                                                                            %          %          V       `���     �   ?   @          " }}}5�_�                    I        ����                                                                                                                                                                                                                                                                                                                            I          L          V       `���     �   H   I          " Limelight {{{   !autocmd! User GoyoEnter Limelight   !autocmd! User GoyoLeave Limelight   " }}}5�_�                            ����                                                                                                                                                                                                                                                                                                                            I          I          V       `���     �                Plug 'junegunn/limelight.vim'5�_�                            ����                                                                                                                                                                                                                                                                                                                            H          H          V       `���    �                Plug 'junegunn/goyo.vim'5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `��    �   
             Plug 'SirVer/ultisnips'5�_�                    R        ����                                                                                                                                                                                                                                                                                                                                                             `��     �   S               �   T            �   S              "    �   R   U   T      " �   R   T   S    5�_�                    W        ����                                                                                                                                                                                                                                                                                                                                                             `��    �   V   X              \ } 5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `�     �      "   X       �         X    �         W    5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             `�     �                 &" (Optional) Multi-entry selection UI.5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `�    �                 5�_�                    \       ����                                                                                                                                                                                                                                                                                                                                                             `�    �   \               �   ]            �   \            5�_�                    Y        ����                                                                                                                                                                                                                                                                                                                            Y           b           V        `�g     �   X   Y       
   'let g:LanguageClient_serverCommands = {   '    \ 'cpp': ['tcp://127.0.0.1:50505'],   %    \ 'c': ['tcp://127.0.0.1:50505'],       \ }   P" note that if you are using Plug mapping you should not use `noremap` mappings.   nmap <F5> <Plug>(lcn-menu)   " Or map each action separately    nmap <silent>K <Plug>(lcn-hover)   'nmap <silent> gd <Plug>(lcn-definition)   %nmap <silent> <F2> <Plug>(lcn-rename)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        `�s     �                (Plug 'autozimu/LanguageClient-neovim', {       \ 'branch': 'next',       \ 'do': 'bash install.sh',       \ }5�_�                             ����                                                                                                                                                                                                                                                                                                                                                  V        `�t    �         U       �         U    �         T    5�_�                    !        ����                                                                                                                                                                                                                                                                                                                            Z           Z           V        `�h     �   !   "   X      "�   !   #   Y      "jd5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ^�Xd     �          p      "yu   P""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""5��