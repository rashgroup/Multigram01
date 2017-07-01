.class Lorg/telegram/messenger/SendMessagesHelper$8$1;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper$8;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$8;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .prologue
    .line 3147
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 3150
    const/4 v9, 0x0

    .line 3151
    .local v9, "isSentError":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v2, :cond_f

    .line 3152
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$8;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 3153
    .local v4, "oldId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$8;->val$req:Lorg/telegram/tgnet/TLObject;

    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    .line 3154
    .local v5, "isBroadcast":Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3155
    .local v6, "sentMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$8;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 3156
    .local v7, "attachPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;

    if-eqz v2, :cond_6

    .line 3157
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;

    .line 3158
    .local v12, "res":Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$8;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    iget-object v3, v3, Lorg/telegram/messenger/SendMessagesHelper$8;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v12, Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;->id:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v0, v16

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    .line 3159
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$8;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v12, Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;->date:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 3160
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$8;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v12, Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;->entities:Ljava/util/ArrayList;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    .line 3161
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$8;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v3, v12, Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;->out:Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 3162
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v2, :cond_0

    .line 3163
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$8;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v12, Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 3164
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$8;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 3166
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$8;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3167
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$8;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 3169
    :cond_1
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/SendMessagesHelper$8$1$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v12}, Lorg/telegram/messenger/SendMessagesHelper$8$1$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$8$1;Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3175
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$8;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3222
    .end local v12    # "res":Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;
    :cond_2
    :goto_0
    if-nez v9, :cond_3

    .line 3223
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$8;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v3, 0x0

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 3224
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v16, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/4 v2, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v17, v2

    const/16 v18, 0x1

    if-eqz v5, :cond_e

    move v2, v4

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v17, v18

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$8;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v18, v0

    aput-object v18, v17, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$8;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v17, v2

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3225
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v16

    new-instance v2, Lorg/telegram/messenger/SendMessagesHelper$8$1$4;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/SendMessagesHelper$8$1$4;-><init>(Lorg/telegram/messenger/SendMessagesHelper$8$1;IZLjava/util/ArrayList;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3266
    .end local v4    # "oldId":I
    .end local v5    # "isBroadcast":Z
    .end local v6    # "sentMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v7    # "attachPath":Ljava/lang/String;
    :cond_3
    :goto_2
    if-eqz v9, :cond_5

    .line 3267
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    iget-object v3, v3, Lorg/telegram/messenger/SendMessagesHelper$8;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 3268
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$8;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v3, 0x2

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 3269
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$8;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3270
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$8;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    iget-object v3, v3, Lorg/telegram/messenger/SendMessagesHelper$8;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    .line 3271
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$8;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3272
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$8;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    iget-object v3, v3, Lorg/telegram/messenger/SendMessagesHelper$8;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/SendMessagesHelper;->stopVideoService(Ljava/lang/String;)V

    .line 3274
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$8;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    iget-object v3, v3, Lorg/telegram/messenger/SendMessagesHelper$8;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/SendMessagesHelper;->removeFromSendingMessages(I)V

    .line 3276
    :cond_5
    return-void

    .line 3176
    .restart local v4    # "oldId":I
    .restart local v5    # "isBroadcast":Z
    .restart local v6    # "sentMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .restart local v7    # "attachPath":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz v2, :cond_2

    .line 3177
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Updates;

    iget-object v14, v2, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    .line 3178
    .local v14, "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Update;>;"
    const/4 v10, 0x0

    .line 3179
    .local v10, "message":Lorg/telegram/tgnet/TLRPC$Message;
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_3
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_7

    .line 3180
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$Update;

    .line 3181
    .local v13, "update":Lorg/telegram/tgnet/TLRPC$Update;
    instance-of v2, v13, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    if-eqz v2, :cond_9

    move-object v11, v13

    .line 3182
    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    .line 3183
    .local v11, "newMessage":Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;
    iget-object v10, v11, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3184
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$8;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v11, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 3185
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/SendMessagesHelper$8$1$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v11}, Lorg/telegram/messenger/SendMessagesHelper$8$1$2;-><init>(Lorg/telegram/messenger/SendMessagesHelper$8$1;Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3207
    .end local v11    # "newMessage":Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;
    .end local v13    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_7
    :goto_4
    if-eqz v10, :cond_d

    .line 3208
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 3209
    .local v15, "value":Ljava/lang/Integer;
    if-nez v15, :cond_8

    .line 3210
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    iget-wide v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v3, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 3211
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v15}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3213
    :cond_8
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, v10, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v2, v3, :cond_c

    const/4 v2, 0x1

    :goto_5
    iput-boolean v2, v10, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 3215
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$8;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v10, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 3216
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$8;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    iget-object v3, v3, Lorg/telegram/messenger/SendMessagesHelper$8;->val$msgObj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$8;->val$originalPath:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    # invokes: Lorg/telegram/messenger/SendMessagesHelper;->updateMediaPaths(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;Z)V
    invoke-static {v2, v3, v10, v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->access$800(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 3192
    .end local v15    # "value":Ljava/lang/Integer;
    .restart local v13    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_9
    instance-of v2, v13, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    if-eqz v2, :cond_b

    move-object v11, v13

    .line 3193
    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    .line 3194
    .local v11, "newMessage":Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;
    iget-object v10, v11, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3195
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$8;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_a

    .line 3196
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v16, -0x80000000

    or-int v3, v3, v16

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 3198
    :cond_a
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/SendMessagesHelper$8$1$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v11}, Lorg/telegram/messenger/SendMessagesHelper$8$1$3;-><init>(Lorg/telegram/messenger/SendMessagesHelper$8$1;Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 3179
    .end local v11    # "newMessage":Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 3213
    .end local v13    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    .restart local v15    # "value":Ljava/lang/Integer;
    :cond_c
    const/4 v2, 0x0

    goto :goto_5

    .line 3218
    .end local v15    # "value":Ljava/lang/Integer;
    :cond_d
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 3224
    .end local v8    # "a":I
    .end local v10    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v14    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Update;>;"
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$8;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    goto/16 :goto_1

    .line 3261
    .end local v4    # "oldId":I
    .end local v5    # "isBroadcast":Z
    .end local v6    # "sentMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v7    # "attachPath":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v3, "PEER_FLOOD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 3262
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->needShowAlert:I

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3264
    :cond_10
    const/4 v9, 0x1

    goto/16 :goto_2
.end method
