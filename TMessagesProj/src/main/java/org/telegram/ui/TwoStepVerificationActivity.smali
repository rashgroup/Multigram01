.class public Lorg/telegram/ui/TwoStepVerificationActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "TwoStepVerificationActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;
    }
.end annotation


# static fields
.field private static final done_button:I = 0x1


# instance fields
.field private abortPasswordRow:I

.field private bottomButton:Landroid/widget/TextView;

.field private bottomTextView:Landroid/widget/TextView;

.field private changePasswordRow:I

.field private changeRecoveryEmailRow:I

.field private currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

.field private currentPasswordHash:[B

.field private destroyed:Z

.field private doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private email:Ljava/lang/String;

.field private emailOnly:Z

.field private firstPassword:Ljava/lang/String;

.field private hint:Ljava/lang/String;

.field private listAdapter:Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;

.field private listView:Landroid/widget/ListView;

.field private loading:Z

.field private passwordEditText:Landroid/widget/EditText;

.field private passwordEmailVerifyDetailRow:I

.field private passwordEnabledDetailRow:I

.field private passwordEntered:Z

.field private passwordSetState:I

.field private passwordSetupDetailRow:I

.field private progressDialog:Landroid/app/ProgressDialog;

.field private progressView:Landroid/widget/FrameLayout;

.field private rowCount:I

.field private scrollView:Landroid/widget/ScrollView;

.field private setPasswordDetailRow:I

.field private setPasswordRow:I

.field private setRecoveryEmailRow:I

.field private shadowRow:I

.field private shortPollRunnable:Ljava/lang/Runnable;

.field private titleTextView:Landroid/widget/TextView;

.field private turnPasswordOffRow:I

.field private type:I

.field private waitingForEmail:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEntered:Z

    .line 83
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPasswordHash:[B

    .line 103
    iput p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->type:I

    .line 104
    if-nez p1, :cond_0

    .line 105
    invoke-direct {p0, v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->loadPasswordInfo(Z)V

    .line 107
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/TwoStepVerificationActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationActivity;->processDone()V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/TwoStepVerificationActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->type:I

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/TwoStepVerificationActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->changePasswordRow:I

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/TwoStepVerificationActivity;)[B
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPasswordHash:[B

    return-object v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/TwoStepVerificationActivity;[B)[B
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;
    .param p1, "x1"    # [B

    .prologue
    .line 59
    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPasswordHash:[B

    return-object p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/TwoStepVerificationActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->setRecoveryEmailRow:I

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/TwoStepVerificationActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->changeRecoveryEmailRow:I

    return v0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/TwoStepVerificationActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->emailOnly:Z

    return p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/TwoStepVerificationActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->turnPasswordOffRow:I

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/TwoStepVerificationActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->abortPasswordRow:I

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/TwoStepVerificationActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/TwoStepVerificationActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget-boolean v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->loading:Z

    return v0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/TwoStepVerificationActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->loading:Z

    return p1
.end method

.method static synthetic access$1902(Lorg/telegram/ui/TwoStepVerificationActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEntered:Z

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/TwoStepVerificationActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    return-object v0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/TwoStepVerificationActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->waitingForEmail:Z

    return p1
.end method

.method static synthetic access$202(Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$account_Password;)Lorg/telegram/tgnet/TLRPC$account_Password;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$account_Password;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/TwoStepVerificationActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget-boolean v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->destroyed:Z

    return v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/TwoStepVerificationActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->shortPollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2202(Lorg/telegram/ui/TwoStepVerificationActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->shortPollRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2300(Lorg/telegram/ui/TwoStepVerificationActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lorg/telegram/ui/TwoStepVerificationActivity;->loadPasswordInfo(Z)V

    return-void
.end method

.method static synthetic access$2400(Lorg/telegram/ui/TwoStepVerificationActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationActivity;->updateRows()V

    return-void
.end method

.method static synthetic access$2500(Lorg/telegram/ui/TwoStepVerificationActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lorg/telegram/ui/TwoStepVerificationActivity;->onPasscodeError(Z)V

    return-void
.end method

.method static synthetic access$2600(Lorg/telegram/ui/TwoStepVerificationActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->setPasswordDetailRow:I

    return v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/TwoStepVerificationActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->shadowRow:I

    return v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/TwoStepVerificationActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetupDetailRow:I

    return v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/TwoStepVerificationActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEmailVerifyDetailRow:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/TwoStepVerificationActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationActivity;->needShowProgress()V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/TwoStepVerificationActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEnabledDetailRow:I

    return v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/TwoStepVerificationActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/TwoStepVerificationActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationActivity;->needHideProgress()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/TwoStepVerificationActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetState:I

    return v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/TwoStepVerificationActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetState:I

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/TwoStepVerificationActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TwoStepVerificationActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$702(Lorg/telegram/ui/TwoStepVerificationActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->email:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/TwoStepVerificationActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lorg/telegram/ui/TwoStepVerificationActivity;->setNewPassword(Z)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/TwoStepVerificationActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->setPasswordRow:I

    return v0
.end method

.method private isValidEmail(Ljava/lang/String;)Z
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 671
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    .line 676
    :cond_0
    :goto_0
    return v2

    .line 674
    :cond_1
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 675
    .local v1, "dot":I
    const/16 v3, 0x40

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 676
    .local v0, "dog":I
    if-ltz v1, :cond_0

    if-ltz v0, :cond_0

    if-lt v1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private loadPasswordInfo(Z)V
    .locals 4
    .param p1, "silent"    # Z

    .prologue
    .line 465
    if-nez p1, :cond_0

    .line 466
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->loading:Z

    .line 468
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;-><init>()V

    .line 469
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/TwoStepVerificationActivity$8;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/TwoStepVerificationActivity$8;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity;Z)V

    const/16 v3, 0xa

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 505
    return-void
.end method

.method private needHideProgress()V
    .locals 2

    .prologue
    .line 659
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 668
    :goto_0
    return-void

    .line 663
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->progressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 664
    :catch_0
    move-exception v0

    .line 665
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private needShowProgress()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 648
    invoke-virtual {p0}, Lorg/telegram/ui/TwoStepVerificationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/TwoStepVerificationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 651
    :cond_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/TwoStepVerificationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 652
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string/jumbo v1, "Loading"

    const v2, 0x7f0702d1

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 653
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 654
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 655
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method private onPasscodeError(Z)V
    .locals 4
    .param p1, "clear"    # Z

    .prologue
    .line 956
    invoke-virtual {p0}, Lorg/telegram/ui/TwoStepVerificationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 967
    :goto_0
    return-void

    .line 959
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/TwoStepVerificationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 960
    .local v0, "v":Landroid/os/Vibrator;
    if-eqz v0, :cond_1

    .line 961
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 963
    :cond_1
    if-eqz p1, :cond_2

    .line 964
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 966
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->titleTextView:Landroid/widget/TextView;

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;FI)V

    goto :goto_0
.end method

.method private processDone()V
    .locals 13

    .prologue
    const/16 v12, 0xa

    const/4 v11, 0x3

    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 802
    iget v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->type:I

    if-nez v6, :cond_2

    .line 803
    iget-boolean v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEntered:Z

    if-nez v6, :cond_0

    .line 804
    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 805
    .local v3, "oldPassword":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 806
    invoke-direct {p0, v9}, Lorg/telegram/ui/TwoStepVerificationActivity;->onPasscodeError(Z)V

    .line 953
    .end local v3    # "oldPassword":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 809
    .restart local v3    # "oldPassword":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    .line 811
    .local v4, "oldPasswordBytes":[B
    :try_start_0
    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 816
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationActivity;->needShowProgress()V

    .line 817
    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$account_Password;->current_salt:[B

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x2

    array-length v7, v4

    add-int/2addr v6, v7

    new-array v2, v6, [B

    .line 818
    .local v2, "hash":[B
    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$account_Password;->current_salt:[B

    iget-object v7, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$account_Password;->current_salt:[B

    array-length v7, v7

    invoke-static {v6, v9, v2, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 819
    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$account_Password;->current_salt:[B

    array-length v6, v6

    array-length v7, v4

    invoke-static {v4, v9, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 820
    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$account_Password;->current_salt:[B

    array-length v7, v2

    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$account_Password;->current_salt:[B

    array-length v8, v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$account_Password;->current_salt:[B

    array-length v8, v8

    invoke-static {v6, v9, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 822
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_account_getPasswordSettings;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_account_getPasswordSettings;-><init>()V

    .line 823
    .local v5, "req":Lorg/telegram/tgnet/TLRPC$TL_account_getPasswordSettings;
    array-length v6, v2

    invoke-static {v2, v9, v6}, Lorg/telegram/messenger/Utilities;->computeSHA256([BII)[B

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_account_getPasswordSettings;->current_password_hash:[B

    .line 824
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/TwoStepVerificationActivity$11;

    invoke-direct {v7, p0, v5}, Lorg/telegram/ui/TwoStepVerificationActivity$11;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$TL_account_getPasswordSettings;)V

    invoke-virtual {v6, v5, v7, v12}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0

    .line 812
    .end local v2    # "hash":[B
    .end local v5    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_getPasswordSettings;
    :catch_0
    move-exception v1

    .line 813
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 857
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "oldPassword":Ljava/lang/String;
    .end local v4    # "oldPasswordBytes":[B
    :cond_2
    iget v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->type:I

    if-ne v6, v10, :cond_0

    .line 858
    iget v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetState:I

    if-nez v6, :cond_4

    .line 859
    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 860
    invoke-direct {p0, v9}, Lorg/telegram/ui/TwoStepVerificationActivity;->onPasscodeError(Z)V

    goto :goto_0

    .line 863
    :cond_3
    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v7, "ReEnterYourPasscode"

    const v8, 0x7f0703fc

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 864
    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->firstPassword:Ljava/lang/String;

    .line 865
    invoke-direct {p0, v10}, Lorg/telegram/ui/TwoStepVerificationActivity;->setPasswordSetState(I)V

    goto/16 :goto_0

    .line 866
    :cond_4
    iget v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetState:I

    if-ne v6, v10, :cond_6

    .line 867
    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->firstPassword:Ljava/lang/String;

    iget-object v7, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 869
    :try_start_1
    invoke-virtual {p0}, Lorg/telegram/ui/TwoStepVerificationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "PasswordDoNotMatch"

    const v8, 0x7f0703c8

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 873
    :goto_2
    invoke-direct {p0, v10}, Lorg/telegram/ui/TwoStepVerificationActivity;->onPasscodeError(Z)V

    goto/16 :goto_0

    .line 870
    :catch_1
    move-exception v1

    .line 871
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 876
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-direct {p0, v8}, Lorg/telegram/ui/TwoStepVerificationActivity;->setPasswordSetState(I)V

    goto/16 :goto_0

    .line 877
    :cond_6
    iget v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetState:I

    if-ne v6, v8, :cond_9

    .line 878
    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->hint:Ljava/lang/String;

    .line 879
    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->hint:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->firstPassword:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 881
    :try_start_2
    invoke-virtual {p0}, Lorg/telegram/ui/TwoStepVerificationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "PasswordAsHintError"

    const v8, 0x7f0703c6

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 885
    :goto_3
    invoke-direct {p0, v9}, Lorg/telegram/ui/TwoStepVerificationActivity;->onPasscodeError(Z)V

    goto/16 :goto_0

    .line 882
    :catch_2
    move-exception v1

    .line 883
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 888
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$account_Password;->has_recovery:Z

    if-nez v6, :cond_8

    .line 889
    invoke-direct {p0, v11}, Lorg/telegram/ui/TwoStepVerificationActivity;->setPasswordSetState(I)V

    goto/16 :goto_0

    .line 891
    :cond_8
    const-string/jumbo v6, ""

    iput-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->email:Ljava/lang/String;

    .line 892
    invoke-direct {p0, v9}, Lorg/telegram/ui/TwoStepVerificationActivity;->setNewPassword(Z)V

    goto/16 :goto_0

    .line 894
    :cond_9
    iget v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetState:I

    if-ne v6, v11, :cond_b

    .line 895
    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->email:Ljava/lang/String;

    .line 896
    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->email:Ljava/lang/String;

    invoke-direct {p0, v6}, Lorg/telegram/ui/TwoStepVerificationActivity;->isValidEmail(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 897
    invoke-direct {p0, v9}, Lorg/telegram/ui/TwoStepVerificationActivity;->onPasscodeError(Z)V

    goto/16 :goto_0

    .line 900
    :cond_a
    invoke-direct {p0, v9}, Lorg/telegram/ui/TwoStepVerificationActivity;->setNewPassword(Z)V

    goto/16 :goto_0

    .line 901
    :cond_b
    iget v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetState:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    .line 902
    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 903
    .local v0, "code":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_c

    .line 904
    invoke-direct {p0, v9}, Lorg/telegram/ui/TwoStepVerificationActivity;->onPasscodeError(Z)V

    goto/16 :goto_0

    .line 907
    :cond_c
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_auth_recoverPassword;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_auth_recoverPassword;-><init>()V

    .line 908
    .local v5, "req":Lorg/telegram/tgnet/TLRPC$TL_auth_recoverPassword;
    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_auth_recoverPassword;->code:Ljava/lang/String;

    .line 909
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/TwoStepVerificationActivity$12;

    invoke-direct {v7, p0}, Lorg/telegram/ui/TwoStepVerificationActivity$12;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity;)V

    invoke-virtual {v6, v5, v7, v12}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_0
.end method

.method private setNewPassword(Z)V
    .locals 8
    .param p1, "clear"    # Z

    .prologue
    const/4 v7, 0x0

    .line 688
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;-><init>()V

    .line 689
    .local v4, "req":Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;
    iget-object v5, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPasswordHash:[B

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->current_password_hash:[B

    .line 690
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    .line 691
    if-eqz p1, :cond_2

    .line 692
    iget-boolean v5, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->waitingForEmail:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_account_noPassword;

    if-eqz v5, :cond_1

    .line 693
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    const/4 v6, 0x2

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    .line 694
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    const-string/jumbo v6, ""

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->email:Ljava/lang/String;

    .line 695
    new-array v5, v7, [B

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->current_password_hash:[B

    .line 727
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationActivity;->needShowProgress()V

    .line 728
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/TwoStepVerificationActivity$10;

    invoke-direct {v6, p0, p1, v4}, Lorg/telegram/ui/TwoStepVerificationActivity$10;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity;ZLorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;)V

    const/16 v7, 0xa

    invoke-virtual {v5, v4, v6, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 799
    return-void

    .line 697
    :cond_1
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    const/4 v6, 0x3

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    .line 698
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    const-string/jumbo v6, ""

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->hint:Ljava/lang/String;

    .line 699
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    new-array v6, v7, [B

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->new_password_hash:[B

    .line 700
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    new-array v6, v7, [B

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->new_salt:[B

    .line 701
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    const-string/jumbo v6, ""

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->email:Ljava/lang/String;

    goto :goto_0

    .line 704
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->firstPassword:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->firstPassword:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 705
    const/4 v2, 0x0

    .line 707
    .local v2, "newPasswordBytes":[B
    :try_start_0
    iget-object v5, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->firstPassword:Ljava/lang/String;

    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 712
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$account_Password;->new_salt:[B

    .line 713
    .local v3, "new_salt":[B
    array-length v5, v3

    mul-int/lit8 v5, v5, 0x2

    array-length v6, v2

    add-int/2addr v5, v6

    new-array v1, v5, [B

    .line 714
    .local v1, "hash":[B
    array-length v5, v3

    invoke-static {v3, v7, v1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 715
    array-length v5, v3

    array-length v6, v2

    invoke-static {v2, v7, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 716
    array-length v5, v1

    array-length v6, v3

    sub-int/2addr v5, v6

    array-length v6, v3

    invoke-static {v3, v7, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 717
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    or-int/lit8 v6, v6, 0x1

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    .line 718
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->hint:Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->hint:Ljava/lang/String;

    .line 719
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    array-length v6, v1

    invoke-static {v1, v7, v6}, Lorg/telegram/messenger/Utilities;->computeSHA256([BII)[B

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->new_password_hash:[B

    .line 720
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    iput-object v3, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->new_salt:[B

    .line 722
    .end local v1    # "hash":[B
    .end local v2    # "newPasswordBytes":[B
    .end local v3    # "new_salt":[B
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->email:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 723
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    .line 724
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->email:Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->email:Ljava/lang/String;

    goto/16 :goto_0

    .line 708
    .restart local v2    # "newPasswordBytes":[B
    :catch_0
    move-exception v0

    .line 709
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "tmessages"

    invoke-static {v5, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private setPasswordSetState(I)V
    .locals 7
    .param p1, "state"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x5

    const/4 v1, 0x0

    const/4 v0, 0x4

    .line 508
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    if-nez v2, :cond_0

    .line 557
    :goto_0
    return-void

    .line 511
    :cond_0
    iput p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetState:I

    .line 512
    iget v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetState:I

    if-nez v2, :cond_3

    .line 513
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v2, "YourPassword"

    const v3, 0x7f07052a

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 514
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_account_noPassword;

    if-eqz v1, :cond_2

    .line 515
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "PleaseEnterFirstPassword"

    const v3, 0x7f0703ef

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 520
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 521
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 522
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 556
    :cond_1
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 517
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "PleaseEnterPassword"

    const v3, 0x7f0703f0

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 523
    :cond_3
    iget v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetState:I

    if-ne v2, v5, :cond_4

    .line 524
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v2, "YourPassword"

    const v3, 0x7f07052a

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "PleaseReEnterPassword"

    const v3, 0x7f0703f1

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 527
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 528
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 529
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 530
    :cond_4
    iget v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 531
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v2, "PasswordHint"

    const v3, 0x7f0703ca

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "PasswordHintText"

    const v3, 0x7f0703cb

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 534
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 535
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 536
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 537
    :cond_5
    iget v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    .line 538
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "RecoveryEmail"

    const v4, 0x7f0703ff

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "YourEmail"

    const v4, 0x7f070522

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 541
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 542
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    const/16 v3, 0x21

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 543
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 544
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomButton:Landroid/widget/TextView;

    iget-boolean v3, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->emailOnly:Z

    if-eqz v3, :cond_6

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_6
    move v0, v1

    goto :goto_3

    .line 545
    :cond_7
    iget v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetState:I

    if-ne v2, v0, :cond_1

    .line 546
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v2, "PasswordRecovery"

    const v3, 0x7f0703cc

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 547
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "PasswordCode"

    const v3, 0x7f0703c7

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "RestoreEmailSentInfo"

    const v3, 0x7f07041d

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomButton:Landroid/widget/TextView;

    const-string/jumbo v2, "RestoreEmailTrouble"

    const v3, 0x7f07041e

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$account_Password;->email_unconfirmed_pattern:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 551
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 552
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 553
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 554
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method private showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 680
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/TwoStepVerificationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 681
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v1, "OK"

    const v2, 0x7f07039f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 682
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 683
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 684
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 685
    return-void
.end method

.method private updateRows()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 560
    iput v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    .line 561
    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->setPasswordRow:I

    .line 562
    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->setPasswordDetailRow:I

    .line 563
    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->changePasswordRow:I

    .line 564
    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->turnPasswordOffRow:I

    .line 565
    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->setRecoveryEmailRow:I

    .line 566
    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->changeRecoveryEmailRow:I

    .line 567
    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->abortPasswordRow:I

    .line 568
    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetupDetailRow:I

    .line 569
    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEnabledDetailRow:I

    .line 570
    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEmailVerifyDetailRow:I

    .line 571
    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->shadowRow:I

    .line 572
    iget-boolean v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->loading:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_account_noPassword;

    if-eqz v0, :cond_5

    .line 574
    iget-boolean v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->waitingForEmail:Z

    if-eqz v0, :cond_4

    .line 575
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetupDetailRow:I

    .line 576
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->abortPasswordRow:I

    .line 577
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->shadowRow:I

    .line 598
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listAdapter:Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;

    if-eqz v0, :cond_1

    .line 599
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listAdapter:Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->notifyDataSetChanged()V

    .line 601
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEntered:Z

    if-eqz v0, :cond_8

    .line 602
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 603
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 604
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 605
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 606
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 608
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    .line 609
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 610
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 611
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 612
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 613
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 645
    :cond_3
    :goto_1
    return-void

    .line 579
    :cond_4
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->setPasswordRow:I

    .line 580
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->setPasswordDetailRow:I

    goto :goto_0

    .line 582
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_account_password;

    if-eqz v0, :cond_0

    .line 583
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->changePasswordRow:I

    .line 584
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->turnPasswordOffRow:I

    .line 585
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$account_Password;->has_recovery:Z

    if-eqz v0, :cond_6

    .line 586
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->changeRecoveryEmailRow:I

    .line 590
    :goto_2
    iget-boolean v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->waitingForEmail:Z

    if-eqz v0, :cond_7

    .line 591
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEmailVerifyDetailRow:I

    goto/16 :goto_0

    .line 588
    :cond_6
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->setRecoveryEmailRow:I

    goto :goto_2

    .line 593
    :cond_7
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEnabledDetailRow:I

    goto/16 :goto_0

    .line 616
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_9

    .line 617
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 618
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 619
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 620
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 622
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    .line 623
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 624
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 625
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 626
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 627
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 628
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomButton:Landroid/widget/TextView;

    const-string/jumbo v1, "ForgotPassword"

    const v2, 0x7f070201

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 629
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$account_Password;->hint:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$account_Password;->hint:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 630
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$account_Password;->hint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 634
    :goto_3
    new-instance v0, Lorg/telegram/ui/TwoStepVerificationActivity$9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/TwoStepVerificationActivity$9;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity;)V

    const-wide/16 v2, 0xc8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_1

    .line 632
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v9, 0x7f020131

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 144
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 145
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v9, Lorg/telegram/ui/TwoStepVerificationActivity$1;

    invoke-direct {v9, p0}, Lorg/telegram/ui/TwoStepVerificationActivity$1;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity;)V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 156
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->fragmentView:Landroid/view/View;

    .line 157
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 158
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    const v8, -0xf0f10

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 160
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v6

    .line 161
    .local v6, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/4 v8, 0x1

    const v9, 0x7f020152

    const/high16 v10, 0x42600000    # 56.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v6, v8, v9, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 163
    new-instance v8, Landroid/widget/ScrollView;

    invoke-direct {v8, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->scrollView:Landroid/widget/ScrollView;

    .line 164
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->scrollView:Landroid/widget/ScrollView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 165
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 166
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v8}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 167
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v8, -0x1

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 168
    const/4 v8, -0x1

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 169
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v8, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 172
    .local v4, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 173
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v8, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 174
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 175
    .local v2, "layoutParams2":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v8, -0x1

    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 176
    const/4 v8, -0x2

    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 177
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->titleTextView:Landroid/widget/TextView;

    .line 180
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->titleTextView:Landroid/widget/TextView;

    const v9, -0x8a8a8b

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->titleTextView:Landroid/widget/TextView;

    const/4 v9, 0x1

    const/high16 v10, 0x41900000    # 18.0f

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 182
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->titleTextView:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 183
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 184
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 185
    .local v3, "layoutParams3":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, -0x2

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 186
    const/4 v8, -0x2

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 187
    const/4 v8, 0x1

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 188
    const/high16 v8, 0x42180000    # 38.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 189
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    new-instance v8, Landroid/widget/EditText;

    invoke-direct {v8, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    .line 192
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v9, 0x1

    const/high16 v10, 0x41a00000    # 20.0f

    invoke-virtual {v8, v9, v10}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 193
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    const/high16 v9, -0x1000000

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setTextColor(I)V

    .line 194
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 195
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setLines(I)V

    .line 196
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setGravity(I)V

    .line 197
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 198
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    const/16 v9, 0x81

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 199
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 200
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    sget-object v9, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 201
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 202
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 203
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams3":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 204
    .restart local v3    # "layoutParams3":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v8, 0x42000000    # 32.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 205
    const/high16 v8, 0x42100000    # 36.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 206
    const/high16 v8, 0x42200000    # 40.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 207
    const/high16 v8, 0x42200000    # 40.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 208
    const/16 v8, 0x33

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 209
    const/4 v8, -0x1

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 210
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v8, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    new-instance v9, Lorg/telegram/ui/TwoStepVerificationActivity$2;

    invoke-direct {v9, p0}, Lorg/telegram/ui/TwoStepVerificationActivity$2;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 221
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    new-instance v9, Lorg/telegram/ui/TwoStepVerificationActivity$3;

    invoke-direct {v9, p0}, Lorg/telegram/ui/TwoStepVerificationActivity$3;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 238
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomTextView:Landroid/widget/TextView;

    .line 239
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomTextView:Landroid/widget/TextView;

    const v9, -0x8a8a8b

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomTextView:Landroid/widget/TextView;

    const/4 v9, 0x1

    const/high16 v10, 0x41600000    # 14.0f

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 241
    iget-object v9, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomTextView:Landroid/widget/TextView;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_1

    const/4 v8, 0x5

    :goto_0
    or-int/lit8 v8, v8, 0x30

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 242
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomTextView:Landroid/widget/TextView;

    const-string/jumbo v9, "YourEmailInfo"

    const v10, 0x7f070525

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 244
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams3":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 245
    .restart local v3    # "layoutParams3":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, -0x2

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 246
    const/4 v8, -0x2

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 247
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_2

    const/4 v8, 0x5

    :goto_1
    or-int/lit8 v8, v8, 0x30

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 248
    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 249
    const/high16 v8, 0x42200000    # 40.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 250
    const/high16 v8, 0x42200000    # 40.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 251
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 254
    .local v5, "linearLayout2":Landroid/widget/LinearLayout;
    const/16 v8, 0x50

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 255
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 256
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams3":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 257
    .restart local v3    # "layoutParams3":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, -0x1

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 258
    const/4 v8, -0x1

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 259
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomButton:Landroid/widget/TextView;

    .line 262
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomButton:Landroid/widget/TextView;

    const v9, -0xb27c4d

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 263
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomButton:Landroid/widget/TextView;

    const/4 v9, 0x1

    const/high16 v10, 0x41600000    # 14.0f

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 264
    iget-object v9, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomButton:Landroid/widget/TextView;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_3

    const/4 v8, 0x5

    :goto_2
    or-int/lit8 v8, v8, 0x50

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 265
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomButton:Landroid/widget/TextView;

    const-string/jumbo v9, "YourEmailSkip"

    const v10, 0x7f070526

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomButton:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/high16 v10, 0x41200000    # 10.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 267
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomButton:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 268
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomButton:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams3":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 269
    .restart local v3    # "layoutParams3":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, -0x2

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 270
    const/4 v8, -0x2

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 271
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_4

    const/4 v8, 0x5

    :goto_3
    or-int/lit8 v8, v8, 0x50

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 272
    const/high16 v8, 0x41600000    # 14.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 273
    const/high16 v8, 0x42200000    # 40.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 274
    const/high16 v8, 0x42200000    # 40.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 275
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomButton:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->bottomButton:Landroid/widget/TextView;

    new-instance v9, Lorg/telegram/ui/TwoStepVerificationActivity$4;

    invoke-direct {v9, p0}, Lorg/telegram/ui/TwoStepVerificationActivity$4;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    iget v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->type:I

    if-nez v8, :cond_5

    .line 353
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->progressView:Landroid/widget/FrameLayout;

    .line 354
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 355
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 356
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v8, -0x1

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 357
    const/4 v8, -0x1

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 358
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->progressView:Landroid/widget/FrameLayout;

    new-instance v9, Lorg/telegram/ui/TwoStepVerificationActivity$5;

    invoke-direct {v9, p0}, Lorg/telegram/ui/TwoStepVerificationActivity$5;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 366
    new-instance v7, Landroid/widget/ProgressBar;

    invoke-direct {v7, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 367
    .local v7, "progressBar":Landroid/widget/ProgressBar;
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 368
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 369
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v8, -0x2

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 370
    const/4 v8, -0x2

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 371
    const/16 v8, 0x11

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 372
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    new-instance v8, Landroid/widget/ListView;

    invoke-direct {v8, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Landroid/widget/ListView;

    .line 375
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Landroid/widget/ListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 376
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Landroid/widget/ListView;

    iget-object v9, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 377
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Landroid/widget/ListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 378
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Landroid/widget/ListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 379
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Landroid/widget/ListView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 380
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 381
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 382
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v8, -0x1

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 383
    const/4 v8, -0x1

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 384
    const/16 v8, 0x30

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 385
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v8, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Landroid/widget/ListView;

    new-instance v9, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;

    invoke-direct {v9, p0, p1}, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity;Landroid/content/Context;)V

    iput-object v9, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listAdapter:Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 387
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->listView:Landroid/widget/ListView;

    new-instance v9, Lorg/telegram/ui/TwoStepVerificationActivity$6;

    invoke-direct {v9, p0}, Lorg/telegram/ui/TwoStepVerificationActivity$6;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 418
    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationActivity;->updateRows()V

    .line 420
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v9, "TwoStepVerification"

    const v10, 0x7f0704cf

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v9, "PleaseEnterCurrentPassword"

    const v10, 0x7f0703ee

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    .end local v7    # "progressBar":Landroid/widget/ProgressBar;
    :cond_0
    :goto_4
    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->fragmentView:Landroid/view/View;

    return-object v8

    .line 241
    .end local v5    # "linearLayout2":Landroid/widget/LinearLayout;
    :cond_1
    const/4 v8, 0x3

    goto/16 :goto_0

    .line 247
    :cond_2
    const/4 v8, 0x3

    goto/16 :goto_1

    .line 264
    .restart local v5    # "linearLayout2":Landroid/widget/LinearLayout;
    :cond_3
    const/4 v8, 0x3

    goto/16 :goto_2

    .line 271
    :cond_4
    const/4 v8, 0x3

    goto/16 :goto_3

    .line 422
    :cond_5
    iget v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->type:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 423
    iget v8, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetState:I

    invoke-direct {p0, v8}, Lorg/telegram/ui/TwoStepVerificationActivity;->setPasswordSetState(I)V

    goto :goto_4
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 431
    sget v0, Lorg/telegram/messenger/NotificationCenter;->didSetTwoStepPassword:I

    if-ne p1, v0, :cond_1

    .line 432
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    aget-object v0, p2, v1

    if-eqz v0, :cond_0

    .line 433
    aget-object v0, p2, v1

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->currentPasswordHash:[B

    .line 435
    :cond_0
    invoke-direct {p0, v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->loadPasswordInfo(Z)V

    .line 436
    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationActivity;->updateRows()V

    .line 438
    :cond_1
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 112
    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationActivity;->updateRows()V

    .line 113
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->type:I

    if-nez v0, :cond_0

    .line 114
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetTwoStepPassword:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 116
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 121
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 122
    iget v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->type:I

    if-nez v1, :cond_1

    .line 123
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didSetTwoStepPassword:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 124
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->shortPollRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->shortPollRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 126
    iput-object v3, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->shortPollRunnable:Ljava/lang/Runnable;

    .line 128
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->destroyed:Z

    .line 130
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_2

    .line 132
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    iput-object v3, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 138
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/TwoStepVerificationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->classGuid:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->removeAdjustResize(Landroid/app/Activity;I)V

    .line 139
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 442
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 443
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 444
    new-instance v0, Lorg/telegram/ui/TwoStepVerificationActivity$7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/TwoStepVerificationActivity$7;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity;)V

    const-wide/16 v2, 0xc8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 454
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/TwoStepVerificationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 455
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 2
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    .line 459
    if-eqz p1, :cond_0

    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 460
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 462
    :cond_0
    return-void
.end method
