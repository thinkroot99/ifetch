# Usage

To make the script installable and usable, you need to create an executable binary file and place it in a directory that is included in the PATH environment variable. This will allow you to run the script from any location in the terminal without specifying the full path to the script.

**Here are the steps you can follow:**

1. **Modify the script**: Make sure the script has the ".sh" extension and has the proper execution permissions using the `chmod +x ifetch.sh` command.

2. **Create a directory for the script**: You can create a special directory for the script. For example, you can create a directory named ".bin" in your home directory:
   ```bash
   mkdir ~/.bin
   ```

3. **Move the script to the created directory**: Move the script to the directory you created:
   ```bash
   mv ifetch.sh ~/.bin
   ```

4. **Add the directory to the PATH variable**: Open your shell configuration file (usually `.bashrc`, `.bash_profile`, `.zshrc`, etc.) and add the following line at the end of the file:
   ```bash
   export PATH="$HOME/.bin:$PATH"
   ```

5. **Reload the shell configuration**: To apply the changes, reload your shell configuration using the command:
   ```bash
   source ~/.bashrc
   ```

After these steps, you can run the script from any location in the terminal using just its name. For example:
```bash
ifetch.sh
```