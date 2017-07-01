.class Lorg/telegram/messenger/NotificationsController$6;
.super Ljava/lang/Object;
.source "NotificationsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationsController;->processReadMessages(Landroid/util/SparseArray;JIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/NotificationsController;

.field final synthetic val$dialog_id:J

.field final synthetic val$inbox:Landroid/util/SparseArray;

.field final synthetic val$isPopup:Z

.field final synthetic val$max_date:I

.field final synthetic val$max_id:I

.field final synthetic val$popupArray:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;Landroid/util/SparseArray;JIIZ)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$6;->this$0:Lorg/telegram/messenger/NotificationsController;

    iput-object p2, p0, Lorg/telegram/messenger/NotificationsController$6;->val$popupArray:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/messenger/NotificationsController$6;->val$inbox:Landroid/util/SparseArray;

    iput-wide p4, p0, Lorg/telegram/messenger/NotificationsController$6;->val$dialog_id:J

    iput p6, p0, Lorg/telegram/messenger/NotificationsController$6;->val$max_id:I

    iput p7, p0, Lorg/telegram/messenger/NotificationsController$6;->val$max_date:I

    iput-boolean p8, p0, Lorg/telegram/messenger/NotificationsController$6;->val$isPopup:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/16 v14, 0x20

    .line 288
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$6;->val$popupArray:Ljava/util/ArrayList;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$6;->val$popupArray:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 289
    .local v8, "oldCount":I
    :goto_0
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$6;->val$inbox:Landroid/util/SparseArray;

    if-eqz v10, :cond_7

    .line 290
    const/4 v1, 0x0

    .local v1, "b":I
    :goto_1
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$6;->val$inbox:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v1, v10, :cond_6

    .line 291
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$6;->val$inbox:Landroid/util/SparseArray;

    invoke-virtual {v10, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 292
    .local v2, "key":I
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$6;->val$inbox:Landroid/util/SparseArray;

    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 293
    .local v4, "messageId":J
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$6;->this$0:Lorg/telegram/messenger/NotificationsController;

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_5

    .line 294
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$6;->this$0:Lorg/telegram/messenger/NotificationsController;

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 295
    .local v3, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v10

    int-to-long v12, v2

    cmp-long v10, v10, v12

    if-nez v10, :cond_3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    long-to-int v11, v4

    if-gt v10, v11, :cond_3

    .line 296
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$6;->this$0:Lorg/telegram/messenger/NotificationsController;

    # invokes: Lorg/telegram/messenger/NotificationsController;->isPersonalMessage(Lorg/telegram/messenger/MessageObject;)Z
    invoke-static {v10, v3}, Lorg/telegram/messenger/NotificationsController;->access$1500(Lorg/telegram/messenger/NotificationsController;Lorg/telegram/messenger/MessageObject;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 297
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$6;->this$0:Lorg/telegram/messenger/NotificationsController;

    # operator-- for: Lorg/telegram/messenger/NotificationsController;->personal_count:I
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$510(Lorg/telegram/messenger/NotificationsController;)I

    .line 299
    :cond_0
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$6;->val$popupArray:Ljava/util/ArrayList;

    if-eqz v10, :cond_1

    .line 300
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$6;->val$popupArray:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 302
    :cond_1
    iget-object v10, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    int-to-long v6, v10

    .line 303
    .local v6, "mid":J
    iget-object v10, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v10, :cond_2

    .line 304
    iget-object v10, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    int-to-long v10, v10

    shl-long/2addr v10, v14

    or-long/2addr v6, v10

    .line 306
    :cond_2
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$6;->this$0:Lorg/telegram/messenger/NotificationsController;

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Ljava/util/HashMap;
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$6;->this$0:Lorg/telegram/messenger/NotificationsController;

    # getter for: Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$000(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 308
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$6;->this$0:Lorg/telegram/messenger/NotificationsController;

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 309
    add-int/lit8 v0, v0, -0x1

    .line 293
    .end local v6    # "mid":J
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 288
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v2    # "key":I
    .end local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v4    # "messageId":J
    .end local v8    # "oldCount":I
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 290
    .restart local v0    # "a":I
    .restart local v1    # "b":I
    .restart local v2    # "key":I
    .restart local v4    # "messageId":J
    .restart local v8    # "oldCount":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 313
    .end local v0    # "a":I
    .end local v2    # "key":I
    .end local v4    # "messageId":J
    :cond_6
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$6;->val$popupArray:Ljava/util/ArrayList;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$6;->this$0:Lorg/telegram/messenger/NotificationsController;

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$6;->val$popupArray:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_7

    .line 314
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$6;->val$popupArray:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 317
    .end local v1    # "b":I
    :cond_7
    iget-wide v10, p0, Lorg/telegram/messenger/NotificationsController$6;->val$dialog_id:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_13

    iget v10, p0, Lorg/telegram/messenger/NotificationsController$6;->val$max_id:I

    if-nez v10, :cond_8

    iget v10, p0, Lorg/telegram/messenger/NotificationsController$6;->val$max_date:I

    if-eqz v10, :cond_13

    .line 318
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_3
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$6;->this$0:Lorg/telegram/messenger/NotificationsController;

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_12

    .line 319
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$6;->this$0:Lorg/telegram/messenger/NotificationsController;

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 320
    .restart local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v10

    iget-wide v12, p0, Lorg/telegram/messenger/NotificationsController$6;->val$dialog_id:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_d

    .line 321
    const/4 v9, 0x0

    .line 322
    .local v9, "remove":Z
    iget v10, p0, Lorg/telegram/messenger/NotificationsController$6;->val$max_date:I

    if-eqz v10, :cond_e

    .line 323
    iget-object v10, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget v11, p0, Lorg/telegram/messenger/NotificationsController$6;->val$max_date:I

    if-gt v10, v11, :cond_9

    .line 324
    const/4 v9, 0x1

    .line 337
    :cond_9
    :goto_4
    if-eqz v9, :cond_d

    .line 338
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$6;->this$0:Lorg/telegram/messenger/NotificationsController;

    # invokes: Lorg/telegram/messenger/NotificationsController;->isPersonalMessage(Lorg/telegram/messenger/MessageObject;)Z
    invoke-static {v10, v3}, Lorg/telegram/messenger/NotificationsController;->access$1500(Lorg/telegram/messenger/NotificationsController;Lorg/telegram/messenger/MessageObject;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 339
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$6;->this$0:Lorg/telegram/messenger/NotificationsController;

    # operator-- for: Lorg/telegram/messenger/NotificationsController;->personal_count:I
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$510(Lorg/telegram/messenger/NotificationsController;)I

    .line 341
    :cond_a
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$6;->this$0:Lorg/telegram/messenger/NotificationsController;

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 342
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$6;->this$0:Lorg/telegram/messenger/NotificationsController;

    # getter for: Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$000(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 343
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$6;->val$popupArray:Ljava/util/ArrayList;

    if-eqz v10, :cond_b

    .line 344
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$6;->val$popupArray:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 346
    :cond_b
    iget-object v10, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    int-to-long v6, v10

    .line 347
    .restart local v6    # "mid":J
    iget-object v10, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v10, :cond_c

    .line 348
    iget-object v10, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    int-to-long v10, v10

    shl-long/2addr v10, v14

    or-long/2addr v6, v10

    .line 350
    :cond_c
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$6;->this$0:Lorg/telegram/messenger/NotificationsController;

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Ljava/util/HashMap;
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    add-int/lit8 v0, v0, -0x1

    .line 318
    .end local v6    # "mid":J
    .end local v9    # "remove":Z
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 327
    .restart local v9    # "remove":Z
    :cond_e
    iget-boolean v10, p0, Lorg/telegram/messenger/NotificationsController$6;->val$isPopup:Z

    if-nez v10, :cond_10

    .line 328
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    iget v11, p0, Lorg/telegram/messenger/NotificationsController$6;->val$max_id:I

    if-le v10, v11, :cond_f

    iget v10, p0, Lorg/telegram/messenger/NotificationsController$6;->val$max_id:I

    if-gez v10, :cond_9

    .line 329
    :cond_f
    const/4 v9, 0x1

    goto :goto_4

    .line 332
    :cond_10
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    iget v11, p0, Lorg/telegram/messenger/NotificationsController$6;->val$max_id:I

    if-eq v10, v11, :cond_11

    iget v10, p0, Lorg/telegram/messenger/NotificationsController$6;->val$max_id:I

    if-gez v10, :cond_9

    .line 333
    :cond_11
    const/4 v9, 0x1

    goto :goto_4

    .line 355
    .end local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v9    # "remove":Z
    :cond_12
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$6;->val$popupArray:Ljava/util/ArrayList;

    if-eqz v10, :cond_13

    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$6;->this$0:Lorg/telegram/messenger/NotificationsController;

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_13

    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$6;->val$popupArray:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_13

    .line 356
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$6;->val$popupArray:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 359
    .end local v0    # "a":I
    :cond_13
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$6;->val$popupArray:Ljava/util/ArrayList;

    if-eqz v10, :cond_14

    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$6;->val$popupArray:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v8, v10, :cond_14

    .line 360
    new-instance v10, Lorg/telegram/messenger/NotificationsController$6$1;

    invoke-direct {v10, p0}, Lorg/telegram/messenger/NotificationsController$6$1;-><init>(Lorg/telegram/messenger/NotificationsController$6;)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 368
    :cond_14
    return-void
.end method
