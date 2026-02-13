;; inherits: objectscript_expr
; -------------- Objectscript Core -------------
; Commands
; e.g. 'set', 'do', 'D'
; -----------------------------------------
[
  (keyword_set)
  (keyword_as)
  (keyword_of)
  (keyword_dim)
  (keyword_pound_define)
  (keyword_pound_def1arg)
  (keyword_pound_execute)
  (keyword_pound_import)
  (keyword_pound_include)
  (keyword_pound_if)
  (keyword_pound_endif)
  (keyword_pound_elseif)
  (keyword_pound_else)
  (keyword_pound_ifndef)
  (keyword_write)
  (keyword_do)
  (keyword_for)
  (keyword_while)
  (keyword_kill)
  (keyword_lock)
  (keyword_read)
  (keyword_open)
  (keyword_close)
  (keyword_use)
  (keyword_new)
  (keyword_if)
  (keyword_elseif)
  (keyword_else)
  (keyword_oldelse)
  (keyword_throw)
  (keyword_try)
  (keyword_catch)
  (keyword_job)
  (keyword_break)
  (keyword_merge)
  (keyword_return)
  (keyword_quit)
  (keyword_goto)
  (keyword_halt)
  (keyword_hang)
  (keyword_halt_or_hang)
  (keyword_continue)
  (keyword_tcommit)
  (keyword_trollback)
  (keyword_tstart)
  (keyword_xecute)
  (keyword_view)
  (keyword_zbreak)
  (keyword_normal)
  (keyword_ext)
  (keyword_destruct)
  (keyword_stepmethod)
  (keyword_interrupt)
  (keyword_on)
  (keyword_off)
  (keyword_all)
  (keyword_debug)
  (keyword_errortrap)
  (keyword_trace)
  (keyword_step)
  (keyword_nostep)
  (keyword_clear)
  (keyword_zkill)
  (keyword_zn)
  (keyword_zsu)
  (keyword_ztrap)
  (keyword_zwrite)
  (keyword_zz)
  (keyword_embedded_html)
  (keyword_embedded_xml)
  (keyword_embedded_sql_amp)
  (keyword_embedded_sql_hash)
  (keyword_js)
  (keyword_private)
  (keyword_public)
  (keyword_methodimpl)
] @keyword

(_ macro_name: (_) @keyword.macro)
(macro_arg) @constant.macro
(_ mnemonic: (_) @constant.macro)

(_ parameter: _ @variable.parameter)

; Functions that can be on the LHS of a SET
(doable_dollar_functions) @function.builtin

; non-extrinsic routine call
(routine_tag_call) @function.call

; method call
(instance_method_call) @function.method.call

"{" @punctuation.bracket
"}" @punctuation.bracket

; Comments
; e.g. '// fj;lkasdfj', '#; sklfjas;k', '; sklfjas','/* sdfs */'
[
  (line_comment)
  (block_comment)
] @comment

(embedded_html
  (keyword_embedded_html) @keyword.directive
  "<" @keyword.directive
  ">" @keyword.directive
)

(embedded_html
  (keyword_embedded_html) @keyword.directive
  (html_marker) @marker
  "<" @keyword.directive
  ">" @keyword.directive
  (html_marker_reversed) @marker
)

(embedded_sql_amp
  (keyword_embedded_sql_amp) @keyword.directive
  "(" @keyword.directive
  ")" @keyword.directive
) @embedded_sql

(embedded_sql_amp
  (keyword_embedded_sql_amp) @keyword.directive
  (embedded_sql_marker) @marker
  "(" @keyword.directive
  ")" @keyword.directive
  (embedded_sql_reverse_marker) @marker
) @embedded_sql

(embedded_sql_hash
  (keyword_embedded_sql_hash) @keyword.directive
  "(" @keyword.directive
  ")" @keyword.directive
) @embedded_sql
(embedded_js
  (html_marker) @marker
  "<" @keyword.directive
  (embedded_js_special_case) @js_bod
  ">" @keyword.directive
  (embedded_js_special_case_complete) @marker
) @embeddedJS

(embedded_js
  "<" @keyword.directive
  ">" @keyword.directive
)@embeddedJS

(embedded_xml
  (keyword_embedded_xml) @keyword.directive
  "<" @keyword.directive
  ">" @keyword.directive
)

(tag) @tag
