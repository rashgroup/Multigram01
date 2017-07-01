.class Lorg/telegram/ui/Components/WebFrameLayout$2;
.super Landroid/webkit/WebViewClient;
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
    .line 194
    iput-object p1, p0, Lorg/telegram/ui/Components/WebFrameLayout$2;->this$0:Lorg/telegram/ui/Components/WebFrameLayout;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 197
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lorg/telegram/ui/Components/WebFrameLayout$2;->this$0:Lorg/telegram/ui/Components/WebFrameLayout;

    # getter for: Lorg/telegram/ui/Components/WebFrameLayout;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebFrameLayout;->access$400(Lorg/telegram/ui/Components/WebFrameLayout;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 205
    return-void
.end method
