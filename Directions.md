# Directions for post-install Linux Mint

1. <details>
   <summary>Run</summary>

   1. <details>
      <summary>install.sh</summary>

      1. <details>
         <summary>Make symlinks for config files</summary>

         > [!CAUTION]
         > This will delete your current config files in your home directory and replace them with the ones in the [files](files) directory
         - `.face`
         - `.gitconfig`
         - `.bash_aliases`
         - `.LM_Logo.png`
         </details>

      2. <details>
         <summary>Debloat</summary>

         - Firefox
         - Celluloid
         - Gnome Calendar
         - Rhythmbox
         - Drawing
         - Thingy
         - Hypnotix
         - Libreoffice
         - Mintchat
         - Pix
         - Thunderbird
         - Transmission
         </details>

      3. <details>
         <summary>Make folders</summary>

         - `~/Workspace`
         - `~/Documents/Programs` gets symlinked to `~/Programs`
         </details>

      4. <details>
         <summary>Install apps</summary>

         - [Google Chrome](https://www.google.com/chrome/)
         - [VS Code](https://code.visualstudio.com/)
         - [Vesktop](https://vesktop.dev/)
         - [Obsidian](https://obsidian.md/)
         - [Pinta](https://www.pinta-project.com/)
         - [VLC](https://www.videolan.org/)
         - [Emote](https://github.com/tom-james-watson/Emote)
         - [Steam](https://store.steampowered.com/about/)
         </details>

      5. <details>
         <summary>Super update</summary>

         - Flatpak updates: `flatpak update -y`
         - Apt update: `apt update`
         - Apt upgrade: `apt upgrade -y`
         - Apt auto remove: `apt autoremove --purge -y`
         - Apt auto clean: `apt autoclean -y`
         </details>

      </details>

   </details>

2. <details>
   <summary>Fix</summary>

   - <details>
     <summary>Diodon double start</summary>

     1. Open Startup Applications
     2. Click on Diodon and click `Edit`
     3. Change startup delay to `5`
     </details>

   </details>

3. <details>
   <summary>Add</summary>

   - <details>
     <summary>Automatic sudo privileges</summary>

     1. Run:

        ```bash
        sudo visudo -f /etc/sudoers.d/reuben
        ```

     2. Add `reuben ALL=(ALL) NOPASSWD: ALL`

     </details>

   - <details>
     <summary>Pin for resume</summary>

     1. Install PAM password utility file:

        ```bash
        sudo apt update
        sudo apt install libpam-pwdfile whois
        ```

     2. Create the PIN file (replace `YOUR_PIN` with your chosen PIN):

        ```bash
        echo "$USER:$(mkpasswd -m sha-512 'YOUR_PIN')" | sudo tee /etc/screensaver_pins
        ```

     3. Make sure your account has ownership:

        ```bash
        sudo chown $USER:$USER /etc/screensaver_pins
        sudo chmod 600 /etc/screensaver_pins
        ```

     4. Open the PAM config file:

        ```bash
        sudo nano /etc/pam.d/cinnamon-screensaver
        ```

     5. Edit the config by adding the following line to the **top** of the file:

        ```text
        auth sufficient pam_pwdfile.so pwdfile=/etc/screensaver_pins
        ```

     </details>

   </details>
