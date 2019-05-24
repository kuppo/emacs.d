(use-package elfeed
  :bind
  ("C-x w" . 'elfeed)

  :config
  ;; interested feeds
  (setq elfeed-feeds
        '(("http://codefine.site/rss_factory?url=toutiao.io" DEV-news Tech-news)
          ("https://dot.kde.org/rss.xml" KDE-dot-news Tech-news)
          ("https://www.kernel.org/feeds/kdist.xml" Kernel-dist Kernel)
          ("https://www.kernel.org/feeds/all.atom.xml" Kernel-archive-atom Kernel)
          ("https://wiki.archlinux.org/index.php?title=Special:RecentChanges&feed=rss" ArchLinux-recent-changes)
          ("https://www.linux.com/feeds/rss" Linux-news Tech-news)
          ("http://ergoemacs.org/emacs/blog.xml" Emacs)
          ("http://xahlee.info/comp/blog.xml" Programming)
          ("https://www.linux.com/feeds/rss" Linux-news Tech-news))))

(provide 'init-elfeed)
