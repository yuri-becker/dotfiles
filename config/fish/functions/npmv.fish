function npmv --wraps=cat\ package.json\ \|\ jq\ \'.version\' --description alias\ npmv\ cat\ package.json\ \|\ jq\ \'.version\'
  cat package.json | jq '.version' $argv
        
end
