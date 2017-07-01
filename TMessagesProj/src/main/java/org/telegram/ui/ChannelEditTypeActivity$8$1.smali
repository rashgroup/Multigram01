.class Lorg/telegram/ui/ChannelEditTypeActivity$8$1;
.super Ljava/lang/Object;
.source "ChannelEditTypeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditTypeActivity$8;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelEditTypeActivity$8;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditTypeActivity$8;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditTypeActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$8;

    iput-object p2, p0, Lorg/telegram/ui/ChannelEditTypeActivity$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/ChannelEditTypeActivity$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 507
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_0

    .line 508
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$8;

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity$8;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    # setter for: Lorg/telegram/ui/ChannelEditTypeActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    invoke-static {v1, v0}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$902(Lorg/telegram/ui/ChannelEditTypeActivity;Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    .line 510
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$8;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditTypeActivity$8;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    # setter for: Lorg/telegram/ui/ChannelEditTypeActivity;->loadingInvite:Z
    invoke-static {v0, v3}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$1202(Lorg/telegram/ui/ChannelEditTypeActivity;Z)Z

    .line 511
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$8;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditTypeActivity$8;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    # getter for: Lorg/telegram/ui/ChannelEditTypeActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;
    invoke-static {v0}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$1300(Lorg/telegram/ui/ChannelEditTypeActivity;)Lorg/telegram/ui/Cells/TextBlockCell;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$8;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditTypeActivity$8;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    # getter for: Lorg/telegram/ui/ChannelEditTypeActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    invoke-static {v0}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$900(Lorg/telegram/ui/ChannelEditTypeActivity;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$8;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditTypeActivity$8;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    # getter for: Lorg/telegram/ui/ChannelEditTypeActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    invoke-static {v0}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$900(Lorg/telegram/ui/ChannelEditTypeActivity;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->link:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/Cells/TextBlockCell;->setText(Ljava/lang/String;Z)V

    .line 512
    return-void

    .line 511
    :cond_1
    const-string/jumbo v0, "Loading"

    const v2, 0x7f0702d1

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
