require "find"
require "digest"
require "fileutils"

puts "Завдання 7. Пошук однакових файлів"
directory = File.join(__dir__, "sample_files")
FileUtils.mkdir_p(directory)

# Створення тестових файлів
File.write(File.join(directory, "file1.txt"), "Hello Ruby")
File.write(File.join(directory, "file2.txt"), "Hello Ruby")
File.write(File.join(directory, "file3.txt"), "Different text")
subdir = File.join(directory, "subfolder")
FileUtils.mkdir_p(subdir)
File.write(File.join(subdir, "file4.txt"), "Hello Ruby")

def show_duplicates(files)
  groups = Hash.new { |hash, key| hash[key] = [] }
  files.each do |path|
    hash = Digest::SHA256.file(path).hexdigest
    groups[hash] << path
  end

  groups.each_value do |paths|
    next if paths.length < 2
    puts "Знайдено однакові файли:"
    paths.each { |path| puts "  #{path}" }
  end
end

# Спосіб 1. Рекурсивний обхід Find.find
puts "\nСпосіб 1 (Find.find):"
files1 = []
Find.find(directory) do |path|
  files1 << path if File.file?(path)
end
show_duplicates(files1)

# Спосіб 2. Dir.glob
puts "\nСпосіб 2 (Dir.glob):"
files2 = Dir.glob(File.join(directory, "**", "*"), File::FNM_DOTMATCH).select do |path|
  File.file?(path)
end
show_duplicates(files2)