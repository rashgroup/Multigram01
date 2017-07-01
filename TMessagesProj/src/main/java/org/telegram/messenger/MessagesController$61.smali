.class Lorg/telegram/messenger/MessagesController$61;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->markDialogAsRead(JIIIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$dialog_id:J

.field final synthetic val$max_date:I

.field final synthetic val$messageIdFinal:J


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;JJI)V
    .locals 0

    .prologue
    .line 3688
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$61;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesController$61;->val$dialog_id:J

    iput-wide p4, p0, Lorg/telegram/messenger/MessagesController$61;->val$messageIdFinal:J

    iput p6, p0, Lorg/telegram/messenger/MessagesController$61;->val$max_date:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    const/4 v7, -0x1

    .line 3691
    if-nez p2, :cond_0

    .line 3692
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController$61;->val$dialog_id:J

    iget-wide v4, p0, Lorg/telegram/messenger/MessagesController$61;->val$messageIdFinal:J

    iget v6, p0, Lorg/telegram/messenger/MessagesController$61;->val$max_date:I

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesStorage;->processPendingRead(JJI)V

    .line 3693
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 3694
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;

    .line 3695
    .local v0, "res":Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$61;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;->pts:I

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;->pts_count:I

    invoke-virtual {v1, v7, v2, v7, v3}, Lorg/telegram/messenger/MessagesController;->processNewDifferenceParams(IIII)V

    .line 3698
    .end local v0    # "res":Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;
    :cond_0
    return-void
.end method
