# Apps-terminator
An script that helps terminate running processes on a Windows system. Here's an explanation of how to use it:

**Instead of doing these steps, you can download and run the file from the release section**

1. Open a text editor:

   - Open a text editor such as Notepad or any other code editor.

2. Copy and paste the code:

   - Copy the entire code from the provided content of "kill running - Copy.txt".
   - Paste the code into the text editor.

3. Save the file:

   - Save the file with a `.bat` extension. For example, you can save it as `kill_processes.bat`.

4. Run the script:

   - Double-click the saved `.bat` file to execute the script.

5. Wait for the script to complete:

   - The script will run and perform the following actions:
     - Retrieve a list of running processes, excluding `explorer.exe` and `cmd.exe`.
     - Save the list of processes to a temporary CSV file.
     - Iterate over the processes in the CSV file.
     - Check if each process is still running.
     - If a process is still running, terminate it using `taskkill` command.

6. View the results:

   - The script will terminate any running processes other than `explorer.exe` and `cmd.exe`.
   - The script operates silently without displaying any output unless there is an error.

Please note the following considerations:

- The script uses the `taskkill` command, which forcefully terminates processes. Exercise caution when using it, as terminating certain processes can have unintended consequences.
- It is recommended to run the script with administrative privileges to ensure the termination of processes.
- Use this script responsibly and only terminate processes that you are certain are safe to stop.

Remember to save any important work before running the script, as it may terminate processes that you're currently using.
