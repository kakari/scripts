# -*- encoding: utf-8 -*-

# カレント・ディレクトリ内のファイルの拡張子の前に_2をつける
# abc.xls     def.xlsx
#   ↓           ↓
# abc_2.xls   def_2.xlsx

# カレント・ディレクトリを取得
dir_current = Dir.pwd
Dir.foreach(dir_current) do |item|
  if /.*\.xls$|.*\.xlsx$/ =~ item
    file_orig = item
    file_new = file_orig.sub(/\.xls/, "_2.xls")
    File.rename(file_orig, file_new)
  end
end
