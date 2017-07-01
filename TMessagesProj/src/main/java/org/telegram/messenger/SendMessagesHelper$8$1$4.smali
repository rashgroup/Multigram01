.class Lorg/telegram/messenger/SendMessagesHelper$8$1$4;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper$8$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/SendMessagesHelper$8$1;

.field final synthetic val$attachPath:Ljava/lang/String;

.field final synthetic val$isBroadcast:Z

.field final synthetic val$oldId:I

.field final synthetic val$sentMessages:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$8$1;IZLjava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3225
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$8$1$4;->this$2:Lorg/telegram/messenger/SendMessagesHelper$8$1;

    iput p2, p0, Lorg/telegram/messenger/SendMessagesHelper$8$1$4;->val$oldId:I

    iput-boolean p3, p0, Lorg/telegram/messenger/SendMessagesHelper$8$1$4;->val$isBroadcast:Z

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$8$1$4;->val$sentMessages:Ljava/util/ArrayList;

    iput-object p5, p0, Lorg/telegram/messenger/SendMessagesHelper$8$1$4;->val$attachPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 3228
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$8$1$4;->this$2:Lorg/telegram/messenger/SendMessagesHelper$8$1;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$8;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iget v0, p0, Lorg/telegram/messenger/SendMessagesHelper$8$1$4;->val$oldId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v0, p0, Lorg/telegram/messenger/SendMessagesHelper$8$1$4;->val$isBroadcast:Z

    if-eqz v0, :cond_2

    iget v5, p0, Lorg/telegram/messenger/SendMessagesHelper$8$1$4;->val$oldId:I

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$8$1$4;->this$2:Lorg/telegram/messenger/SendMessagesHelper$8$1;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$8;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move v7, v6

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesStorage;->updateMessageStateAndId(JLjava/lang/Integer;IIZI)[J

    .line 3229
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$8$1$4;->val$sentMessages:Ljava/util/ArrayList;

    iget-boolean v7, p0, Lorg/telegram/messenger/SendMessagesHelper$8$1$4;->val$isBroadcast:Z

    move v5, v9

    move v8, v6

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 3230
    iget-boolean v0, p0, Lorg/telegram/messenger/SendMessagesHelper$8$1$4;->val$isBroadcast:Z

    if-eqz v0, :cond_0

    .line 3231
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3232
    .local v4, "currentMessage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$8$1$4;->this$2:Lorg/telegram/messenger/SendMessagesHelper$8$1;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$8;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3233
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    move v5, v9

    move v7, v6

    move v8, v6

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 3235
    .end local v4    # "currentMessage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    :cond_0
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$8$1$4$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/SendMessagesHelper$8$1$4$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$8$1$4;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3254
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$8$1$4;->this$2:Lorg/telegram/messenger/SendMessagesHelper$8$1;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$8;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3255
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$8$1$4;->this$2:Lorg/telegram/messenger/SendMessagesHelper$8$1;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$8;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$8$1$4;->val$attachPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->stopVideoService(Ljava/lang/String;)V

    .line 3257
    :cond_1
    return-void

    .line 3228
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$8$1$4;->this$2:Lorg/telegram/messenger/SendMessagesHelper$8$1;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$8$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$8;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$8;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    goto :goto_0
.end method
