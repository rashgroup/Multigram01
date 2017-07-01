.class public Lorg/telegram/ui/PasscodeActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "PasscodeActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PasscodeActivity$ListAdapter;
    }
.end annotation


# static fields
.field private static final done_button:I = 0x1

.field private static final password_item:I = 0x3

.field private static final pin_item:I = 0x2


# instance fields
.field private autoLockDetailRow:I

.field private autoLockRow:I

.field private changePasscodeRow:I

.field private currentPasswordType:I

.field private dropDown:Landroid/widget/TextView;

.field private dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private fingerprintRow:I

.field private firstPassword:Ljava/lang/String;

.field private listAdapter:Lorg/telegram/ui/PasscodeActivity$ListAdapter;

.field private listView:Landroid/widget/ListView;

.field private passcodeDetailRow:I

.field private passcodeRow:I

.field private passcodeSetStep:I

.field private passwordEditText:Landroid/widget/EditText;

.field private rowCount:I

.field private titleTextView:Landroid/widget/TextView;

.field private type:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 72
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    .line 73
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    .line 90
    iput p1, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    .line 91
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->processNext()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PasscodeActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockRow:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->fingerprintRow:I

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->fixLayoutInternal()V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeDetailRow:I

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockDetailRow:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->processDone()V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/PasscodeActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->updateDropDownTextView()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/PasscodeActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/PasscodeActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->changePasscodeRow:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/PasscodeActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeRow:I

    return v0
.end method

.method private fixLayoutInternal()V
    .locals 3

    .prologue
    .line 582
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v1, :cond_1

    .line 583
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 584
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 585
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 586
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 588
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 589
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 594
    :cond_1
    :goto_1
    return-void

    .line 585
    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 591
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_1
.end method

.method private onPasscodeError()V
    .locals 4

    .prologue
    .line 571
    invoke-virtual {p0}, Lorg/telegram/ui/PasscodeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 579
    :goto_0
    return-void

    .line 574
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/PasscodeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 575
    .local v0, "v":Landroid/os/Vibrator;
    if-eqz v0, :cond_1

    .line 576
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 578
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;FI)V

    goto :goto_0
.end method

