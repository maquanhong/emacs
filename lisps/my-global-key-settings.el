
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; һЩȫ�ֿ�ݼ����� ;; ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;��Ҫ�Զ����ļ�����Զ����뻻�з�
;;(setq auto-insert nil)

(setq frame-title-format "emacs@weishijian'computer")

;;y/n����yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;;��������ʱ�ļ�
(setq-default make-backup-files nil)

 ;;��꿿�����ָ��ʱ�������ָ���Զ��ÿ�����ס���ߡ�
(mouse-avoidance-mode 'animate)

;;set the default text coding system
;;(setq default-buffer-file-coding-system 'utf-8)
;;(prefer-coding-system 'utf-8)
 
;;ָ�벻�������л��۾���
(blink-cursor-mode -1)
(transient-mark-mode 1)
 

;;;;ecb ����------------------------------
;;;; �����ڼ��л�
(global-set-key [M-left] 'windmove-left)
(global-set-key [M-right] 'windmove-right)
(global-set-key [M-up] 'windmove-up)
(global-set-key [M-down] 'windmove-down)
;;;;;------------------------------
;;

;;ʱ������
(display-time-mode 1);;����ʱ����ʾ���ã���minibuffer������Ǹ�����
(setq display-time-24hr-format t);;ʱ��ʹ��24Сʱ��
(setq display-time-day-and-date t);;ʱ����ʾ�������ں;���ʱ��
(setq display-time-use-mail-icon t);;ʱ�����Ա������ʼ�����
(setq display-time-interval 10);;ʱ��ı仯Ƶ�ʣ���λ��������?
;;;; ��ʾʱ��------------------------------------------------------------------------------------------------
(display-time)

;;;; �ر���������
;;(setq inhibit-startup-message t)

;;;;���ô��kill ring
(setq kill-ring-max 2000)

;;���ô��ļ�ȱʡ·��
(setq default-directory "~/")

(setq visible-bell t);�رճ���ʱ����ʾ��


;;ȡ��������
;;(tool-bar-mode nil);;�����ntemacs24�в���ʹ������nil������ʹ��
(tool-bar-mode -1)
;;(scroll-bar-mode nil)
(scroll-bar-mode 1);;��ʾ�Ҳ��������-1Ϊ����ʾ��


(setq x-select-enable-clipboard t) ;֧��emacs���ⲿ�����ճ��

;; ��ת�� Emacs ����һ��buffer����
(global-set-key [f1] 'other-window)


;;��Ҫ���� TAB ʱ�������� PC ���������ֵĽ�
(setq visible-bell t)



;;��Ҫ����û��û�˵���yes or no, Ϊʲô������ y/n
(fset 'yes-or-no-p 'y-or-n-p)


;;Ϊʲô������ʾ��ʱ��ʲô��
(display-time)


;;Ϊʲô����ʾ��ǰ���ڵ��кź��к�
(column-number-mode t)


;;Ϊʲô������Windows�±༭������, ������ʾҪ����������
(transient-mark-mode t)


;;��Ҫ��ʾƥ�������
(show-paren-mode t)

;;Ϊʲôʹ���﷨��ʾ�Ĵ��ļ����ƶ�ʱ���֮��
(setq lazy-lock-defer-on-scrolling t)
;;(setq font-lock-support-mode 'lazy-lock-mode)
(setq font-lock-maximum-decoration t)
   



;;revert-buffer �� revert-buffer-with-coding-system ����������������¼��ص�ǰbuffer�򿪵��ļ����Ұ����������ֱܷ�󶨵�F5��C-F5�����:

(global-set-key [f5] 'revert-buffer)
(global-set-key [C-f5] 'revert-buffer-with-coding-system)



;;;F3���л���diredģʽ
(global-set-key [(f3)] 'grep-find)

;;;;F7������compile
(global-set-key (kbd "<f7>") 'compile)


;;;
(global-set-key (kbd "C-x ;") 'comment-region)
(global-set-key (kbd "C-c ;") 'uncomment-region)


;;;F4���л���shellģʽ
;;(global-set-key [(f4)] 'ansi-term)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;;speedbar��ɶ�õġ�û���ú��á�������	       ;;
;; ;; ;;;F5����speedbar			       ;;
;; ;; (global-set-key [(f5)] 'speedbar)		       ;;
;; ;; ;;����f4Ϊspeedbar����			       ;;
;; ;; (global-set-key [(f4)] 'speedbar-get-focus)      ;;
;; ;; ;;;Alt+s : ��speedbar��ý���		       ;;
;; ;; (global-set-key (kbd "M-s") 'speedbar-get-focus) ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;------------------------End of Short Cut ---------------------


;;----------��������------------------------------------------------------------------------------------------------------------------------

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  �������� ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;����������һЩ��ɫ
(setq calendar-load-hook
'(lambda ()
(set-face-foreground 'diary-face "skyblue")
(set-face-background 'holiday-face "slate blue")
(set-face-foreground 'holiday-face "white")))
;;���������ڵط��ľ�γ�ȣ�calendar���и�����������ʳ��Ԥ�⣬����ľ�γ������ϵ�ġ�
;; ��emacs�ܼ����ճ������ʱ�䣬�� calendar ���� S ���ɿ���
(setq calendar-latitude +39.54)
(setq calendar-longitude +116.28)
(setq calendar-location-name "����")
;; ����������ʾ���� calendar ���� pC ��ʾ����
(setq chinese-calendar-celestial-stem
["��" "��" "��" "��" "��" "��" "��" "��" "��" "��"])
(setq chinese-calendar-terrestrial-branch
["��" "��" "��" "î" "��" "��" "��" "δ" "��" "��" "��" "��"])
;; ���� calendar ����ʾ
(setq calendar-remove-frame-by-deleting t)
(setq calendar-week-start-day 1);; ��������һΪÿ�ܵĵ�һ��
(setq mark-diary-entries-in-calendar t);; ���calendar����diary������
(setq mark-holidays-in-calendar nil); ; Ϊ��ͻ����diary�����ڣ�calendar�ϲ���ǽ���
(setq view-calendar-holidays-initially nil) ; ��calendar��ʱ����ʾһ�ѽ���
;; ȥ�������ĵĽ��գ��趨�Լ�����Ľ��գ��� calendar ���� h ��ʾ����
(setq christian-holidays nil)
(setq hebrew-holidays nil)
(setq islamic-holidays nil)
(setq solar-holidays nil)
(setq general-holidays '((holiday-fixed 1 1 "Ԫ��")
(holiday-fixed 2 14 "���˽�")
(holiday-fixed 3 14 "��ɫ���˽�")
(holiday-fixed 4 1 "���˽�")
(holiday-fixed 5 1 "�Ͷ���")
(holiday-float 5 0 2 "ĸ�׽�")
(holiday-fixed 6 1 "��ͯ��")
(holiday-float 6 0 3 "���׽�")
(holiday-fixed 7 1 "������")
(holiday-fixed 8 1 "������")
(holiday-fixed 9 10 "��ʦ��")
(holiday-fixed 10 1 "�����")
(holiday-fixed 12 25 "ʥ����")))
;;Calendarģʽ֧�ָ��ַ�ʽ�����ĵ�ǰ����
;;������ġ�ǰ����ָ��û�е�������һ�죬������ָ�Ѿ���ȥ�����ӣ�
;;  q      �˳�calendarģʽ
;; C-f     �õ�ǰ������ǰһ��
;; C-b     �õ�ǰ�������һ��
;; C-n     �õ�ǰ������ǰһ��
;; C-p     �õ�ǰ�������һ��
;; M-}     �õ�ǰ������ǰһ����
;; M-{     �õ�ǰ�������һ����
;; C-x ]   �õ�ǰ������ǰһ��
;; C-x [   �õ�ǰ�������һ��
;; C-a     �ƶ�����ǰ�ܵĵ�һ��
;; C-e     �ƶ�����ǰ�ܵ����һ��
;; M-a     �ƶ�����ǰ�µĵ�һ��
;; M-e     �ද����ǰ�µ����һ��
;; M-<     �ƶ�����ǰ��ĵ�һ��
;; M->     �ƶ�����ǰ������һ��
;;Calendarģʽ֧���ƶ������ƶ����������ڵķ�ʽ
;; g d     �ƶ���һ���ر������
;;  o      ʹĳ��������·���Ϊ�м���·�
;;  .      �ƶ������������
;; p d     ��ʾĳһ����һ���е�λ�ã�Ҳ��ʾ����Ȼ��ж����졣
;; C-c C-l ˢ��Calendar����
;; Calendar֧������LATEX���롣
;; t m     ������������
;; t M     ��������һ������������
;; t d     ��������������һ����������
;; t w 1   ��һҳ����������ܵ�����
;; t w 2   ����ҳ����������ܵ�����
;; t w 3   ����һ��ISO-SYTLE���ĵ�ǰ������
;; t w 4   ����һ������һ��ʼ�ĵ�ǰ������
;; t y     ���ɵ�ǰ�������
;;EMACS Calendar֧�����ý��գ�
;; h       ��ʾ��ǰ�Ľ���
;; x       ���嵱��Ϊĳ������
;; u       ȡ�������ѱ�����Ľ���
;; e       ��ʾ������ǰ�������µĽ��ա�
;; M-x holiday  ������Ĵ��ڵ���ʾ��ǰ�������µĽ��ա�

;; ���⣬����һЩ����ģ�����˼�����
;; S       ��ʾ������ճ�����ʱ��(�Ǵ�д��S)
;; p C     ��ʾũ������ʹ��
;; g C     ʹ��ũ���ƶ����ڿ���ʹ�� 
;;����F11��ݼ�ָ��Emacs ������ϵͳ
;;(require 'cal-china-x)
;; (setq mark-holidays-in-calendar t)
;; (setq cal-china-x-important-holidays cal-china-x-chinese-holidays)
;; (setq calendar-holidays cal-china-x-important-holidays)
;; (setq calendar-holidays holiday-wsj-holidays)

;; (setq christian-holidays nil) ;; ����ʾ�����̵Ľ���
;; (setq hebrew-holidays nil)    ;; ����ʾϣ�����˵Ľ���
;; (setq islamic-holidays nil)   ;; ����ʾ��˹���̵Ľ���

;;(global-set-key [f10] 'calendar)

;;����������һЩ��ɫ
;;;---------- ��������------------------------------------------------------------------------------------------------------------------




;;----����ʱ��2010/12/06 15:19:57
(defun my-insert-date ()
  (interactive)
  (insert (format-time-string "%Y/%m/%d %H:%M:%S" (current-time))))

(global-set-key (kbd "C-c m d") 'my-insert-date)


;;(global-set-key [(control tab)] 'switch-to-buffer) 
;;-----����ʱ��2010/12/06 15:20:29
(defun my-insert-tab ()
  (interactive)
  (insert "    "))

(global-set-key (read-kbd-macro "<C-tab>") 'my-insert-tab) 

;;ɾ���Ķ�����
;;(global-set-key [(f2)] 'browse-kill-ring)
(global-set-key (kbd "<f12> k") 'browse-kill-ring)
;;IN html-helper-mode , NOT auto indents
(setq html-helper-never-indent 't)

(provide 'my-global-key-settings)
