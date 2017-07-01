.class public Lorg/telegram/ui/ChannelEditTypeActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ChannelEditTypeActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# static fields
.field private static final done_button:I = 0x1


# instance fields
.field private chatId:I

.field private checkReqId:I

.field private checkRunnable:Ljava/lang/Runnable;

.field private checkTextView:Landroid/widget/TextView;

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private donePressed:Z

.field private headerCell:Lorg/telegram/ui/Cells/HeaderCell;

.field private invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

.field private isPrivate:Z

.field private lastCheckName:Ljava/lang/String;

.field private lastNameAvailable:Z

.field private linkContainer:Landroid/widget/LinearLayout;

.field private loadingInvite:Z

.field private nameTextView:Landroid/widget/EditText;

.field private privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

.field private publicContainer:Landroid/widget/LinearLayout;

.field private radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

.field private radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

.field private typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 65
    iput-boolean v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    .line 69
    iput v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkReqId:I

    .line 70
    iput-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->lastCheckName:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkRunnable:Ljava/lang/Runnable;

    .line 72
    iput-boolean v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->lastNameAvailable:Z

    .line 82
    const-string/jumbo v0, "chat_id"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->chatId:I

    .line 83
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChannelEditTypeActivity;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/ChannelEditTypeActivity;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 54
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChannelEditTypeActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->chatId:I

    return v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/ChannelEditTypeActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkReqId:I

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ChannelEditTypeActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->lastCheckName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/ChannelEditTypeActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->loadingInvite:Z

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ChannelEditTypeActivity;)Lorg/telegram/ui/Cells/TextBlockCell;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChannelEditTypeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;

    .prologue
    .line 54
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->donePressed:Z

    return v0
.end method

