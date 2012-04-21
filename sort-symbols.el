;; Sort symbols in a region.
;;
;; Symbols are like words, but include additional characters.
;;
;; Run it with ‘M-x sort-symbols’:
;;
;; Reversing the order can be done with ‘C-u M-x sort-symbols’:
;;
;; See also:
;;
;;    sort-words.el
;;
;; From http://www.emacswiki.org/emacs/SortWords

(defun sort-symbols (reverse beg end)
  "Sort symbols in region alphabetically, in REVERSE if negative.
    See `sort-words'."
  (interactive "*P\nr")
  (sort-regexp-fields reverse "\\(\\sw\\|\\s_\\)+" "\\&" beg end))
