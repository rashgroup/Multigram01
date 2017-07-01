.class Lorg/telegram/ui/GroupCreateFinalActivity$2$1;
.super Ljava/lang/Object;
.source "GroupCreateFinalActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCreateFinalActivity$2;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/GroupCreateFinalActivity$2;

.field final synthetic val$reqId:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCreateFinalActivity$2;I)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity$2$1;->this$1:Lorg/telegram/ui/GroupCreateFinalActivity$2;

    iput p2, p0, Lorg/telegram/ui/GroupCreateFinalActivity$2$1;->val$reqId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 182
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/GroupCreateFinalActivity$2$1;->val$reqId:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 183
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity$2$1;->this$1:Lorg/telegram/ui/GroupCreateFinalActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/GroupCreateFinalActivity$2;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    const/4 v2, 0x0

    # setter for: Lorg/telegram/ui/GroupCreateFinalActivity;->donePressed:Z
    invoke-static {v1, v2}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$002(Lorg/telegram/ui/GroupCreateFinalActivity;Z)Z

    .line 185
    :try_start_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
