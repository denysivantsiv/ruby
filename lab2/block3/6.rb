require "tempfile"
require "fileutils"

puts "Завдання 6. Безпечний запис у файл (safe_write)"
target_file = File.join(__dir__, "important_data.txt")
File.write(target_file, "Початкові важливі дані\n")
puts "До запису: #{File.read(target_file).strip}"

# Спосіб 1. Через Tempfile та FileUtils.mv
def safe_write_tempfile(filepath, content)
  dir = File.dirname(filepath)
  temp = Tempfile.new("safe_write", dir)
  begin
    temp.write(content)
    temp.flush
    temp.close
    FileUtils.mv(temp.path, filepath)
  ensure
    temp.close! if temp && !temp.closed?
  end
end

safe_write_tempfile(target_file, "Оновлені дані (спосіб 1 - Tempfile)\n")
puts "Після способу 1: #{File.read(target_file).strip}"

# Спосіб 2. Через тимчасовий .tmp файл та File.rename
def safe_write_rename(filepath, content)
  tmp_path = "#{filepath}.tmp"
  File.write(tmp_path, content)
  File.rename(tmp_path, filepath)
end

safe_write_rename(target_file, "Фінальні дані (спосіб 2 - File.rename)\n")
puts "Після способу 2: #{File.read(target_file).strip}"