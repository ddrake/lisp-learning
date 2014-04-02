(defun hello-world () 
  (format t "Hello, naught world"))

(defun next-fib (n p c)
  (if (= n 0)
      p
      (next-fib (1- n) c (+ p c))))

(defun fib (n)
  (next-fib n 0 1))

