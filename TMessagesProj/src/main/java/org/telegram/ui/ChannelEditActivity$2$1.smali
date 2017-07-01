.class Lorg/telegram/ui/ChannelEditActivity$2$1;
.super Ljava/lang/Object;
.source "ChannelEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditActivity$2;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelEditActivity$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditActivity$2;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity$2$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 182
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # setter for: Lorg/telegram/ui/ChannelEditActivity;->createAfterUpload:Z
    invoke-static {v1, v3}, Lorg/telegram/ui/ChannelEditActivity;->access$502(Lorg/telegram/ui/ChannelEditActivity;Z)Z

    .line 183
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    const/4 v2, 0x0

    # setter for: Lorg/telegram/ui/ChannelEditActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lorg/telegram/ui/ChannelEditActivity;->access$602(Lorg/telegram/ui/ChannelEditActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 184
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # setter for: Lorg/telegram/ui/ChannelEditActivity;->donePressed:Z
    invoke-static {v1, v3}, Lorg/telegram/ui/ChannelEditActivity;->access$202(Lorg/telegram/ui/ChannelEditActivity;Z)Z

    .line 186
    :try_start_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
