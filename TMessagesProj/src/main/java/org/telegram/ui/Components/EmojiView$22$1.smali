.class Lorg/telegram/ui/Components/EmojiView$22$1;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView$22;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiView$22;

.field final synthetic val$arrayListFinal:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView$22;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1587
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$22$1;->this$1:Lorg/telegram/ui/Components/EmojiView$22;

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView$22$1;->val$arrayListFinal:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1590
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$22$1;->val$arrayListFinal:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1591
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$22$1;->this$1:Lorg/telegram/ui/Components/EmojiView$22;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$22;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->recentImages:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$2600(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    .line 1592
    .local v1, "wasEmpty":Z
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$22$1;->this$1:Lorg/telegram/ui/Components/EmojiView$22;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$22;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$22$1;->val$arrayListFinal:Ljava/util/ArrayList;

    # setter for: Lorg/telegram/ui/Components/EmojiView;->recentImages:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/EmojiView;->access$2602(Lorg/telegram/ui/Components/EmojiView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1593
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$22$1;->this$1:Lorg/telegram/ui/Components/EmojiView$22;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$22;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->gifsAdapter:Lorg/telegram/ui/Components/EmojiView$GifsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$2800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1594
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$22$1;->this$1:Lorg/telegram/ui/Components/EmojiView$22;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$22;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->gifsAdapter:Lorg/telegram/ui/Components/EmojiView$GifsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$2800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView$GifsAdapter;->notifyDataSetChanged()V

    .line 1596
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$22$1;->this$1:Lorg/telegram/ui/Components/EmojiView$22;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$22;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    # setter for: Lorg/telegram/ui/Components/EmojiView;->lastGifLoadTime:J
    invoke-static {v2, v4, v5}, Lorg/telegram/ui/Components/EmojiView;->access$4702(Lorg/telegram/ui/Components/EmojiView;J)J

    .line 1597
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$22$1;->this$1:Lorg/telegram/ui/Components/EmojiView$22;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$22;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "emoji"

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1598
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "lastGifLoadTime"

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$22$1;->this$1:Lorg/telegram/ui/Components/EmojiView$22;

    iget-object v3, v3, Lorg/telegram/ui/Components/EmojiView$22;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->lastGifLoadTime:J
    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$4700(Lorg/telegram/ui/Components/EmojiView;)J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1599
    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$22$1;->this$1:Lorg/telegram/ui/Components/EmojiView$22;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$22;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->recentImages:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$2600(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1600
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$22$1;->this$1:Lorg/telegram/ui/Components/EmojiView$22;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$22;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # invokes: Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V
    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$2900(Lorg/telegram/ui/Components/EmojiView;)V

    .line 1603
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "wasEmpty":Z
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$22$1;->this$1:Lorg/telegram/ui/Components/EmojiView$22;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$22;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # setter for: Lorg/telegram/ui/Components/EmojiView;->loadingRecentGifs:Z
    invoke-static {v2, v6}, Lorg/telegram/ui/Components/EmojiView;->access$4802(Lorg/telegram/ui/Components/EmojiView;Z)Z

    .line 1604
    return-void
.end method
