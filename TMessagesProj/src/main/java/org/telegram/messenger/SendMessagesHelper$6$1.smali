.class Lorg/telegram/messenger/SendMessagesHelper$6$1;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper$6;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$6;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .prologue
    .line 1032
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1035
    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-eqz v4, :cond_2

    .line 1036
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;

    .line 1037
    .local v1, "res":Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->message:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1038
    iget-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->alert:Z

    if-eqz v4, :cond_3

    .line 1039
    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$6;->val$parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1061
    .end local v1    # "res":Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;
    :cond_0
    :goto_0
    return-void

    .line 1042
    .restart local v1    # "res":Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$6;->val$parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1043
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v4, "AppName"

    const v5, 0x7f07009a

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1044
    const-string/jumbo v4, "OK"

    const v5, 0x7f07039f

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1045
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->message:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1046
    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$6;->val$parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1060
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "res":Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;
    :cond_2
    :goto_1
    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$6;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    # getter for: Lorg/telegram/messenger/SendMessagesHelper;->waitingForCallback:Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/messenger/SendMessagesHelper;->access$900(Lorg/telegram/messenger/SendMessagesHelper;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v5, v5, Lorg/telegram/messenger/SendMessagesHelper$6;->val$key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1048
    .restart local v1    # "res":Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;
    :cond_3
    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$6;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v4, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 1049
    .local v2, "uid":I
    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$6;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    if-eqz v4, :cond_4

    .line 1050
    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$6;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v4, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    .line 1052
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 1053
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v3, :cond_0

    .line 1056
    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$6;->val$parentFragment:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->message:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Lorg/telegram/ui/ChatActivity;->showAlert(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)V

    goto :goto_1
.end method
