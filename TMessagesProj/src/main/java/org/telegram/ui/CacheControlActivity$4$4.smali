.class Lorg/telegram/ui/CacheControlActivity$4$4;
.super Ljava/lang/Object;
.source "CacheControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CacheControlActivity$4;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/CacheControlActivity$4;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CacheControlActivity$4;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity$4$4;->this$1:Lorg/telegram/ui/CacheControlActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 525
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$4$4;->this$1:Lorg/telegram/ui/CacheControlActivity$4;

    iget-object v1, v1, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->visibleDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lorg/telegram/ui/CacheControlActivity;->access$1600(Lorg/telegram/ui/CacheControlActivity;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 526
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$4$4;->this$1:Lorg/telegram/ui/CacheControlActivity$4;

    iget-object v1, v1, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->visibleDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lorg/telegram/ui/CacheControlActivity;->access$1700(Lorg/telegram/ui/CacheControlActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$4$4;->this$1:Lorg/telegram/ui/CacheControlActivity$4;

    iget-object v1, v1, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # invokes: Lorg/telegram/ui/CacheControlActivity;->cleanupFolders()V
    invoke-static {v1}, Lorg/telegram/ui/CacheControlActivity;->access$1800(Lorg/telegram/ui/CacheControlActivity;)V

    .line 532
    return-void

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
