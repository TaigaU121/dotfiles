#------
# コマンドラインの表示設定
function fish_prompt --description 'Write out the prompt'
    
   # よくわかっていないが
   # 通常時の表示とコマンドがなかった際の表示を分ける
   if [ $status -eq 0 ]
     set status_face (set_color ff8c00)"ζ*'ヮ')ζ << "
   else
     set status_face (set_color 6495ed)"ζ*;-;)ζ << "
   end

   # 1つ目の%sが"TaigaU1212@"で色を直前に指定
   # 2つ目の%sがpwdを表示する
   # 3つ目の%sが、直前のif文で定義した$status_faceをechoする 
   printf "%s%s%s\n" (set_color 32cd32)(echo "TaigaU121@")(set_color 00bfff)(prompt_pwd)
   echo $status_face

end
#------

#-------
# プロンプトの右端に表示するfishの関数
function fish_right_prompt
    # 現在時刻を表示
    date +(set_color b0e0e6)"%F %T"
end
# ------
