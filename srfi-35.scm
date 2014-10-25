(define-library (srfi srfi-35)
  (export
   make-condition-type
   condition-type?
   make-condition
   condition?
   condition-has-type?
   condition-ref
   make-compound-condition
   extract-condition
   define-condition-type
   condition
   &condition
   &message
   &serious
   &error
   )
  (import
   (scheme base)
   (srfi srfi-1))
  (include "srfi-35.upstream.scm"))
