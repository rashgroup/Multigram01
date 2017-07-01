.class Lorg/telegram/ui/ChatActivity$83$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$83;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$83;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$83;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .prologue
    .line 8512
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$83$1;->this$1:Lorg/telegram/ui/ChatActivity$83;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$83$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 8515
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$83$1;->this$1:Lorg/telegram/ui/ChatActivity$83;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$83;->this$0:Lorg/telegram/ui/ChatActivity;

    # setter for: Lorg/telegram/ui/ChatActivity;->editingMessageObjectReqId:I
    invoke-static {v1, v3}, Lorg/telegram/ui/ChatActivity;->access$10202(Lorg/telegram/ui/ChatActivity;I)I

    .line 8516
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$83$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-nez v1, :cond_1

    .line 8517
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$83$1;->this$1:Lorg/telegram/ui/ChatActivity$83;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$83;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8518
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v1, "AppName"

    const v2, 0x7f07009a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 8519
    const-string/jumbo v1, "EditMessageError"

    const v2, 0x7f0701c6

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 8520
    const-string/jumbo v1, "OK"

    const v2, 0x7f07039f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 8521
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$83$1;->this$1:Lorg/telegram/ui/ChatActivity$83;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$83;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 8523
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$83$1;->this$1:Lorg/telegram/ui/ChatActivity$83;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$83;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_0

    .line 8524
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$83$1;->this$1:Lorg/telegram/ui/ChatActivity$83;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$83;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1, v4, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setEditingMessageObject(Lorg/telegram/messenger/MessageObject;Z)V

    .line 8529
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 8527
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$83$1;->this$1:Lorg/telegram/ui/ChatActivity$83;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$83;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x1

    # invokes: Lorg/telegram/ui/ChatActivity;->showEditDoneProgress(ZZ)V
    invoke-static {v1, v3, v2}, Lorg/telegram/ui/ChatActivity;->access$9900(Lorg/telegram/ui/ChatActivity;ZZ)V

    goto :goto_0
.end method
