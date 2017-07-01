.class Lorg/telegram/ui/Components/StickersAlert$14$1;
.super Ljava/lang/Object;
.source "StickersAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickersAlert$14;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/StickersAlert$14;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickersAlert$14;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$14$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$14;

    iput-object p2, p0, Lorg/telegram/ui/Components/StickersAlert$14$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/Components/StickersAlert$14$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 378
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$14$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$14;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$14;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # setter for: Lorg/telegram/ui/Components/StickersAlert;->reqId:I
    invoke-static {v0, v3}, Lorg/telegram/ui/Components/StickersAlert;->access$1702(Lorg/telegram/ui/Components/StickersAlert;I)I

    .line 379
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$14$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$14$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$14;

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert$14;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$14$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    # setter for: Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    invoke-static {v1, v0}, Lorg/telegram/ui/Components/StickersAlert;->access$102(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 381
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$14$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$14;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$14;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # invokes: Lorg/telegram/ui/Components/StickersAlert;->updateFields()V
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$1800(Lorg/telegram/ui/Components/StickersAlert;)V

    .line 382
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$14$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$14;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$14;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$1900(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->notifyDataSetChanged()V

    .line 387
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$14$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$14;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$14;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickersAlert;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "AddStickersNotFound"

    const v2, 0x7f070079

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 385
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$14$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$14;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$14;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    goto :goto_0
.end method
