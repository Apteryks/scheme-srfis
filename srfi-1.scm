(define-library (srfi srfi-1)
  (export
   xcons list-tabulate cons*
   proper-list? circular-list? dotted-list? not-pair? null-list? list=
   circular-list length+
   iota
   first second third fourth fifth sixth seventh eighth ninth tenth
   car+cdr
   take       drop
   take-right drop-right
   take!      drop-right!
   split-at   split-at!
   last last-pair
   zip unzip1 unzip2 unzip3 unzip4 unzip5
   count
   append! append-reverse append-reverse! concatenate concatenate!
   unfold       fold       pair-fold       reduce
   unfold-right fold-right pair-fold-right reduce-right
   append-map append-map! map! pair-for-each filter-map map-in-order
   filter  partition  remove
   filter! partition! remove!
   find find-tail any every list-index
   take-while drop-while take-while!
   span break span! break!
   delete delete!
   alist-cons alist-copy
   delete-duplicates delete-duplicates!
   alist-delete alist-delete!
   reverse!
   lset<= lset= lset-adjoin
   lset-union  lset-intersection  lset-difference  lset-xor  lset-diff+intersection
   lset-union! lset-intersection! lset-difference! lset-xor! lset-diff+intersection!
   )
  (import
   (scheme base)
   (scheme cxr)
   (srfi srfi-8))
  (begin
    (define-syntax let-optionals
      (syntax-rules ()
        ((_ args () body ...)
         (begin body ...))
        ((_ args ((var default) . rest) body ...)
         (let* ((a args)
                (var (if (null? a)
                         default
                         (car a))))
           (let-optionals (if (null? a) a (cdr a)) rest body ...)))))
    (define-syntax :optional
      (syntax-rules ()
        ((_ args default)
         (let ((args args))
           (if (pair? args)
               (car args)
               default))))))
  (include "srfi-1.body.scm"))
