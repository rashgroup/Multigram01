.class Lorg/telegram/messenger/MessagesController$51$2;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$51;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$51;

.field final synthetic val$messagesToReload:Ljava/util/ArrayList;

.field final synthetic val$objects:Ljava/util/ArrayList;

.field final synthetic val$webpagesToReload:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$51;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 2682
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$51$2;->this$1:Lorg/telegram/messenger/MessagesController$51;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$51$2;->val$objects:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$51$2;->val$messagesToReload:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$51$2;->val$webpagesToReload:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    .line 2685
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$51$2;->this$1:Lorg/telegram/messenger/MessagesController$51;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$51;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$51$2;->this$1:Lorg/telegram/messenger/MessagesController$51;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController$51;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$51$2;->this$1:Lorg/telegram/messenger/MessagesController$51;

    iget-boolean v5, v5, Lorg/telegram/messenger/MessagesController$51;->val$isCache:Z

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 2686
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$51$2;->this$1:Lorg/telegram/messenger/MessagesController$51;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$51;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$51$2;->this$1:Lorg/telegram/messenger/MessagesController$51;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController$51;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$51$2;->this$1:Lorg/telegram/messenger/MessagesController$51;

    iget-boolean v5, v5, Lorg/telegram/messenger/MessagesController$51;->val$isCache:Z

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 2687
    const v1, 0x7fffffff

    .line 2688
    .local v1, "first_unread_final":I
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$51$2;->this$1:Lorg/telegram/messenger/MessagesController$51;

    iget-boolean v3, v3, Lorg/telegram/messenger/MessagesController$51;->val$queryFromServer:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$51$2;->this$1:Lorg/telegram/messenger/MessagesController$51;

    iget v3, v3, Lorg/telegram/messenger/MessagesController$51;->val$load_type:I

    if-ne v3, v10, :cond_1

    .line 2689
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$51$2;->this$1:Lorg/telegram/messenger/MessagesController$51;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$51;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2690
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$51$2;->this$1:Lorg/telegram/messenger/MessagesController$51;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$51;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    .line 2691
    .local v2, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-nez v3, :cond_0

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$51$2;->this$1:Lorg/telegram/messenger/MessagesController$51;

    iget v4, v4, Lorg/telegram/messenger/MessagesController$51;->val$first_unread:I

    if-le v3, v4, :cond_0

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v3, v1, :cond_0

    .line 2692
    iget v1, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 2689
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2696
    .end local v0    # "a":I
    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_1
    const v3, 0x7fffffff

    if-ne v1, v3, :cond_2

    .line 2697
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$51$2;->this$1:Lorg/telegram/messenger/MessagesController$51;

    iget v1, v3, Lorg/telegram/messenger/MessagesController$51;->val$first_unread:I

    .line 2699
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->messagesDidLoaded:I

    const/16 v5, 0xc

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$51$2;->this$1:Lorg/telegram/messenger/MessagesController$51;

    iget-wide v8, v7, Lorg/telegram/messenger/MessagesController$51;->val$dialog_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$51$2;->this$1:Lorg/telegram/messenger/MessagesController$51;

    iget v7, v7, Lorg/telegram/messenger/MessagesController$51;->val$count:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$51$2;->val$objects:Ljava/util/ArrayList;

    aput-object v6, v5, v10

    const/4 v6, 0x3

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$51$2;->this$1:Lorg/telegram/messenger/MessagesController$51;

    iget-boolean v7, v7, Lorg/telegram/messenger/MessagesController$51;->val$isCache:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$51$2;->this$1:Lorg/telegram/messenger/MessagesController$51;

    iget v7, v7, Lorg/telegram/messenger/MessagesController$51;->val$last_message_id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$51$2;->this$1:Lorg/telegram/messenger/MessagesController$51;

    iget v7, v7, Lorg/telegram/messenger/MessagesController$51;->val$unread_count:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x7

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$51$2;->this$1:Lorg/telegram/messenger/MessagesController$51;

    iget v7, v7, Lorg/telegram/messenger/MessagesController$51;->val$last_date:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x8

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$51$2;->this$1:Lorg/telegram/messenger/MessagesController$51;

    iget v7, v7, Lorg/telegram/messenger/MessagesController$51;->val$load_type:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x9

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$51$2;->this$1:Lorg/telegram/messenger/MessagesController$51;

    iget-boolean v7, v7, Lorg/telegram/messenger/MessagesController$51;->val$isEnd:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xa

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$51$2;->this$1:Lorg/telegram/messenger/MessagesController$51;

    iget v7, v7, Lorg/telegram/messenger/MessagesController$51;->val$classGuid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xb

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$51$2;->this$1:Lorg/telegram/messenger/MessagesController$51;

    iget v7, v7, Lorg/telegram/messenger/MessagesController$51;->val$loadIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2700
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$51$2;->val$messagesToReload:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2701
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$51$2;->this$1:Lorg/telegram/messenger/MessagesController$51;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$51;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$51$2;->val$messagesToReload:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$51$2;->this$1:Lorg/telegram/messenger/MessagesController$51;

    iget-wide v6, v5, Lorg/telegram/messenger/MessagesController$51;->val$dialog_id:J

    # invokes: Lorg/telegram/messenger/MessagesController;->reloadMessages(Ljava/util/ArrayList;J)V
    invoke-static {v3, v4, v6, v7}, Lorg/telegram/messenger/MessagesController;->access$4400(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;J)V

    .line 2703
    :cond_3
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$51$2;->val$webpagesToReload:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2704
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$51$2;->this$1:Lorg/telegram/messenger/MessagesController$51;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$51;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$51$2;->this$1:Lorg/telegram/messenger/MessagesController$51;

    iget-wide v4, v4, Lorg/telegram/messenger/MessagesController$51;->val$dialog_id:J

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$51$2;->val$webpagesToReload:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->reloadWebPages(JLjava/util/HashMap;)V

    .line 2706
    :cond_4
    return-void
.end method
