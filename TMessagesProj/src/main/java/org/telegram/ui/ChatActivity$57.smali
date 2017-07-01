.class Lorg/telegram/ui/ChatActivity$57;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->processSelectedAttach(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .prologue
    .line 3704
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$57;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectFiles(Lorg/telegram/ui/DocumentSelectActivity;Ljava/util/ArrayList;)V
    .locals 9
    .param p1, "activity"    # Lorg/telegram/ui/DocumentSelectActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/DocumentSelectActivity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 3707
    invoke-virtual {p1}, Lorg/telegram/ui/DocumentSelectActivity;->finishFragment()V

    .line 3708
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$57;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2600(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$57;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    move-object v0, p2

    move-object v1, p2

    move-object v3, v2

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocuments(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;)V

    .line 3709
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$57;->this$0:Lorg/telegram/ui/ChatActivity;

    move v1, v7

    move-object v3, v2

    move-object v4, v2

    move v5, v7

    move v6, v8

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ChatActivity;->showReplyPanel(ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$WebPage;ZZ)V

    .line 3710
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$57;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2600(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v0

    invoke-static {v0, v1, v8}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    .line 3711
    return-void
.end method

.method public startDocumentSelectActivity()V
    .locals 4

    .prologue
    .line 3716
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.PICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3717
    .local v1, "photoPickerIntent":Landroid/content/Intent;
    const-string/jumbo v2, "*/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3718
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$57;->this$0:Lorg/telegram/ui/ChatActivity;

    const/16 v3, 0x15

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/ChatActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3722
    .end local v1    # "photoPickerIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 3719
    :catch_0
    move-exception v0

    .line 3720
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
