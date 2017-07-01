.class Lorg/telegram/ui/StickersActivity$2;
.super Ljava/lang/Object;
.source "StickersActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/StickersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/StickersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/StickersActivity;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lorg/telegram/ui/StickersActivity$2;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 162
    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$2;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->stickersStartRow:I
    invoke-static {v2}, Lorg/telegram/ui/StickersActivity;->access$200(Lorg/telegram/ui/StickersActivity;)I

    move-result v2

    if-lt p2, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$2;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->stickersEndRow:I
    invoke-static {v2}, Lorg/telegram/ui/StickersActivity;->access$300(Lorg/telegram/ui/StickersActivity;)I

    move-result v2

    if-ge p2, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$2;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/StickersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 163
    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$2;->this$0:Lorg/telegram/ui/StickersActivity;

    # invokes: Lorg/telegram/ui/StickersActivity;->sendReorder()V
    invoke-static {v2}, Lorg/telegram/ui/StickersActivity;->access$400(Lorg/telegram/ui/StickersActivity;)V

    .line 164
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getStickerSets()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 165
    .local v0, "stickerSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    .line 166
    .local v1, "stickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    .end local v0    # "stickerSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .end local v1    # "stickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    :cond_0
    :goto_0
    return-void

    .line 169
    .restart local v0    # "stickerSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .restart local v1    # "stickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$2;->this$0:Lorg/telegram/ui/StickersActivity;

    new-instance v3, Lorg/telegram/ui/Components/StickersAlert;

    iget-object v4, p0, Lorg/telegram/ui/StickersActivity$2;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/StickersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v5, v0, v5}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/StickersActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0
.end method
