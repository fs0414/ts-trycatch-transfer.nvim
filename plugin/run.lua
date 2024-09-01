return {
  setup = function()
    vim.cmd([[command! -nargs=1 TsTryCatchTransferHello lua require('ts-trycatch-transfer').hello(<f-args>)]])
  end,
  hello = function(name)
    local ok, result = pcall(vim.fn.rpcrequest, 0, "TsTryCatchTransferHello", {name})
    if ok then
      print(result)
    else
      print("Error calling TsTryCatchTransferHello:", result)
    end
  end
}
