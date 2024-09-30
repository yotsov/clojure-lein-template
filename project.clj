(defproject placeholder "0.1.0-SNAPSHOT"
  :dependencies [[org.clojure/clojure "1.12.0"]]
  :plugins [[lein-ancient "1.0.0-RC3"] ;; finds updatable dependencies
            [lein-cljfmt "0.9.2"] ;; for formatting Clojure code
            [com.github.clj-kondo/lein-clj-kondo "2024.09.27"] ;; fast linter
            [org.clojure/clojure "1.12.0"]]
  :profiles {:dev {:dependencies [[io.github.noahtheduke/splint "1.17.1"]]}} ;; another different fast linter
  ;; :global-vars {*warn-on-reflection* true}
  :jvm-opts ["-Xmx1g"]
  :aot :all
  :main placeholder.placeholder)