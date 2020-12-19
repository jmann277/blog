# Screencast tasks

Project: 
yt.screencast.hla.lecture_number

1. Write description
2. Construct thumbnail
3. Write script
    -  depends on 1 2
4. Draw deck
    -  depends on 1 2
5. Integrate/edit board and script
    - depends on 3 4
6. Record video
    - depends on 6
7. Edit video
    - depends on 6
8. Post Video
    - depends on 7

due:
one month after creation

```bash
$ maketasks -r iv 
# task project:yt.screencast.hla.iv write description
# task project:yt.screencast.hla.iv depends:1 write script
# task project:yt.screencast.hla.iv depends:1 draw deck
# task project:yt.screencast.hla.iv depends:3,4 draw deck
# task project:yt.screencast.hla.iv depends:6 integrate/edit board & script
# task project:yt.screencast.hla.iv depends:6 record video
# task project:yt.screencast.hla.iv depends:7 post video
```
