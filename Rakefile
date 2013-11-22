require 'rake'

task :install do

  file = '.zshrc'
  target = "#{ENV["HOME"]}/#{file}"

  if File.exists?(target) || File.symlink?(target)

    delete = false
    backup = false
    skip = false

    unless skip || delete || backup
      puts "File already exists: #{target}, what do you want to do? [d]elete, [s]kip, [b]ackup"
      case STDIN.gets.chomp
      when 'o' then delete = true
      when 'b' then backup = true
      when 's' then skip = true
      end
    end
    FileUtils.rm_rf(target) if delete
    if backup
      `mv "$HOME/#{file}" "$HOME/#{file}.backup"` 
      FileUtils.rm_rf(target)
    end
  end

  system("curl -s -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh")
  system("rm -rf ~/.oh-my-zsh/custom")
  system("git clone git@github.com:jeroenbourgois/zsh.git ~/.oh-my-zsh/custom")

  Rake::Task['link'].invoke
end

desc "Hook our dotfiles into system-standard positions."
task :link do
  puts 'linking'
  Dir.chdir("#{ENV["HOME"]}/.oh-my-zsh/custom")
  linkables = Dir.glob('**/**{.symlink}')
  puts linkables

  skip_all = false
  overwrite_all = false
  backup_all = false

  linkables.each do |linkable|
    overwrite = false
    backup = false

    file = linkable.split('/').last.split('.symlink').last
    target = "#{ENV["HOME"]}/.#{file}"

    if File.exists?(target) || File.symlink?(target)
      unless skip_all || overwrite_all || backup_all
        puts "File already exists: #{target}, what do you want to do? [s]kip, [S]kip all, [o]verwrite, [O]verwrite all, [b]ackup, [B]ackup all"
        case STDIN.gets.chomp
        when 'o' then overwrite = true
        when 'b' then backup = true
        when 'O' then overwrite_all = true
        when 'B' then backup_all = true
        when 'S' then skip_all = true
        when 's' then next
        end
      end
      FileUtils.rm_rf(target) if overwrite || overwrite_all
      `mv "$HOME/.#{file}" "$HOME/.#{file}.backup"` if backup || backup_all
    end
    `ln -s "$PWD/#{linkable}" "#{target}"`
  end
end

task :uninstall do

  Dir.glob('**/*.symlink').each do |linkable|

    file = linkable.split('/').last.split('.symlink').last
    target = "#{ENV["HOME"]}/.#{file}"

    # Remove all symlinks created during installation
    if File.symlink?(target)
      FileUtils.rm(target)
    end
    
    # Replace any backups made during installation
    if File.exists?("#{ENV["HOME"]}/.#{file}.backup")
      `mv "$HOME/.#{file}.backup" "$HOME/.#{file}"` 
    end

  end
end

task :default => 'install'
