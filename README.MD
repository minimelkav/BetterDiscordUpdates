# WingetEnhanceDCUpdate.CMD

WingetEnhanceDCUpdate.CMD is a batch script that uses winget to install and update Discord on Windows 10 and Windows 11 computers. It also renames Update.exe to Updatex.exe to prevent Discord from auto-updating itself and causing issues with winget.

## Requirements

- Windows 10 1709 (build 16299) or later
- PowerShell
- Winget (will be installed by the script if not present)
- Discord (will be installed by the script if not present)

## Installation

- Download the latest release of WingetEnhanceDCUpdate.CMD from [here](https://github.com/minimelkav/BetterDiscordUpdates).
- Unzip the file and place it in a secure location on your computer.
- Run the script as an administrator.
- Optionally, you can place the script in the Startup folder of your user profile by typing shell:startup in the Run dialog box and copying the script there. This will make the script run automatically when you log on to your computer.

## Usage

The script will run automatically when you log on to your computer. It will check if winget and Discord are installed, and install them if not. It will also check if Discord has any updates available, and update it using winget. It will rename Update.exe to Updatex.exe to prevent Discord from auto-updating itself.

You can also run the script manually by double-clicking on it or by using the command prompt.

## License

This project is licensed under the BSD 3-Clause License. See the [LICENSE](https://github.com/Bing/WingetEnhanceDCUpdate.CMD/blob/main/LICENSE) file for details.

## Disclaimer

This project is not affiliated with, endorsed by, or sponsored by Microsoft, winget, Discord, or any other entity. Use this project at your own risk. The author is not responsible for any damages or losses caused by this project.

## Contact

If you have any questions, suggestions, or feedback, please contact Bing at bing@bing.com.

## Contribution

If you want to contribute to this project, please fork the repository and submit a pull request. All contributions are welcome.
