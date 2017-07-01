.class Lorg/telegram/ui/TwoStepVerificationActivity$12$1;
.super Ljava/lang/Object;
.source "TwoStepVerificationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TwoStepVerificationActivity$12;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/TwoStepVerificationActivity$12;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TwoStepVerificationActivity$12;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .prologue
    .line 912
    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$12$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$12;

    iput-object p2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$12$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const v6, 0x7f07009a

    const/4 v9, 0x0

    .line 915
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$12$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v4, :cond_1

    .line 916
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$12$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$12;

    iget-object v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$12;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/TwoStepVerificationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 917
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v4, "OK"

    const v5, 0x7f07039f

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/TwoStepVerificationActivity$12$1$1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/TwoStepVerificationActivity$12$1$1;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity$12$1;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 924
    const-string/jumbo v4, "PasswordReset"

    const v5, 0x7f0703cd

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 925
    const-string/jumbo v4, "AppName"

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 926
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$12$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$12;

    iget-object v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$12;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/TwoStepVerificationActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v1

    .line 927
    .local v1, "dialog":Landroid/app/Dialog;
    if-eqz v1, :cond_0

    .line 928
    invoke-virtual {v1, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 929
    invoke-virtual {v1, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 947
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/Dialog;
    :cond_0
    :goto_0
    return-void

    .line 932
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$12$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v5, "CODE_INVALID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 933
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$12$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$12;

    iget-object v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$12;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # invokes: Lorg/telegram/ui/TwoStepVerificationActivity;->onPasscodeError(Z)V
    invoke-static {v4, v8}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2500(Lorg/telegram/ui/TwoStepVerificationActivity;Z)V

    goto :goto_0

    .line 934
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$12$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v5, "FLOOD_WAIT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 935
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$12$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 937
    .local v2, "time":I
    const/16 v4, 0x3c

    if-ge v2, v4, :cond_3

    .line 938
    const-string/jumbo v4, "Seconds"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 942
    .local v3, "timeString":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$12$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$12;

    iget-object v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$12;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    const-string/jumbo v5, "AppName"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "FloodWaitTime"

    const v7, 0x7f0701fc

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v9

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    # invokes: Lorg/telegram/ui/TwoStepVerificationActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$600(Lorg/telegram/ui/TwoStepVerificationActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 940
    .end local v3    # "timeString":Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "Minutes"

    div-int/lit8 v5, v2, 0x3c

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "timeString":Ljava/lang/String;
    goto :goto_1

    .line 944
    .end local v2    # "time":I
    .end local v3    # "timeString":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$12$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$12;

    iget-object v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$12;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    const-string/jumbo v5, "AppName"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity$12$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    # invokes: Lorg/telegram/ui/TwoStepVerificationActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$600(Lorg/telegram/ui/TwoStepVerificationActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
