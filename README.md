# nmoo dotfiles

## Tools
- [`hyper`](https://hyper.is/) for terminal
- [`Code`](https://code.visualstudio.com/) for editor
- [`oh-my-zsh`](https://ohmyz.sh/) to manage `zsh` config
    ```shell
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    ```
- [`p10k`](https://github.com/romkatv/powerlevel10k) for prompt
    [Install the patched font](https://github.com/romkatv/powerlevel10k#manual-font-installation), then install `powerlevel10k`

    ```shell
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    ```
- [`volta`](https://volta.sh/) to manage node version, package managers
    ```shell
    curl https://get.volta.sh | bash
    ```

## Settings
- Update `git` default branch
    ```shell
    git config --global init.defaultBranch main
    git config --global push.default current
    ```

