# format the code
lein cljfmt fix # that formats both src and test
lein cljfmt fix project.clj

# recompile everything (which displays compiler warnings) and run tests
lein clean
lein test

# check for updatable dependencies and for dependency conflicts
lein ancient
lein ancient :plugins
lein ancient check-profiles
lein ancient check-profiles :plugins
lein deps :tree > /dev/null # we are only interested in stderr
lein deps :plugin-tree > /dev/null

# run the linters
lein clj-kondo --lint src
lein clj-kondo --lint test
lein run -m noahtheduke.splint # lints both src and test

# execute the program in two different ways
lein uberjar; java -jar target/placeholder-0.1.0-SNAPSHOT-standalone.jar
(echo "(-main)"; cat <&0) | lein repl