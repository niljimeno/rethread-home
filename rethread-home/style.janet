(import janet-css/css)

(def color {:fg "white"
            :bg "black"
            :link "#006ffa"
            :link-h "#33cfff"
            :input "#2248"
            :input-h "#224c"
            :input-border "white"})

(defn render
  []
  (css/into-css
   [:root
    [:height "100%"]]

   [:body
    # [:font-family "Helvetica, Verdana, Arial, 'Liberation Sans', FreeSans, sans-serif"]
    [:font-family "monogram, monospace"]
    [:align-content "center"]
    [:text-align "center"]
    [:font-size "1.8em"]
    [:margin "0"]
    ]

   [:body
    [:background-color (get color :bg)]
    [:color (get color :fg)]
    [:height "100%"]
    ]

   [:main
    [:width "1100px"]
    [:max-width "100%"]
    [:height "100%"]

    [:margin "0 auto"]

    # [:border "1px solid #fff9"]
    [:border-top "none"]
    [:border-bottom "none"]

    [:background-image "url(static/Glitch_City.webp)"]
    [:background-repeat "no-repeat"]
    [:background-size "100% auto"]
    [:background-position "bottom"]

    [:div.helper-space
     [:padding-top "5em"]
     [:padding-bottom "2em"]
     [:background-color "#0009"]]

    [:form
     [:width "600px"]
     [:max-width "100%"]
     [:margin "0 auto"]
     [:margin-bottom "1em"]
     ["input"
      [:padding "0.1em 0.4em"]]
     ["input[type=text]"
      [:width "70%"]]
     ["input[type=submit]"
      [:cursor "pointer"]]]
    ["#shortcuts"
     [:display "flex"]
     [:justify-content "center"]
     [:gap "1em"]]]

   [:h1
    [:font-size "4em"]
    [:margin-top "0"]
    [:margin-bottom "0.1em"]
    [:font-weight "normal"]]

   [:input
    [:font-family "monogram"]
    [:font-size "1em"]
    [:box-sizing "border-box"]
    [:border-radius "0"]
    [:color (get color :fg)]]

   [:input
    [:background-color (get color :input)]
    [:border (string (get color :input-border)
                     " 1px solid")]]

   ["input:hover"
    [:background-color (get color :input-h)]]


   ["input[type=text]:focus"
    [:outline "0 !important"]]

   [:a
    [:color (get color :link)]]

   ["a:hover"
    [:color (get color :link-h)]]

   ["@font-face"
    [:font-family "monogram"]
    [:src "url(font/monogram.ttf)"]]
   ))
