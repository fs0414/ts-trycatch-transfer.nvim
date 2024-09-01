return {
  setup = function()
    vim.cmd([[command! -nargs=1 Hello lua require('hello').hello(<f-args>)]])
  end,
  hello = function(name)
    local ok, result = pcall(vim.fn.rpcrequest, 0, "Hello", {name})
    if ok then
      print(result)
    else
      print("Error calling Hello:", result)
    end
  end
}