.method private processDone()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 523
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 524
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->onPasscodeError()V

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    iget v3, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-ne v3, v5, :cond_3

    .line 528
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->firstPassword:Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 530
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/PasscodeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "PasscodeDoNotMatch"

    const v5, 0x7f0703c3

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;FI)V

    .line 535
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 531
    :catch_0
    move-exception v1

    .line 532
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 540
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const/16 v3, 0x10

    :try_start_1
    new-array v3, v3, [B

    sput-object v3, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    .line 541
    sget-object v3, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    sget-object v4, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 542
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->firstPassword:Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 543
    .local v2, "passcodeBytes":[B
    array-length v3, v2

    add-int/lit8 v3, v3, 0x20

    new-array v0, v3, [B

    .line 544
    .local v0, "bytes":[B
    sget-object v3, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x10

    invoke-static {v3, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 545
    const/4 v3, 0x0

    const/16 v4, 0x10

    array-length v5, v2

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 546
    sget-object v3, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/4 v4, 0x0

    array-length v5, v2

    add-int/lit8 v5, v5, 0x10

    const/16 v6, 0x10

    invoke-static {v3, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 547
    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/Utilities;->computeSHA256([BII)[B

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 552
    .end local v0    # "bytes":[B
    .end local v2    # "passcodeBytes":[B
    :goto_2
    iget v3, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    sput v3, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    .line 553
    invoke-static {v7}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 554
    invoke-virtual {p0}, Lorg/telegram/ui/PasscodeActivity;->finishFragment()V

    .line 555
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 556
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->clearFocus()V

    .line 557
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    goto/16 :goto_0

    .line 548
    :catch_1
    move-exception v1

    .line 549
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 558
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    iget v3, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 559
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->checkPasscode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 560
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 561
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->onPasscodeError()V

    goto/16 :goto_0

    .line 564
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->clearFocus()V

    .line 565
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 566
    new-instance v3, Lorg/telegram/ui/PasscodeActivity;

    invoke-direct {v3, v7}, Lorg/telegram/ui/PasscodeActivity;-><init>(I)V

    invoke-virtual {p0, v3, v5}, Lorg/telegram/ui/PasscodeActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_0
.end method

.method private processNext()V
    .locals 3

    .prologue
    .line 506
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 507
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->onPasscodeError()V

    .line 520
    :goto_0
    return-void

    .line 510
    :cond_1
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    if-nez v0, :cond_2

    .line 511
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "PasscodePIN"

    const v2, 0x7f0703c4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 515
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "ReEnterYourPasscode"

    const v2, 0x7f0703fc

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->firstPassword:Ljava/lang/String;

    .line 518
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 519
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    goto :goto_0

    .line 513
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "PasscodePassword"

    const v2, 0x7f0703c5

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateDropDownTextView()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 484
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 485
    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    if-nez v1, :cond_4

    .line 486
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const-string/jumbo v2, "PasscodePIN"

    const v3, 0x7f0703c4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    :cond_0
    :goto_0
    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-ne v1, v4, :cond_1

    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    if-eqz v1, :cond_2

    :cond_1
    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-ne v1, v6, :cond_5

    sget v1, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    if-nez v1, :cond_5

    .line 492
    :cond_2
    new-array v0, v4, [Landroid/text/InputFilter;

    .line 493
    .local v0, "filterArray":[Landroid/text/InputFilter;
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v5

    .line 494
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 495
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 496
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const-string/jumbo v2, "1234567890"

    invoke-static {v2}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 502
    .end local v0    # "filterArray":[Landroid/text/InputFilter;
    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 503
    return-void

    .line 487
    :cond_4
    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    if-ne v1, v4, :cond_0

    .line 488
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const-string/jumbo v2, "PasscodePassword"

    const v3, 0x7f0703c5

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 497
    :cond_5
    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-ne v1, v4, :cond_6

    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    if-eq v1, v4, :cond_7

    :cond_6
    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-ne v1, v6, :cond_3

    sget v1, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    if-ne v1, v4, :cond_3

    .line 498
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    new-array v2, v5, [Landroid/text/InputFilter;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 499
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 500
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_1
.end method

.method private updateRows()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 436
    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    .line 437
    iget v2, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeRow:I

    .line 438
    iget v2, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PasscodeActivity;->changePasscodeRow:I

    .line 439
    iget v2, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeDetailRow:I

    .line 440
    sget-object v2, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 442
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 443
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;

    move-result-object v1

    .line 444
    .local v1, "fingerprintManager":Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;
    invoke-virtual {v1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 445
    iget v2, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PasscodeActivity;->fingerprintRow:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    .end local v1    # "fingerprintManager":Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;
    :cond_0
    :goto_0
    iget v2, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockRow:I

    .line 452
    iget v2, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockDetailRow:I

    .line 458
    :goto_1
    return-void

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 454
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    iput v4, p0, Lorg/telegram/ui/PasscodeActivity;->fingerprintRow:I

    .line 455
    iput v4, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockRow:I

    .line 456
    iput v4, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockDetailRow:I

    goto :goto_1
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v11, 0x42200000    # 40.0f

    const/4 v10, -0x1

    const/4 v9, -0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 113
    iget v3, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 114
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v4, 0x7f020131

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 116
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 117
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/PasscodeActivity$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/PasscodeActivity$1;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 138
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->fragmentView:Landroid/view/View;

    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 141
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    iget v3, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-eqz v3, :cond_6

    .line 142
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v2

    .line 143
    .local v2, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const v3, 0x7f020152

    const/high16 v4, 0x42600000    # 56.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v2, v7, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 145
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    .line 146
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    const v4, -0x8a8a8b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    iget v3, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-ne v3, v7, :cond_2

    .line 148
    sget-object v3, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "EnterNewPasscode"

    const v5, 0x7f0701e6

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v3, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 157
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 158
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 159
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 160
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 161
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 162
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 163
    const/high16 v3, 0x42180000    # 38.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 164
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    .line 167
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v3, v7, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 168
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 169
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 170
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setLines(I)V

    .line 171
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setGravity(I)V

    .line 172
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 173
    iget v3, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-ne v3, v7, :cond_3

    .line 174
    iput v8, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    .line 175
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 180
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 181
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 182
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 183
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 184
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 185
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v3, 0x42b40000    # 90.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 186
    const/high16 v3, 0x42100000    # 36.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 187
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 188
    const/16 v3, 0x33

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 189
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 190
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 191
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    new-instance v4, Lorg/telegram/ui/PasscodeActivity$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/PasscodeActivity$2;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 205
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    new-instance v4, Lorg/telegram/ui/PasscodeActivity$3;

    invoke-direct {v4, p0}, Lorg/telegram/ui/PasscodeActivity$3;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 232
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    new-instance v4, Lorg/telegram/ui/PasscodeActivity$4;

    invoke-direct {v4, p0}, Lorg/telegram/ui/PasscodeActivity$4;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 249
    iget v3, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-ne v3, v7, :cond_5

    .line 250
    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-direct {v3, p1, v2, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;I)V

    iput-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 251
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 252
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v4, 0x2

    const-string/jumbo v5, "PasscodePIN"

    const v6, 0x7f0703c4

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;I)Landroid/widget/TextView;

    .line 253
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v4, 0x3

    const-string/jumbo v5, "PasscodePassword"

    const v6, 0x7f0703c5

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;I)Landroid/widget/TextView;

    .line 254
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v4, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->addView(Landroid/view/View;)V

    .line 255
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 256
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 257
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 258
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 259
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_4

    const/high16 v3, 0x42800000    # 64.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    :goto_2
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 260
    const/16 v3, 0x33

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 261
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v4, Lorg/telegram/ui/PasscodeActivity$5;

    invoke-direct {v4, p0}, Lorg/telegram/ui/PasscodeActivity$5;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    .line 270
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 271
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 272
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setLines(I)V

    .line 273
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 274
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 275
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 276
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const-string/jumbo v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 277
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const v4, 0x7f02014b

    invoke-virtual {v3, v8, v8, v4, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 278
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 279
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v8, v8, v4, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 280
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v4, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addView(Landroid/view/View;)V

    .line 281
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 282
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 283
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 284
    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 285
    const/16 v3, 0x10

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 286
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 287
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    :goto_3
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->updateDropDownTextView()V

    .line 400
    .end local v2    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :goto_4
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->fragmentView:Landroid/view/View;

    return-object v3

    .line 151
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v2    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "EnterNewFirstPasscode"

    const v5, 0x7f0701e5

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 154
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "EnterCurrentPasscode"

    const v5, 0x7f0701e2

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 177
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    iput v7, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    .line 178
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_1

    .line 259
    :cond_4
    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto/16 :goto_2

    .line 289
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v4, "Passcode"

    const v5, 0x7f0703c2

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 294
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v4, "Passcode"

    const v5, 0x7f0703c2

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 295
    const v3, -0xf0f10

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 296
    new-instance v3, Landroid/widget/ListView;

    invoke-direct {v3, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Landroid/widget/ListView;

    .line 297
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 298
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 299
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 300
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 301
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 302
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 303
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 304
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 305
    const/16 v3, 0x30

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 306
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Landroid/widget/ListView;

    new-instance v4, Lorg/telegram/ui/PasscodeActivity$ListAdapter;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/PasscodeActivity$ListAdapter;-><init>(Lorg/telegram/ui/PasscodeActivity;Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/PasscodeActivity;->listAdapter:Lorg/telegram/ui/PasscodeActivity$ListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 308
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Landroid/widget/ListView;

    new-instance v4, Lorg/telegram/ui/PasscodeActivity$6;

    invoke-direct {v4, p0}, Lorg/telegram/ui/PasscodeActivity$6;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_4
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 425
    sget v0, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    if-ne p1, v0, :cond_0

    .line 426
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-nez v0, :cond_0

    .line 427
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->updateRows()V

    .line 428
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->listAdapter:Lorg/telegram/ui/PasscodeActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->listAdapter:Lorg/telegram/ui/PasscodeActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->notifyDataSetChanged()V

    .line 433
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 462
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 463
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 464
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 465
    .local v0, "obs":Landroid/view/ViewTreeObserver;
    new-instance v1, Lorg/telegram/ui/PasscodeActivity$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PasscodeActivity$8;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 474
    .end local v0    # "obs":Landroid/view/ViewTreeObserver;
    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 96
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->updateRows()V

    .line 97
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-nez v0, :cond_0

    .line 98
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 100
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 106
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-nez v0, :cond_0

    .line 107
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 109
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 405
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 406
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->listAdapter:Lorg/telegram/ui/PasscodeActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->listAdapter:Lorg/telegram/ui/PasscodeActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->notifyDataSetChanged()V

    .line 409
    :cond_0
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-eqz v0, :cond_1

    .line 410
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PasscodeActivity$7;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    const-wide/16 v2, 0xc8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 420
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->fixLayoutInternal()V

    .line 421
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 1
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    .line 478
    if-eqz p1, :cond_0

    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 481
    :cond_0
    return-void
.end method
