.class Lorg/telegram/messenger/MessagesController$56;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->checkLastDialogMessage(Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$InputPeer;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

.field final synthetic val$lower_id:I

.field final synthetic val$newTaskId:J


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_dialog;JI)V
    .locals 1

    .prologue
    .line 3340
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$56;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iput-wide p3, p0, Lorg/telegram/messenger/MessagesController$56;->val$newTaskId:J

    iput p5, p0, Lorg/telegram/messenger/MessagesController$56;->val$lower_id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 11
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 3343
    if-eqz p1, :cond_0

    move-object v10, p1

    .line 3344
    check-cast v10, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 3345
    .local v10, "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3346
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;-><init>()V

    .line 3347
    .local v7, "dialogs":Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Message;

    .line 3348
    .local v9, "newMessage":Lorg/telegram/tgnet/TLRPC$Message;
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 3349
    .local v8, "newDialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$56;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->flags:I

    iput v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->flags:I

    .line 3350
    iget v0, v9, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    .line 3351
    iget v0, v9, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    .line 3352
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$56;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iput-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 3353
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$56;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pts:I

    iput v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pts:I

    .line 3354
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$56;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    iput v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    .line 3355
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$56;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    iput v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    .line 3356
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$56;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    iput v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    .line 3357
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$56;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    iput-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    iput-wide v0, v9, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 3358
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;->users:Ljava/util/ArrayList;

    iget-object v1, v10, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3359
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;->chats:Ljava/util/ArrayList;

    iget-object v1, v10, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3360
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3361
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;->messages:Ljava/util/ArrayList;

    iget-object v1, v10, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3362
    iput v2, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;->count:I

    .line 3363
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Lorg/telegram/messenger/MessagesController;->processDialogsUpdate(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Ljava/util/ArrayList;)V

    .line 3364
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, v10, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaController;->getAutodownloadMask()I

    move-result v5

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZIZ)V

    .line 3377
    .end local v7    # "dialogs":Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;
    .end local v8    # "newDialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v9    # "newMessage":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v10    # "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    :cond_0
    :goto_0
    iget-wide v0, p0, Lorg/telegram/messenger/MessagesController$56;->val$newTaskId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 3378
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController$56;->val$newTaskId:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->removePendingTask(J)V

    .line 3380
    :cond_1
    new-instance v0, Lorg/telegram/messenger/MessagesController$56$2;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MessagesController$56$2;-><init>(Lorg/telegram/messenger/MessagesController$56;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3386
    return-void

    .line 3366
    .restart local v10    # "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    :cond_2
    new-instance v0, Lorg/telegram/messenger/MessagesController$56$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MessagesController$56$1;-><init>(Lorg/telegram/messenger/MessagesController$56;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
