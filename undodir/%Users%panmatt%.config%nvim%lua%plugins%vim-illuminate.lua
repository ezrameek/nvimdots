Vim�UnDo� �?�4��`�۲]��۰��C�N���zU2�                    	       	   	   	    e��    _�                            ����                                                                                                                                                                                                                                                                                                                                      ;          v       e�˞     �         >   7   -            require('illuminate').configure({   `                -- providers: provider used to get references in the buffer, ordered by priority                   providers = {                       'lsp',   !                    'treesitter',                       'regex',                   },   /                -- delay: delay in milliseconds                   delay = 100,   C                -- filetype_overrides: filetype specific overrides.   b                -- The keys are strings to represent the filetype while the values are tables that   t                -- supports the same keys passed to .configure except for filetypes_denylist and filetypes_allowlist   (                filetype_overrides = {},   f                -- filetypes_denylist: filetypes to not illuminate, this overrides filetypes_allowlist   &                filetypes_denylist = {                       'dirbuf',                       'dirvish',                       'fugitive',                   },   i                -- filetypes_allowlist: filetypes to illuminate, this is overridden by filetypes_denylist   |                -- You must set filetypes_denylist = {} to override the defaults to allow filetypes_allowlist to take effect   )                filetypes_allowlist = {},   Z                -- modes_denylist: modes to not illuminate, this overrides modes_allowlist   9                -- See `:help mode()` for possible values   $                modes_denylist = {},   ]                -- modes_allowlist: modes to illuminate, this is overridden by modes_denylist   9                -- See `:help mode()` for possible values   %                modes_allowlist = {},   }                -- providers_regex_syntax_denylist: syntax to not illuminate, this overrides providers_regex_syntax_allowlist   7                -- Only applies to the 'regex' provider   Z                -- Use :echom synIDattr(synIDtrans(synID(line('.'), col('.'), 1)), 'name')   5                providers_regex_syntax_denylist = {},   �                -- providers_regex_syntax_allowlist: syntax to illuminate, this is overridden by providers_regex_syntax_denylist   7                -- Only applies to the 'regex' provider   Z                -- Use :echom synIDattr(synIDtrans(synID(line('.'), col('.'), 1)), 'name')   6                providers_regex_syntax_allowlist = {},   N                -- under_cursor: whether or not to illuminate under the cursor   $                under_cursor = true,   W                -- large_file_cutoff: number of lines at which to use large_file_config   P                -- The `under_cursor` option is disabled when this cutoff is hit   (                large_file_cutoff = nil,   a                -- large_file_config: config to use for large files (based on large_file_cutoff).   >                -- Supports the same keys passed to .configure   K                -- If nil, vim-illuminate will be disabled for large files.   +                large_file_overrides = nil,   e                -- min_count_to_highlight: minimum number of matches required to perform highlighting   +                min_count_to_highlight = 1,   Q                -- should_enable: a callback that overrides all other settings to   U                -- enable/disable illumination. This will be called a lot so don't do   ,                -- anything expensive in it.   @                should_enable = function(bufnr) return true end,   F                -- case_insensitive_regex: sets regex case sensitivity   /                case_insensitive_regex = false,               })           end5��          6               }       F              5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       e�ˡ     �                                    end5��                         q                     5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                v       e�ˣ     �                $            -- default configuration5��                          L       %               5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                v       e�ˣ    �                           �             �             5��                          L               	       �                      *   L              *       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e���    �         	                  �         	    �             5��                          L               	       �                      /   L              /       5�_�                       -    ����                                                                                                                                                                                                                                                                                                                                                             e���    �                               �             �         
    �                -            require('illuminate').configure({               })�         	      /            require('illuminate').configure({})5��       -                 y                      �                          z                      �                      *   z              *       �       (                  �                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e���    �                  �                  return {       {            "RRethy/vim-illuminate",           config = function()   -            require('illuminate').configure({   (                    under_cursor = true,               })   *            require('illuminate').toggle()           end       }   }5��            
                     �       �       �                          �                      5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                             e��     �   	                },�                               �             �             5��                          z                      �                         z                     �                        �               J       �    	                     �                      �    	                     �                      5�_�                  	   
       ����                                                                                                                                                                                                                                                                                                                                                             e��    �                  �                  return {       {            "RRethy/vim-illuminate",           config = function()   -            require('illuminate').configure({                   providers = {           'lsp',           'treesitter',           'regex',       },   $                under_cursor = true,               })   *            require('illuminate').toggle()           end       }   }5��                                 G      x      �                          x                     5��