.class Lorg/telegram/ui/Components/WebFrameLayout$7;
.super Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegate;
.source "WebFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/WebFrameLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/WebFrameLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/WebFrameLayout;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lorg/telegram/ui/Components/WebFrameLayout$7;->this$0:Lorg/telegram/ui/Components/WebFrameLayout;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpenAnimationEnd()V
    .locals 13

    .prologue
    .line 323
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 324
    .local v6, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "Referer"

    const-string/jumbo v1, "http://youtube.com"

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const/4 v11, 0x0

    .line 327
    .local v11, "ok":Z
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/WebFrameLayout$7;->this$0:Lorg/telegram/ui/Components/WebFrameLayout;

    # getter for: Lorg/telegram/ui/Components/WebFrameLayout;->openUrl:Ljava/lang/String;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebFrameLayout;->access$500(Lorg/telegram/ui/Components/WebFrameLayout;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 328
    .local v12, "uri":Landroid/net/Uri;
    invoke-virtual {v12}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 329
    .local v8, "host":Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string/jumbo v0, "youtube.com"

    invoke-virtual {v8, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "youtu.be"

    invoke-virtual {v8, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 330
    :cond_1
    sget-object v0, Lorg/telegram/ui/Components/WebFrameLayout;->youtubeIdRegex:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebFrameLayout$7;->this$0:Lorg/telegram/ui/Components/WebFrameLayout;

    # getter for: Lorg/telegram/ui/Components/WebFrameLayout;->openUrl:Ljava/lang/String;
    invoke-static {v1}, Lorg/telegram/ui/Components/WebFrameLayout;->access$500(Lorg/telegram/ui/Components/WebFrameLayout;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 331
    .local v10, "matcher":Ljava/util/regex/Matcher;
    const/4 v9, 0x0

    .line 332
    .local v9, "id":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 333
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 335
    :cond_2
    if-eqz v9, :cond_3

    .line 336
    const/4 v11, 0x1

    .line 337
    iget-object v0, p0, Lorg/telegram/ui/Components/WebFrameLayout$7;->this$0:Lorg/telegram/ui/Components/WebFrameLayout;

    # getter for: Lorg/telegram/ui/Components/WebFrameLayout;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebFrameLayout;->access$600(Lorg/telegram/ui/Components/WebFrameLayout;)Landroid/webkit/WebView;

    move-result-object v0

    const-string/jumbo v1, "http://youtube.com"

    const-string/jumbo v2, "<!DOCTYPE html><html><head><style>body { margin: 0; width:100%%; height:100%%;  background-color:#000; }html { width:100%%; height:100%%; background-color:#000; }.embed-container iframe,.embed-container object,    .embed-container embed {        position: absolute;        top: 0;        left: 0;        width: 100%% !important;        height: 100%% !important;    }    </style></head><body>    <div class=\"embed-container\">        <div id=\"player\"></div>    </div>    <script src=\"https://www.youtube.com/iframe_api\"></script>    <script>    var player;    YT.ready(function() {         player = new YT.Player(\"player\", {                                \"width\" : \"100%%\",                                \"events\" : {                                \"onReady\" : \"onReady\",                                },                                \"videoId\" : \"%1$s\",                                \"height\" : \"100%%\",                                \"playerVars\" : {                                \"start\" : 0,                                \"rel\" : 0,                                \"showinfo\" : 0,                                \"modestbranding\" : 1,                                \"iv_load_policy\" : 3,                                \"autohide\" : 1,                                \"cc_load_policy\" : 1,                                \"playsinline\" : 1,                                \"controls\" : 1                                }                                });        player.setSize(window.innerWidth, window.innerHeight);    });    function onReady(event) {        player.playVideo();    }    window.onresize = function() {        player.setSize(window.innerWidth, window.innerHeight);    }    </script></body></html>"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v9, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "UTF-8"

    const-string/jumbo v5, "http://youtube.com"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    .end local v8    # "host":Ljava/lang/String;
    .end local v9    # "id":Ljava/lang/String;
    .end local v10    # "matcher":Ljava/util/regex/Matcher;
    .end local v12    # "uri":Landroid/net/Uri;
    :cond_3
    :goto_0
    if-nez v11, :cond_4

    .line 345
    :try_start_1
    iget-object v0, p0, Lorg/telegram/ui/Components/WebFrameLayout$7;->this$0:Lorg/telegram/ui/Components/WebFrameLayout;

    # getter for: Lorg/telegram/ui/Components/WebFrameLayout;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebFrameLayout;->access$600(Lorg/telegram/ui/Components/WebFrameLayout;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/WebFrameLayout$7;->this$0:Lorg/telegram/ui/Components/WebFrameLayout;

    # getter for: Lorg/telegram/ui/Components/WebFrameLayout;->embedUrl:Ljava/lang/String;
    invoke-static {v1}, Lorg/telegram/ui/Components/WebFrameLayout;->access$700(Lorg/telegram/ui/Components/WebFrameLayout;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 350
    :cond_4
    :goto_1
    return-void

    .line 340
    :catch_0
    move-exception v7

    .line 341
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 346
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 347
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
