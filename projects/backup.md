---
layout: default
title: Backups on my Mac
permalink: /projects/backup.html
---

<p>
Here are my experiences with doing backups on my Powerbook.
</p>
<p>I decided to use <a href="http://www.shirt-pocket.com/SuperDuper/SuperDuperDescription.html" target="_top">SuperDuper!</a> because it received many accolades by other people.</p>

<p>Now I don't have an external hard drive big enough to hold an entire disk image. Therefore I decided to use my external Linux server as my backup medium. I had no problem mounting the file system with Samba(SMB) and then doing a network backup with SuperDuper!.</p>

<p>My troubles started when I wanted to restore this disk image. I had upgraded my OS and wanted to roll back to an earlier version using my backup on the network drive. I realized that I couldn't be running the OS on the hard drive I wanted to restore, so I booted with the install disk. Using the Disk Utility on the Tiger Install disk it is possible to do a disk restore, but there is no way to access a network drive. However I read that it should be possible to do a http restore with Disk Utility. I therefore installed Apache2 with large file support (80GB), and made the disk image available. To test it I was able to download the file with other computers. However Disk Utility did not like my HTTP restore and failed.</p>
<p>Next I borrowed an external hard drive to move the image over. However I ran into more problems. I found that Disk Utility wants an Apple (HFS) formatted external hard drive for it to read the files. This was an issue as the external hard drive contained data. I did not find a reliable way to resize a Windows partition and add a Mac partition to it (although Boot Camp should be able to do that (but I didn't have that)).</p>
<p>I gave up on that approach and had a new idea. I'd get a new 2.5" external hard drive, and install the hard drive into my laptop after I've put the disk image on the external hard drive. After formatting the external hard drive as HFS, all I had to do was use a working computer to transfer the image. For this I used another Mac to transfer the image over SMB from the Linux server. I ran into some more problems with Disk Utility. It kept giving me errors like:
	
<p>Frustrated, I tried using another program <a href="http://www.bombich.com/software/ccc.html" target="_top">Carbon Copy Cloner</a>. Luckily it worked with this program. Now I had my disk image on the 2.5" hard drive. I opened my laptop and installed my new hard drive. It worked!</p>

<p>It was a lot harder to restore my backup than I thought, but at least I got a hard drive upgrade out of it.</p>

<p>If you have any comments or know how I could have done this easier, please email me and let me know.</p>
