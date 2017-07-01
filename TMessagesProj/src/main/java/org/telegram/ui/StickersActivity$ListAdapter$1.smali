.class Lorg/telegram/ui/StickersActivity$ListAdapter$1;
.super Ljava/lang/Object;
.source "StickersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/StickersActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/StickersActivity$ListAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/StickersActivity$ListAdapter;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v10, 0x7f0704a3

    const v9, 0x7f07049e

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 304
    iget-object v5, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/StickersActivity$ListAdapter;

    iget-object v5, v5, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # invokes: Lorg/telegram/ui/StickersActivity;->sendReorder()V
    invoke-static {v5}, Lorg/telegram/ui/StickersActivity;->access$400(Lorg/telegram/ui/StickersActivity;)V

    .line 305
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/StickerSetCell;

    .line 306
    .local v1, "cell":Lorg/telegram/ui/Cells/StickerSetCell;
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/StickerSetCell;->getStickersSet()Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v4

    .line 307
    .local v4, "stickerSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/StickersActivity$ListAdapter;

    iget-object v5, v5, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/StickersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 308
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 311
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->official:Z

    if-eqz v5, :cond_1

    .line 312
    new-array v3, v7, [I

    aput v6, v3, v6

    .line 313
    .local v3, "options":[I
    new-array v2, v7, [Ljava/lang/CharSequence;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->disabled:Z

    if-nez v5, :cond_0

    const-string/jumbo v5, "StickersHide"

    invoke-static {v5, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    aput-object v5, v2, v6

    .line 325
    .local v2, "items":[Ljava/lang/CharSequence;
    :goto_1
    new-instance v5, Lorg/telegram/ui/StickersActivity$ListAdapter$1$1;

    invoke-direct {v5, p0, v3, v4}, Lorg/telegram/ui/StickersActivity$ListAdapter$1$1;-><init>(Lorg/telegram/ui/StickersActivity$ListAdapter$1;[ILorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 331
    iget-object v5, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/StickersActivity$ListAdapter;

    iget-object v5, v5, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/StickersActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 332
    return-void

    .line 313
    .end local v2    # "items":[Ljava/lang/CharSequence;
    :cond_0
    const-string/jumbo v5, "StickersShow"

    invoke-static {v5, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 317
    .end local v3    # "options":[I
    :cond_1
    new-array v3, v8, [I

    fill-array-data v3, :array_0

    .line 318
    .restart local v3    # "options":[I
    new-array v2, v8, [Ljava/lang/CharSequence;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->disabled:Z

    if-nez v5, :cond_2

    const-string/jumbo v5, "StickersHide"

    invoke-static {v5, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    :goto_2
    aput-object v5, v2, v6

    const-string/jumbo v5, "StickersRemove"

    const v6, 0x7f0704a0

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "StickersShare"

    const v7, 0x7f0704a2

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "StickersCopy"

    const v7, 0x7f07049d

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .restart local v2    # "items":[Ljava/lang/CharSequence;
    goto :goto_1

    .end local v2    # "items":[Ljava/lang/CharSequence;
    :cond_2
    const-string/jumbo v5, "StickersShow"

    invoke-static {v5, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 317
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method
