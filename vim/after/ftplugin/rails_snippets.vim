if !exists('loaded_snippet') || &cp
  finish
endif

let st = g:snip_start_tag
let et = g:snip_end_tag
let cd = g:snip_elem_delim

"db
exec "Snippet mac add_column :".st."table".et.", :".st."column".et.", :".st."string".et.st.et
exec "Snippet mcc t.".st."string".et." :".st."name".et
exec "Snippet mct create_table :".st."table".et." do |t|<CR>  ".st.et."<CR>end".st.et
exec "Snippet mdt drop_table :".st."table".et.st.et
exec "Snippet mrc remove_column \"".st."table".et."\", \"".st."column".et."\"".st.et
exec "Snippet mrnc rename_column \"".st."table".et."\", \"".st."oldColumnName".et."\", \"".st."newColumnName".et."\"".st.et
exec "Snippet mrnt rename_table \"".st."oldTableName".et."\", \"".st."newTableName".et."\"".st.et

"model
exec "Snippet hm has_many :".st."".et
exec "Snippet ha has_and_belongs_to_many :".st."".et
exec "Snippet bt belongs_to :".st."".et
exec "Snippet begin begin<CR>  ".st.et."<CR>rescue ".st."Exception".et." => ".st."e".et."<CR>".st.et."<CR>end<CR>".st.et
exec "Snippet case case ".st."object".et."<CR>  when ".st."condition".et." : ".st.et."<CR>  when".st.et."<CR>end<CR>".st.et
exec "Snippet class class ".st."className".et."<CR>".st.et."<CR>end".st.et
exec "Snippet def def ".st."methodName".et."<CR>  ".st.et."<CR>end".st.et
exec "Snippet doo do |".st."object".et."|<CR>  ".st.et."<CR>end".st.et
exec "Snippet forin for ".st."element".et." in ".st."collection".et."<CR>  ".st.et."<CR>end<CR>".st.et
exec "Snippet if if ".st."condition".et."<CR>  ".st.et."<CR>end<CR>".st.et
exec "Snippet ife if ".st."condition".et."<CR>  ".st.et."<CR>else<CR>  ".st.et."<CR>end<CR>".st.et
exec "Snippet unless unless ".st."condition".et."<CR>  ".st.et."<CR>end<CR>".st.et
exec "Snippet when when ".st."condition".et." : ".st.et."<CR>when".st.et
"controller
exec "Snippet fl flash[:".st."notice".et."] = \"".st.et."\"".st.et
exec "Snippet pa params[:".st."id".et."]".st.et
exec "Snippet se session[:".st.et."]".st.et
exec "Snippet co cookies[:".st.et."]".st.et
exec "Snippet li logger.info \"".st.et."\"".st.et

exec "Snippet rt redirect_to ".st.et

exec "Snippet re render :".st."text".et." => '".st.et."'".st.et
exec "Snippet rp render :partial => \"".st."item".et."\"".st.et
exec "Snippet rpc render :partial => \"".st."item".et."\", :collection => ".st."items".et.st.et
exec "Snippet rpl render :partial => \"".st."item".et."\", :locals => { :".st."name".et." => \"".st."value".et."\"".st.et." }".st.et

"view
exec "Snippet 5= <%= ".st.et." %>"
exec "Snippet 5- <% ".st.et." -%>"
exec "Snippet 5 <% ".st.et." %>".st.et

" xhtml
exec "Snippet -- <!-- ".st.et." -->"
