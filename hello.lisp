(defun hello-world () 
  (format t "Hello, naught world"))

(defun next-fib (n p c)
  (if (= n 0)
      p
      (next-fib (1- n) c (+ p c))))

(defun fib (n)
  (next-fib n 0 1))

(defun sum-gen (lo hi mmap next)
  (if (> lo hi)
      0
      (+ 
       (funcall mmap lo)
       (sum-gen (funcall next lo) hi mmap next))))

(defun my-map (f x)
  (if (null x)
      x
      (cons (funcall f (car x))
	    (my-map f (cdr x)))))


