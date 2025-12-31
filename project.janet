(declare-project
  :name "web.rethread"
  :description ``` ```
  :version "0.0.0"
  :dependencies ["https://github.com/swlkr/janet-html"
                 "https://github.com/niljimeno/janet-css"])

(declare-executable
  :name "rethread-home"
  :entry "rethread-home/init.janet")
