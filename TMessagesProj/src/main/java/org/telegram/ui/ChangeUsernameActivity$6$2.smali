.class Lorg/telegram/ui/ChangeUsernameActivity$6$2;
.super Ljava/lang/Object;
.source "ChangeUsernameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeUsernameActivity$6;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChangeUsernameActivity$6;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeUsernameActivity$6;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$6$2;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$6;

    iput-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$6$2;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 361
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$6$2;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/ChangeUsernameActivity$6;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$6$2;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/ChangeUsernameActivity$6;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    iget-object v2, p0, Lorg/telegram/ui/ChangeUsernameActivity$6$2;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    # invokes: Lorg/telegram/ui/ChangeUsernameActivity;->showErrorAlert(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lorg/telegram/ui/ChangeUsernameActivity;->access$800(Lorg/telegram/ui/ChangeUsernameActivity;Ljava/lang/String;)V

    .line 366
    return-void

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
