;; Sort words in a region.
;;
;; Run it with ‘M-x sort-words’:
;;
;;   first, second, third - last.
;;
;; This produces:
;;
;;     first, last, second - third.
;;
;; Reversing the order can be done with ‘C-u M-x sort-words’:
;;
;;    third, second, last - first.
;;
;; See also:
;;
;;    sort-symbols.el
;;
;; From http://www.emacswiki.org/emacs/SortWords

(defun sort-words (reverse beg end)
  "Sort words in region alphabetically, in REVERSE if negative.
    Prefixed with negative \\[universal-argument], sorts in reverse.
    The variable `sort-fold-case' determines whether alphabetic case
    affects the sort order.
    See `sort-regexp-fields'."
  (interactive "*P\nr")
  (sort-regexp-fields reverse "\\w+" "\\&" beg end))