.method static synthetic access$202(Lorg/telegram/ui/ChannelEditTypeActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->donePressed:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/ChannelEditTypeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;

    .prologue
    .line 54
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/ChannelEditTypeActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/ChannelEditTypeActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ChannelEditTypeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;

    .prologue
    .line 54
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->lastNameAvailable:Z

    return v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/ChannelEditTypeActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->lastNameAvailable:Z

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/ChannelEditTypeActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ChannelEditTypeActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/telegram/ui/ChannelEditTypeActivity;->updatePrivatePublic()V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/ChannelEditTypeActivity;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelEditTypeActivity;->checkUserName(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ChannelEditTypeActivity;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    return-object v0
.end method

.method static synthetic access$902(Lorg/telegram/ui/ChannelEditTypeActivity;Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    .prologue
    .line 54
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    return-object p1
.end method

.method private checkUserName(Ljava/lang/String;Z)Z
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "alert"    # Z

    .prologue
    const/16 v8, 0x30

    const v7, 0x7f0702c9

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v6, -0x30cfd0

    .line 369
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 370
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 374
    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 491
    :cond_0
    :goto_1
    return v2

    .line 372
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 377
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkRunnable:Ljava/lang/Runnable;

    if-eqz v4, :cond_3

    .line 378
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkRunnable:Ljava/lang/Runnable;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 379
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkRunnable:Ljava/lang/Runnable;

    .line 380
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->lastCheckName:Ljava/lang/String;

    .line 381
    iget v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkReqId:I

    if-eqz v4, :cond_3

    .line 382
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkReqId:I

    invoke-virtual {v4, v5, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 385
    :cond_3
    iput-boolean v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->lastNameAvailable:Z

    .line 386
    if-eqz p1, :cond_f

    .line 387
    const-string/jumbo v4, "_"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "_"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 388
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "LinkInvalid"

    invoke-static {v4, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    move v2, v3

    .line 390
    goto :goto_1

    .line 392
    :cond_5
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_f

    .line 393
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 394
    .local v1, "ch":C
    if-nez v0, :cond_9

    if-lt v1, v8, :cond_9

    const/16 v4, 0x39

    if-gt v1, v4, :cond_9

    .line 395
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_7

    .line 396
    if-eqz p2, :cond_6

    .line 397
    const-string/jumbo v2, "LinkInvalidStartNumberMega"

    const v4, 0x7f0702ce

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/telegram/ui/ChannelEditTypeActivity;->showErrorAlert(Ljava/lang/String;)V

    :goto_3
    move v2, v3

    .line 410
    goto :goto_1

    .line 399
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "LinkInvalidStartNumberMega"

    const v5, 0x7f0702ce

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 403
    :cond_7
    if-eqz p2, :cond_8

    .line 404
    const-string/jumbo v2, "LinkInvalidStartNumber"

    const v4, 0x7f0702cd

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/telegram/ui/ChannelEditTypeActivity;->showErrorAlert(Ljava/lang/String;)V

    goto :goto_3

    .line 406
    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "LinkInvalidStartNumber"

    const v5, 0x7f0702cd

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 412
    :cond_9
    if-lt v1, v8, :cond_a

    const/16 v4, 0x39

    if-le v1, v4, :cond_e

    :cond_a
    const/16 v4, 0x61

    if-lt v1, v4, :cond_b

    const/16 v4, 0x7a

    if-le v1, v4, :cond_e

    :cond_b
    const/16 v4, 0x41

    if-lt v1, v4, :cond_c

    const/16 v4, 0x5a

    if-le v1, v4, :cond_e

    :cond_c
    const/16 v4, 0x5f

    if-eq v1, v4, :cond_e

    .line 413
    if-eqz p2, :cond_d

    .line 414
    const-string/jumbo v2, "LinkInvalid"

    invoke-static {v2, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/telegram/ui/ChannelEditTypeActivity;->showErrorAlert(Ljava/lang/String;)V

    :goto_4
    move v2, v3

    .line 419
    goto/16 :goto_1

    .line 416
    :cond_d
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "LinkInvalid"

    invoke-static {v4, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 392
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 423
    .end local v0    # "a":I
    .end local v1    # "ch":C
    :cond_f
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_14

    .line 424
    :cond_10
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_12

    .line 425
    if-eqz p2, :cond_11

    .line 426
    const-string/jumbo v2, "LinkInvalidShortMega"

    const v4, 0x7f0702cc

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/telegram/ui/ChannelEditTypeActivity;->showErrorAlert(Ljava/lang/String;)V

    :goto_5
    move v2, v3

    .line 439
    goto/16 :goto_1

    .line 428
    :cond_11
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "LinkInvalidShortMega"

    const v5, 0x7f0702cc

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 432
    :cond_12
    if-eqz p2, :cond_13

    .line 433
    const-string/jumbo v2, "LinkInvalidShort"

    const v4, 0x7f0702cb

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/telegram/ui/ChannelEditTypeActivity;->showErrorAlert(Ljava/lang/String;)V

    goto :goto_5

    .line 435
    :cond_13
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "LinkInvalidShort"

    const v5, 0x7f0702cb

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 441
    :cond_14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x20

    if-le v4, v5, :cond_16

    .line 442
    if-eqz p2, :cond_15

    .line 443
    const-string/jumbo v2, "LinkInvalidLong"

    const v4, 0x7f0702ca

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/telegram/ui/ChannelEditTypeActivity;->showErrorAlert(Ljava/lang/String;)V

    :goto_6
    move v2, v3

    .line 448
    goto/16 :goto_1

    .line 445
    :cond_15
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "LinkInvalidLong"

    const v5, 0x7f0702ca

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    .line 451
    :cond_16
    if-nez p2, :cond_0

    .line 452
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "LinkChecking"

    const v5, 0x7f0702c5

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    const v4, -0x92928e

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 454
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->lastCheckName:Ljava/lang/String;

    .line 455
    new-instance v3, Lorg/telegram/ui/ChannelEditTypeActivity$7;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/ChannelEditTypeActivity$7;-><init>(Lorg/telegram/ui/ChannelEditTypeActivity;Ljava/lang/String;)V

    iput-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkRunnable:Ljava/lang/Runnable;

    .line 489
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_1
.end method

.method private generateLink()V
    .locals 3

    .prologue
    .line 495
    iget-boolean v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->loadingInvite:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    if-eqz v1, :cond_1

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->loadingInvite:Z

    .line 499
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_exportInvite;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_exportInvite;-><init>()V

    .line 500
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_exportInvite;
    iget v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->chatId:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_exportInvite;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 501
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChannelEditTypeActivity$8;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelEditTypeActivity$8;-><init>(Lorg/telegram/ui/ChannelEditTypeActivity;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method private showErrorAlert(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 519
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelEditTypeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 540
    :goto_0
    return-void

    .line 522
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ChannelEditTypeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 523
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v1, "AppName"

    const v2, 0x7f07009a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 524
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 535
    const-string/jumbo v1, "ErrorOccurred"

    const v2, 0x7f0701e8

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 538
    :goto_2
    const-string/jumbo v1, "OK"

    const v2, 0x7f07039f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 539
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ChannelEditTypeActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 524
    :sswitch_0
    const-string/jumbo v2, "USERNAME_INVALID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "USERNAME_OCCUPIED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "USERNAMES_UNAVAILABLE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    .line 526
    :pswitch_0
    const-string/jumbo v1, "LinkInvalid"

    const v2, 0x7f0702c9

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 529
    :pswitch_1
    const-string/jumbo v1, "LinkInUse"

    const v2, 0x7f0702c7

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 532
    :pswitch_2
    const-string/jumbo v1, "FeatureUnavailable"

    const v2, 0x7f0701f5

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 524
    :sswitch_data_0
    .sparse-switch
        -0x87506d2 -> :sswitch_2
        0x1137676e -> :sswitch_0
        0x1fc79be7 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updatePrivatePublic()V
    .locals 7

    .prologue
    const v6, 0x7f070122

    const v5, 0x7f07011a

    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 350
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0, v1}, Lorg/telegram/ui/Cells/RadioButtonCell;->setChecked(ZZ)V

    .line 351
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    iget-boolean v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    invoke-virtual {v0, v4, v1}, Lorg/telegram/ui/Cells/RadioButtonCell;->setChecked(ZZ)V

    .line 352
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_3

    .line 353
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "MegaPrivateLinkHelp"

    const v4, 0x7f0702e8

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ChannelInviteLinkTitle"

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    .line 359
    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->publicContainer:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    if-eqz v0, :cond_6

    move v0, v3

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 360
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    if-eqz v0, :cond_7

    move v0, v2

    :goto_5
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/TextBlockCell;->setVisibility(I)V

    .line 361
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->linkContainer:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    if-eqz v0, :cond_8

    move v0, v2

    :goto_6
    invoke-virtual {v1, v2, v2, v2, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 362
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->link:Ljava/lang/String;

    :goto_7
    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Cells/TextBlockCell;->setText(Ljava/lang/String;Z)V

    .line 363
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 364
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    iget-boolean v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    if-nez v1, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_a

    :goto_8
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 366
    return-void

    :cond_0
    move v0, v2

    .line 350
    goto :goto_0

    .line 353
    :cond_1
    const-string/jumbo v0, "MegaUsernameHelp"

    const v4, 0x7f0702eb

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 354
    :cond_2
    const-string/jumbo v0, "ChannelLinkTitle"

    invoke-static {v0, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 356
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "ChannelPrivateLinkHelp"

    const v4, 0x7f070143

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "ChannelInviteLinkTitle"

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto :goto_3

    .line 356
    :cond_4
    const-string/jumbo v0, "ChannelUsernameHelp"

    const v4, 0x7f070158

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 357
    :cond_5
    const-string/jumbo v0, "ChannelLinkTitle"

    invoke-static {v0, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_6
    move v0, v2

    .line 359
    goto/16 :goto_4

    :cond_7
    move v0, v3

    .line 360
    goto/16 :goto_5

    .line 361
    :cond_8
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto/16 :goto_6

    .line 362
    :cond_9
    const-string/jumbo v0, "Loading"

    const v4, 0x7f0702d1

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_a
    move v2, v3

    .line 364
    goto :goto_8
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v2, 0x7f020131

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 130
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 132
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/ChannelEditTypeActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChannelEditTypeActivity$2;-><init>(Lorg/telegram/ui/ChannelEditTypeActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v11

    .line 165
    .local v11, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/4 v1, 0x1

    const v2, 0x7f020152

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v11, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 169
    new-instance v1, Landroid/widget/ScrollView;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->fragmentView:Landroid/view/View;

    .line 170
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->fragmentView:Landroid/view/View;

    const v2, -0xf0f10

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 171
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->fragmentView:Landroid/view/View;

    check-cast v12, Landroid/widget/ScrollView;

    .line 172
    .local v12, "scrollView":Landroid/widget/ScrollView;
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 173
    new-instance v9, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 174
    .local v9, "linearLayout":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v9, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 178
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v1, :cond_1

    .line 179
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v2, "GroupType"

    const v3, 0x7f070257

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 184
    :goto_0
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 185
    .local v10, "linearLayout2":Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 186
    const/4 v1, -0x1

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 187
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    new-instance v1, Lorg/telegram/ui/Cells/RadioButtonCell;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lorg/telegram/ui/Cells/RadioButtonCell;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    .line 190
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    const v2, 0x7f0201ab

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/RadioButtonCell;->setBackgroundResource(I)V

    .line 191
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v1, :cond_3

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    const-string/jumbo v1, "MegaPublic"

    const v3, 0x7f0702e9

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "MegaPublicInfo"

    const v4, 0x7f0702ea

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v1, v5}, Lorg/telegram/ui/Cells/RadioButtonCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 196
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    new-instance v2, Lorg/telegram/ui/ChannelEditTypeActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChannelEditTypeActivity$3;-><init>(Lorg/telegram/ui/ChannelEditTypeActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/RadioButtonCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    new-instance v1, Lorg/telegram/ui/Cells/RadioButtonCell;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lorg/telegram/ui/Cells/RadioButtonCell;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    .line 209
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    const v2, 0x7f0201ab

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/RadioButtonCell;->setBackgroundResource(I)V

    .line 210
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v1, :cond_5

    .line 211
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    const-string/jumbo v2, "MegaPrivate"

    const v3, 0x7f0702e6

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "MegaPrivateInfo"

    const v4, 0x7f0702e7

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/ui/Cells/RadioButtonCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 215
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    new-instance v2, Lorg/telegram/ui/ChannelEditTypeActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChannelEditTypeActivity$4;-><init>(Lorg/telegram/ui/ChannelEditTypeActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/RadioButtonCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    new-instance v13, Lorg/telegram/ui/Cells/ShadowSectionCell;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 228
    .local v13, "sectionCell":Lorg/telegram/ui/Cells/ShadowSectionCell;
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v13, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    new-instance v1, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->linkContainer:Landroid/widget/LinearLayout;

    .line 231
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->linkContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 232
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->linkContainer:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 233
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->linkContainer:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    new-instance v1, Lorg/telegram/ui/Cells/HeaderCell;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    .line 237
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setBackgroundColor(I)V

    .line 238
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->linkContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 240
    new-instance v1, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->publicContainer:Landroid/widget/LinearLayout;

    .line 241
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->publicContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 242
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->linkContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->publicContainer:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    const/16 v2, 0x24

    const/high16 v3, 0x41880000    # 17.0f

    const/high16 v4, 0x40e00000    # 7.0f

    const/high16 v5, 0x41880000    # 17.0f

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v14, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    new-instance v8, Landroid/widget/EditText;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 245
    .local v8, "editText":Landroid/widget/EditText;
    const-string/jumbo v1, "telegram.me/"

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 246
    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v8, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 247
    const v1, -0x686869

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 248
    const v1, -0xdededf

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 249
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 250
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setLines(I)V

    .line 251
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 252
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 254
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 255
    const v1, 0x28000

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 256
    const/4 v1, 0x6

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 257
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->publicContainer:Landroid/widget/LinearLayout;

    const/4 v2, -0x2

    const/16 v3, 0x24

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    new-instance v1, Landroid/widget/EditText;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    .line 260
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v2, 0x1

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 261
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    if-nez v1, :cond_0

    .line 262
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    const v2, -0x686869

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 265
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    const v2, -0xdededf

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 266
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 267
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLines(I)V

    .line 268
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 270
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 271
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    const v2, 0x28020

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 272
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 273
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    const-string/jumbo v2, "ChannelUsernamePlaceholder"

    const v3, 0x7f070159

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->publicContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v3, -0x1

    const/16 v4, 0x24

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    new-instance v2, Lorg/telegram/ui/ChannelEditTypeActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChannelEditTypeActivity$5;-><init>(Lorg/telegram/ui/ChannelEditTypeActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 293
    new-instance v1, Lorg/telegram/ui/Cells/TextBlockCell;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lorg/telegram/ui/Cells/TextBlockCell;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    .line 294
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    const v2, 0x7f0201ab

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextBlockCell;->setBackgroundResource(I)V

    .line 295
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->linkContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    new-instance v2, Lorg/telegram/ui/ChannelEditTypeActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChannelEditTypeActivity$6;-><init>(Lorg/telegram/ui/ChannelEditTypeActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextBlockCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    new-instance v1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    .line 314
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x5

    :goto_4
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 316
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->linkContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    const/4 v1, -0x2

    const/4 v2, -0x2

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_7

    const/4 v3, 0x5

    :goto_5
    const/16 v4, 0x11

    const/4 v5, 0x3

    const/16 v6, 0x11

    const/4 v7, 0x7

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v14, v15, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    new-instance v1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 320
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const v2, 0x7f020127

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundResource(I)V

    .line 321
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChannelEditTypeActivity;->updatePrivatePublic()V

    .line 325
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->fragmentView:Landroid/view/View;

    return-object v1

    .line 181
    .end local v8    # "editText":Landroid/widget/EditText;
    .end local v10    # "linearLayout2":Landroid/widget/LinearLayout;
    .end local v13    # "sectionCell":Lorg/telegram/ui/Cells/ShadowSectionCell;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v2, "ChannelType"

    const v3, 0x7f07014f

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 192
    .restart local v10    # "linearLayout2":Landroid/widget/LinearLayout;
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 194
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    const-string/jumbo v1, "ChannelPublic"

    const v3, 0x7f070144

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "ChannelPublicInfo"

    const v4, 0x7f070146

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_6
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v1, v5}, Lorg/telegram/ui/Cells/RadioButtonCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    :cond_4
    const/4 v1, 0x0

    goto :goto_6

    .line 213
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    const-string/jumbo v2, "ChannelPrivate"

    const v3, 0x7f070141

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ChannelPrivateInfo"

    const v4, 0x7f070142

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/ui/Cells/RadioButtonCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_3

    .line 315
    .restart local v8    # "editText":Landroid/widget/EditText;
    .restart local v13    # "sectionCell":Lorg/telegram/ui/Cells/ShadowSectionCell;
    :cond_6
    const/4 v1, 0x3

    goto/16 :goto_4

    .line 317
    :cond_7
    const/4 v3, 0x3

    goto/16 :goto_5
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 330
    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    if-ne p1, v1, :cond_0

    .line 331
    const/4 v1, 0x0

    aget-object v0, p2, v1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 332
    .local v0, "chatFull":Lorg/telegram/tgnet/TLRPC$ChatFull;
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:I

    iget v2, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->chatId:I

    if-ne v1, v2, :cond_0

    .line 333
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    iput-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    .line 334
    invoke-direct {p0}, Lorg/telegram/ui/ChannelEditTypeActivity;->updatePrivatePublic()V

    .line 337
    .end local v0    # "chatFull":Lorg/telegram/tgnet/TLRPC$ChatFull;
    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->chatId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 89
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v4, :cond_0

    .line 90
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 91
    .local v1, "semaphore":Ljava/util/concurrent/Semaphore;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/ChannelEditTypeActivity$1;

    invoke-direct {v5, p0, v1}, Lorg/telegram/ui/ChannelEditTypeActivity$1;-><init>(Lorg/telegram/ui/ChannelEditTypeActivity;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 99
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v4, :cond_3

    .line 104
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v4, v5, v3}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 109
    .end local v1    # "semaphore":Ljava/util/concurrent/Semaphore;
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    .line 110
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 111
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v2

    :cond_3
    return v2

    .line 100
    .restart local v1    # "semaphore":Ljava/util/concurrent/Semaphore;
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "tmessages"

    invoke-static {v4, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 117
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 118
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelEditTypeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->removeAdjustResize(Landroid/app/Activity;I)V

    .line 119
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 124
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelEditTypeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 125
    return-void
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 1
    .param p1, "chatFull"    # Lorg/telegram/tgnet/TLRPC$ChatFull;

    .prologue
    .line 340
    if-eqz p1, :cond_0

    .line 341
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ChannelEditTypeActivity;->generateLink()V

    goto :goto_0
.end method
