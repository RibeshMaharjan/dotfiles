function copy-secret --description "Copy a secret file to the clipboard"
    copy < ~/.secrets/$argv[1]
end
