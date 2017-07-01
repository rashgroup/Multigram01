.class public Lorg/telegram/ui/Components/WebFrameLayout;
.super Landroid/widget/FrameLayout;
.source "WebFrameLayout.java"


# static fields
.field static final youtubeIdRegex:Ljava/util/regex/Pattern;


# instance fields
.field private customView:Landroid/view/View;

.field private customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private dialog:Lorg/telegram/ui/ActionBar/BottomSheet;

.field private embedUrl:Ljava/lang/String;

.field private fullscreenVideoContainer:Landroid/widget/FrameLayout;

.field private hasDescription:Z

.field private height:I

.field private openUrl:Ljava/lang/String;

.field private progressBar:Landroid/widget/ProgressBar;

.field private webView:Landroid/webkit/WebView;

.field private width:I

.field private final youtubeFrame:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string/jumbo v0, "(?:youtube(?:-nocookie)?\\.com\\/(?:[^\\/\\n\\s]+\\/\\S+\\/|(?:v|e(?:mbed)?)\\/|\\S*?[?&]v=)|youtu\\.be\\/)([a-zA-Z0-9_-]{11})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebFrameLayout;->youtubeIdRegex:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentDialog"    # Lorg/telegram/ui/ActionBar/BottomSheet;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "descripton"    # Ljava/lang/String;
    .param p5, "originalUrl"    # Ljava/lang/String;
    .param p6, "url"    # Ljava/lang/String;
    .param p7, "w"    # I
    .param p8, "h"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 61
    const-string/jumbo v1, "<!DOCTYPE html><html><head><style>body { margin: 0; width:100%%; height:100%%;  background-color:#000; }html { width:100%%; height:100%%; background-color:#000; }.embed-container iframe,.embed-container object,    .embed-container embed {        position: absolute;        top: 0;        left: 0;        width: 100%% !important;        height: 100%% !important;    }    </style></head><body>    <div class=\"embed-container\">        <div id=\"player\"></div>    </div>    <script src=\"https://www.youtube.com/iframe_api\"></script>    <script>    var player;    YT.ready(function() {         player = new YT.Player(\"player\", {                                \"width\" : \"100%%\",                                \"events\" : {                                \"onReady\" : \"onReady\",                                },                                \"videoId\" : \"%1$s\",                                \"height\" : \"100%%\",                                \"playerVars\" : {                                \"start\" : 0,                                \"rel\" : 0,                                \"showinfo\" : 0,                                \"modestbranding\" : 1,                                \"iv_load_policy\" : 3,                                \"autohide\" : 1,                                \"cc_load_policy\" : 1,                                \"playsinline\" : 1,                                \"controls\" : 1                                }                                });        player.setSize(window.innerWidth, window.innerHeight);    });    function onReady(event) {        player.playVideo();    }    window.onresize = function() {        player.setSize(window.innerWidth, window.innerHeight);    }    </script></body></html>"

    iput-object v1, p0, Lorg/telegram/ui/Components/WebFrameLayout;->youtubeFrame:Ljava/lang/String;

    .line 115
    move-object/from16 v0, p6

    iput-object v0, p0, Lorg/telegram/ui/Components/WebFrameLayout;->embedUrl:Ljava/lang/String;

    .line 116
    if-eqz p4, :cond_7

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/WebFrameLayout;->hasDescription:Z

    .line 117
    move-object/from16 v0, p5

    iput-object v0, p0, Lorg/telegram/ui/Components/WebFrameLayout;->openUrl:Ljava/lang/String;

    .line 118
    move/from16 v0, p7

    iput v0, p0, Lorg/telegram/ui/Components/WebFrameLayout;->width:I

    .line 119
    move/from16 v0, p8

    iput v0, p0, Lorg/telegram/ui/Components/WebFrameLayout;->height:I

    .line 120
    iget v1, p0, Lorg/telegram/ui/Components/WebFrameLayout;->width:I

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/WebFrameLayout;->height:I

    if-nez v1, :cond_1

    .line 121
    :cond_0
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, p0, Lorg/telegram/ui/Components/WebFrameLayout;->width:I

    .line 122
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/telegram/ui/Components/WebFrameLayout;->height:I

    .line 124
    :cond_1
    move-object/from16 v0, p2

    iput-object v0, p0, Lorg/telegram/ui/Components/WebFrameLayout;->dialog:Lorg/telegram/ui/ActionBar/BottomSheet;

    .line 126
    new-instance v1, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/WebFrameLayout;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    .line 127
    iget-object v1, p0, Lorg/telegram/ui/Components/WebFrameLayout;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 128
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    .line 129
    iget-object v1, p0, Lorg/telegram/ui/Components/WebFrameLayout;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 131
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyTopPadding(Z)V

    .line 132
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    .line 133
    iget-object v1, p0, Lorg/telegram/ui/Components/WebFrameLayout;->dialog:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/WebFrameLayout;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    iget-object v1, p0, Lorg/telegram/ui/Components/WebFrameLayout;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 136
    new-instance v1, Landroid/webkit/WebView;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/WebFrameLayout;->webView:Landroid/webkit/WebView;

    .line 137
    iget-object v1, p0, Lorg/telegram/ui/Components/WebFrameLayout;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 138
    iget-object v1, p0, Lorg/telegram/ui/Components/WebFrameLayout;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 139
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_3

    .line 140
    iget-object v1, p0, Lorg/telegram/ui/Components/WebFrameLayout;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 143
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/WebFrameLayout;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v13

    .line 144
    .local v13, "userAgent":Ljava/lang/String;
    if-eqz v13, :cond_4

    .line 145
    const-string/jumbo v1, "Android"

    const-string/jumbo v2, ""

    invoke-virtual {v13, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 146
    iget-object v1, p0, Lorg/telegram/ui/Components/WebFrameLayout;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 148
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_5

    .line 149
    iget-object v1, p0, Lorg/telegram/ui/Components/WebFrameLayout;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 150
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v8

    .line 151
    .local v8, "cookieManager":Landroid/webkit/CookieManager;
    iget-object v1, p0, Lorg/telegram/ui/Components/WebFrameLayout;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x1

    invoke-virtual {v8, v1, v2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 154
    .end local v8    # "cookieManager":Landroid/webkit/CookieManager;
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/WebFrameLayout;->webView:Landroid/webkit/WebView;

    new-instance v2, Lorg/telegram/ui/Components/WebFrameLayout$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/WebFrameLayout$1;-><init>(Lorg/telegram/ui/Components/WebFrameLayout;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 194
    iget-object v1, p0, Lorg/telegram/ui/Components/WebFrameLayout;->webView:Landroid/webkit/WebView;

    new-instance v2, Lorg/telegram/ui/Components/WebFrameLayout$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/WebFrameLayout$2;-><init>(Lorg/telegram/ui/Components/WebFrameLayout;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 208
    iget-object v14, p0, Lorg/telegram/ui/Components/WebFrameLayout;->webView:Landroid/webkit/WebView;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/16 v3, 0x33

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-boolean v7, p0, Lorg/telegram/ui/Components/WebFrameLayout;->hasDescription:Z

    if-eqz v7, :cond_8

    const/16 v7, 0x16

    :goto_1
    add-int/lit8 v7, v7, 0x54

    int-to-float v7, v7

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v14, v1}, Lorg/telegram/ui/Components/WebFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    new-instance v1, Landroid/widget/ProgressBar;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/WebFrameLayout;->progressBar:Landroid/widget/ProgressBar;

    .line 211
    iget-object v14, p0, Lorg/telegram/ui/Components/WebFrameLayout;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, -0x2

    const/high16 v2, -0x40000000    # -2.0f

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-boolean v7, p0, Lorg/telegram/ui/Components/WebFrameLayout;->hasDescription:Z

    if-eqz v7, :cond_9

    const/16 v7, 0x16

    :goto_2
    add-int/lit8 v7, v7, 0x54

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v14, v1}, Lorg/telegram/ui/Components/WebFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    iget-boolean v1, p0, Lorg/telegram/ui/Components/WebFrameLayout;->hasDescription:Z

    if-eqz v1, :cond_6

    .line 216
    new-instance v12, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 217
    .local v12, "textView":Landroid/widget/TextView;
    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v12, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 218
    const v1, -0xddddde

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 219
    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 221
    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 222
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 223
    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v12, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 224
    const/4 v1, -0x1

    const/high16 v2, -0x40000000    # -2.0f

    const/16 v3, 0x53

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x429a0000    # 77.0f

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v12, v1}, Lorg/telegram/ui/Components/WebFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    .end local v12    # "textView":Landroid/widget/TextView;
    :cond_6
    new-instance v12, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 228
    .restart local v12    # "textView":Landroid/widget/TextView;
    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v12, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 229
    const v1, -0x757576

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 232
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 233
    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v12, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 234
    const/4 v1, -0x1

    const/high16 v2, -0x40000000    # -2.0f

    const/16 v3, 0x53

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x42640000    # 57.0f

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v12, v1}, Lorg/telegram/ui/Components/WebFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    new-instance v10, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 237
    .local v10, "lineView":Landroid/view/View;
    const v1, -0x242425

    invoke-virtual {v10, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 238
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/16 v4, 0x53

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v10, v1}, Lorg/telegram/ui/Components/WebFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 241
    new-instance v9, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 242
    .local v9, "frameLayout":Landroid/widget/FrameLayout;
    const/4 v1, -0x1

    invoke-virtual {v9, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 243
    const/4 v1, -0x1

    const/16 v2, 0x30

    const/16 v3, 0x53

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v9, v1}, Lorg/telegram/ui/Components/WebFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    new-instance v12, Landroid/widget/TextView;

    .end local v12    # "textView":Landroid/widget/TextView;
    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 246
    .restart local v12    # "textView":Landroid/widget/TextView;
    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v12, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 247
    const v1, -0xe65818

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 248
    const/16 v1, 0x11

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 249
    const/high16 v1, 0x2f000000

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createBarSelectorDrawable(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v12, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 251
    const-string/jumbo v1, "Close"

    const v2, 0x7f07016f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 253
    const/4 v1, -0x2

    const/4 v2, -0x1

    const/16 v3, 0x33

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v12, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    new-instance v1, Lorg/telegram/ui/Components/WebFrameLayout$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/WebFrameLayout$3;-><init>(Lorg/telegram/ui/Components/WebFrameLayout;)V

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 264
    .local v11, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 265
    const/4 v1, -0x2

    const/4 v2, -0x1

    const/16 v3, 0x35

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v11, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    new-instance v12, Landroid/widget/TextView;

    .end local v12    # "textView":Landroid/widget/TextView;
    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 268
    .restart local v12    # "textView":Landroid/widget/TextView;
    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v12, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 269
    const v1, -0xe65818

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 270
    const/16 v1, 0x11

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 271
    const/high16 v1, 0x2f000000

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createBarSelectorDrawable(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v12, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 273
    const-string/jumbo v1, "Copy"

    const v2, 0x7f070184

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 275
    const/4 v1, -0x2

    const/4 v2, -0x1

    const/16 v3, 0x33

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v11, v12, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    new-instance v1, Lorg/telegram/ui/Components/WebFrameLayout$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/WebFrameLayout$4;-><init>(Lorg/telegram/ui/Components/WebFrameLayout;)V

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    new-instance v12, Landroid/widget/TextView;

    .end local v12    # "textView":Landroid/widget/TextView;
    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 294
    .restart local v12    # "textView":Landroid/widget/TextView;
    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v12, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 295
    const v1, -0xe65818

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 296
    const/16 v1, 0x11

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 297
    const/high16 v1, 0x2f000000

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createBarSelectorDrawable(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 298
    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v12, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 299
    const-string/jumbo v1, "OpenInBrowser"

    const v2, 0x7f0703ae

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 301
    const/4 v1, -0x2

    const/4 v2, -0x1

    const/16 v3, 0x33

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v11, v12, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    new-instance v1, Lorg/telegram/ui/Components/WebFrameLayout$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/WebFrameLayout$5;-><init>(Lorg/telegram/ui/Components/WebFrameLayout;)V

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    new-instance v1, Lorg/telegram/ui/Components/WebFrameLayout$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/WebFrameLayout$6;-><init>(Lorg/telegram/ui/Components/WebFrameLayout;)V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/WebFrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 319
    new-instance v1, Lorg/telegram/ui/Components/WebFrameLayout$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/WebFrameLayout$7;-><init>(Lorg/telegram/ui/Components/WebFrameLayout;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setDelegate(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;)V

    .line 352
    return-void

    .line 116
    .end local v9    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v10    # "lineView":Landroid/view/View;
    .end local v11    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v12    # "textView":Landroid/widget/TextView;
    .end local v13    # "userAgent":Ljava/lang/String;
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 208
    .restart local v13    # "userAgent":Ljava/lang/String;
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 211
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/WebFrameLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebFrameLayout;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Components/WebFrameLayout;->customView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/WebFrameLayout;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebFrameLayout;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 45
    iput-object p1, p0, Lorg/telegram/ui/Components/WebFrameLayout;->customView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/WebFrameLayout;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebFrameLayout;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Components/WebFrameLayout;->dialog:Lorg/telegram/ui/ActionBar/BottomSheet;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/WebFrameLayout;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebFrameLayout;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Components/WebFrameLayout;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/WebFrameLayout;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebFrameLayout;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Components/WebFrameLayout;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/WebFrameLayout;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebFrameLayout;
    .param p1, "x1"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 45
    iput-object p1, p0, Lorg/telegram/ui/Components/WebFrameLayout;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/WebFrameLayout;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebFrameLayout;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Components/WebFrameLayout;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/WebFrameLayout;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebFrameLayout;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Components/WebFrameLayout;->openUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/WebFrameLayout;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebFrameLayout;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Components/WebFrameLayout;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/WebFrameLayout;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebFrameLayout;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Components/WebFrameLayout;->embedUrl:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 356
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 358
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Components/WebFrameLayout;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/WebFrameLayout;->removeView(Landroid/view/View;)V

    .line 359
    iget-object v1, p0, Lorg/telegram/ui/Components/WebFrameLayout;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 360
    iget-object v1, p0, Lorg/telegram/ui/Components/WebFrameLayout;->webView:Landroid/webkit/WebView;

    const-string/jumbo v2, "about:blank"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, Lorg/telegram/ui/Components/WebFrameLayout;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :goto_0
    return-void

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 369
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 370
    .local v1, "parentWidth":I
    iget v3, p0, Lorg/telegram/ui/Components/WebFrameLayout;->width:I

    div-int/2addr v3, v1

    int-to-float v2, v3

    .line 371
    .local v2, "scale":F
    iget v3, p0, Lorg/telegram/ui/Components/WebFrameLayout;->height:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v0, v3

    .line 372
    .local v0, "h":I
    iget-boolean v3, p0, Lorg/telegram/ui/Components/WebFrameLayout;->hasDescription:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x16

    :goto_0
    add-int/lit8 v3, v3, 0x54

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-super {p0, p1, v3}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 373
    return-void

    .line 372
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
