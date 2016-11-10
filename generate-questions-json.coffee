fs = require 'fs'

glob = require 'glob'

[qdir, outfile] = process.argv[2..]

glob("#{qdir}/*.json", {nodir: yes}, (err, files) ->
  throw err if err
  obj = files.map((file) -> JSON.parse(fs.readFileSync(file)))
  contents = JSON.stringify(obj, null, 2)
  fs.writeFile(outfile, contents, (err) -> throw err if err)
)
