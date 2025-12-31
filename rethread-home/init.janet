(import ./document)
(import ./style)

(defn write-to
  [content dir filename]
  (let [output (string/join [dir filename] "/")]
    (os/rm output)
    (-> (file/open (string/join [dir filename] "/") :w)
      (file/write content)
      (file/close))))

(defn main
  [& args]
  (let [doc (document/render)
        sty (style/render)
        outdir "docs"]
    (os/mkdir outdir)
    (write-to doc outdir "index.html")
    (write-to sty outdir "style.css")))
