local iron = require("iron")

iron.core.add_repl_definitions{
  matlab = { -- This should be the file type
    pandoc_repl = {
      command = {"matlab", "-nodesktop -nosplash"} 
      }
  }
}
