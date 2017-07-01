.class Lorg/telegram/ui/Components/PasscodeView$11;
.super Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
.source "PasscodeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PasscodeView;->checkFingerprint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PasscodeView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PasscodeView;)V
    .locals 0

    .prologue
    .line 912
    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$11;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-direct {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 915
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$11;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    # getter for: Lorg/telegram/ui/Components/PasscodeView;->selfCancelled:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView;->access$1000(Lorg/telegram/ui/Components/PasscodeView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 916
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$11;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    # invokes: Lorg/telegram/ui/Components/PasscodeView;->showFingerprintError(Ljava/lang/CharSequence;)V
    invoke-static {v0, p2}, Lorg/telegram/ui/Components/PasscodeView;->access$1100(Lorg/telegram/ui/Components/PasscodeView;Ljava/lang/CharSequence;)V

    .line 918
    :cond_0
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 3

    .prologue
    .line 927
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$11;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    const-string/jumbo v1, "FingerprintNotRecognized"

    const v2, 0x7f0701f9

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lorg/telegram/ui/Components/PasscodeView;->showFingerprintError(Ljava/lang/CharSequence;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PasscodeView;->access$1100(Lorg/telegram/ui/Components/PasscodeView;Ljava/lang/CharSequence;)V

    .line 928
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "helpMsgId"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .prologue
    .line 922
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$11;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    # invokes: Lorg/telegram/ui/Components/PasscodeView;->showFingerprintError(Ljava/lang/CharSequence;)V
    invoke-static {v0, p2}, Lorg/telegram/ui/Components/PasscodeView;->access$1100(Lorg/telegram/ui/Components/PasscodeView;Ljava/lang/CharSequence;)V

    .line 923
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;)V
    .locals 3
    .param p1, "result"    # Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;

    .prologue
    .line 933
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$11;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    # getter for: Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lorg/telegram/ui/Components/PasscodeView;->access$1200(Lorg/telegram/ui/Components/PasscodeView;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 934
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$11;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    # getter for: Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lorg/telegram/ui/Components/PasscodeView;->access$1200(Lorg/telegram/ui/Components/PasscodeView;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 939
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$11;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    const/4 v2, 0x0

    # setter for: Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PasscodeView;->access$1202(Lorg/telegram/ui/Components/PasscodeView;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 940
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$11;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    const/4 v2, 0x1

    # invokes: Lorg/telegram/ui/Components/PasscodeView;->processDone(Z)V
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PasscodeView;->access$400(Lorg/telegram/ui/Components/PasscodeView;Z)V

    .line 941
    return-void

    .line 936
    :catch_0
    move-exception v0

    .line 937
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
