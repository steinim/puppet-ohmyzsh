# Public: Install ohmyzsh into ~/.ohmyzsh
#
# Examples
#
#   include ohmyzsh
class ohmyzsh {
  $home = "/Users/steinim"

  repository { 'robbyrussell/oh-my-zsh':
    source => 'robbyrussell/oh-my-zsh',
    path   => "steinim/.oh-my-zsh"
  }

  file { "${home}/.oh-my-zsh/themes/stein_inge.zsh-theme":
        mode => "0644",
        owner => 'steinim',
        group => 'staff',
        source => 'puppet:///modules/ohmyzsh/stein_inge.zsh-theme',
    }
}
