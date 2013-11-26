# Public: Install ohmyzsh into ~/.ohmyzsh
#
# Examples
#
#   include ohmyzsh
class ohmyzsh {
  $user = "steinim"
  $home = "/Users/${user}"

  repository { 'robbyrussell/oh-my-zsh':
    source => 'robbyrussell/oh-my-zsh',
    path   => "${home}/.oh-my-zsh"
  }

  file { "${home}/.oh-my-zsh/themes/stein_inge.zsh-theme":
        mode => "0644",
        owner => "${user}",
        group => 'staff',
        source => 'puppet:///modules/ohmyzsh/stein_inge.zsh-theme',
    }
}
