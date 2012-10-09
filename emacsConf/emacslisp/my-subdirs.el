;; -*- Emacs-Lisp -*-

;; Time-stamp: <08/27/2009 09:58:37 ������ by ahei>

(defun my-add-subdirs-to-load-path (dir)
  "��DIR��������Ŀ¼���ӵ�`load-path'����"
  (interactive)
  (let ((default-directory (concat dir "/")))
    (add-to-list 'load-path dir)
    (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
        (normal-top-level-add-subdirs-to-load-path))))
