.class public Lorg/telegram/ui/ChangeUsernameActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ChangeUsernameActivity.java"


# static fields
.field private static final done_button:I = 0x1


# instance fields
.field private checkReqId:I

.field private checkRunnable:Ljava/lang/Runnable;

.field private checkTextView:Landroid/widget/TextView;

.field private doneButton:Landroid/view/View;

.field private firstNameField:Landroid/widget/EditText;

.field private lastCheckName:Ljava/lang/String;

.field private lastNameAvailable:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 55
    iput v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkReqId:I

    .line 56
    iput-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->lastCheckName:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkRunnable:Ljava/lang/Runnable;

    .line 58
    iput-boolean v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->lastNameAvailable:Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChangeUsernameActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChangeUsernameActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/telegram/ui/ChangeUsernameActivity;->saveName()V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChangeUsernameActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangeUsernameActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->doneButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChangeUsernameActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangeUsernameActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ChangeUsernameActivity;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangeUsernameActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChangeUsernameActivity;->checkUserName(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lorg/telegram/ui/ChangeUsernameActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChangeUsernameActivity;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkReqId:I

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/ChangeUsernameActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangeUsernameActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->lastCheckName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ChangeUsernameActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangeUsernameActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/ChangeUsernameActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChangeUsernameActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->lastNameAvailable:Z

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/ChangeUsernameActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChangeUsernameActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChangeUsernameActivity;->showErrorAlert(Ljava/lang/String;)V

    return-void
.end method

.method private checkUserName(Ljava/lang/String;Z)Z
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "alert"    # Z

    .prologue
    const/16 v9, 0x30

    const v8, 0x7f0704ec

    const/4 v3, 0x1

    const v7, -0x30cfd0

    const/4 v4, 0x0

    .line 196
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 197
    iget-object v5, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 305
    :cond_0
    :goto_1
    return v3

    .line 199
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 204
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkRunnable:Ljava/lang/Runnable;

    if-eqz v5, :cond_3

    .line 205
    iget-object v5, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkRunnable:Ljava/lang/Runnable;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 206
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkRunnable:Ljava/lang/Runnable;

    .line 207
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/ui/ChangeUsernameActivity;->lastCheckName:Ljava/lang/String;

    .line 208
    iget v5, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkReqId:I

    if-eqz v5, :cond_3

    .line 209
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    iget v6, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkReqId:I

    invoke-virtual {v5, v6, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 212
    :cond_3
    iput-boolean v4, p0, Lorg/telegram/ui/ChangeUsernameActivity;->lastNameAvailable:Z

    .line 213
    if-eqz p1, :cond_d

    .line 214
    const-string/jumbo v5, "_"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "_"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 215
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "UsernameInvalid"

    invoke-static {v5, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    move v3, v4

    .line 217
    goto :goto_1

    .line 219
    :cond_5
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_d

    .line 220
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 221
    .local v1, "ch":C
    if-nez v0, :cond_7

    if-lt v1, v9, :cond_7

    const/16 v5, 0x39

    if-gt v1, v5, :cond_7

    .line 222
    if-eqz p2, :cond_6

    .line 223
    const-string/jumbo v3, "UsernameInvalidStartNumber"

    const v5, 0x7f0704ef

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/telegram/ui/ChangeUsernameActivity;->showErrorAlert(Ljava/lang/String;)V

    :goto_3
    move v3, v4

    .line 228
    goto :goto_1

    .line 225
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "UsernameInvalidStartNumber"

    const v6, 0x7f0704ef

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 230
    :cond_7
    if-lt v1, v9, :cond_8

    const/16 v5, 0x39

    if-le v1, v5, :cond_c

    :cond_8
    const/16 v5, 0x61

    if-lt v1, v5, :cond_9

    const/16 v5, 0x7a

    if-le v1, v5, :cond_c

    :cond_9
    const/16 v5, 0x41

    if-lt v1, v5, :cond_a

    const/16 v5, 0x5a

    if-le v1, v5, :cond_c

    :cond_a
    const/16 v5, 0x5f

    if-eq v1, v5, :cond_c

    .line 231
    if-eqz p2, :cond_b

    .line 232
    const-string/jumbo v3, "UsernameInvalid"

    invoke-static {v3, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/telegram/ui/ChangeUsernameActivity;->showErrorAlert(Ljava/lang/String;)V

    :goto_4
    move v3, v4

    .line 237
    goto/16 :goto_1

    .line 234
    :cond_b
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "UsernameInvalid"

    invoke-static {v5, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 219
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 241
    .end local v0    # "a":I
    .end local v1    # "ch":C
    :cond_d
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-ge v5, v6, :cond_10

    .line 242
    :cond_e
    if-eqz p2, :cond_f

    .line 243
    const-string/jumbo v3, "UsernameInvalidShort"

    const v5, 0x7f0704ee

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/telegram/ui/ChangeUsernameActivity;->showErrorAlert(Ljava/lang/String;)V

    :goto_5
    move v3, v4

    .line 248
    goto/16 :goto_1

    .line 245
    :cond_f
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "UsernameInvalidShort"

    const v6, 0x7f0704ee

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 250
    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x20

    if-le v5, v6, :cond_12

    .line 251
    if-eqz p2, :cond_11

    .line 252
    const-string/jumbo v3, "UsernameInvalidLong"

    const v5, 0x7f0704ed

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/telegram/ui/ChangeUsernameActivity;->showErrorAlert(Ljava/lang/String;)V

    :goto_6
    move v3, v4

    .line 257
    goto/16 :goto_1

    .line 254
    :cond_11
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "UsernameInvalidLong"

    const v6, 0x7f0704ed

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    .line 260
    :cond_12
    if-nez p2, :cond_0

    .line 261
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 262
    .local v2, "currentName":Ljava/lang/String;
    if-nez v2, :cond_13

    .line 263
    const-string/jumbo v2, ""

    .line 265
    :cond_13
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 266
    iget-object v5, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v6, "UsernameAvailable"

    const v7, 0x7f0704e7

    new-array v8, v3, [Ljava/lang/Object;

    aput-object p1, v8, v4

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v4, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const v5, -0xd968d4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 271
    :cond_14
    iget-object v4, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "UsernameChecking"

    const v6, 0x7f0704e8

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v4, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const v5, -0x92928e

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 273
    iput-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->lastCheckName:Ljava/lang/String;

    .line 274
    new-instance v4, Lorg/telegram/ui/ChangeUsernameActivity$5;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/ChangeUsernameActivity$5;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;Ljava/lang/String;)V

    iput-object v4, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkRunnable:Ljava/lang/Runnable;

    .line 303
    iget-object v4, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x12c

    invoke-static {v4, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_1
.end method

.method private saveName()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 309
    iget-object v6, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v9}, Lorg/telegram/ui/ChangeUsernameActivity;->checkUserName(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    .line 313
    .local v5, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUsernameActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    .line 316
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 317
    .local v0, "currentName":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 318
    const-string/jumbo v0, ""

    .line 320
    :cond_2
    iget-object v6, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "newName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 322
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUsernameActivity;->finishFragment()V

    goto :goto_0

    .line 326
    :cond_3
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUsernameActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 327
    .local v2, "progressDialog":Landroid/app/ProgressDialog;
    const-string/jumbo v6, "Loading"

    const v7, 0x7f0702d1

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 328
    invoke-virtual {v2, v10}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 329
    invoke-virtual {v2, v10}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 331
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_account_updateUsername;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_account_updateUsername;-><init>()V

    .line 332
    .local v3, "req":Lorg/telegram/tgnet/TLRPC$TL_account_updateUsername;
    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$TL_account_updateUsername;->username:Ljava/lang/String;

    .line 334
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 335
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/ChangeUsernameActivity$6;

    invoke-direct {v7, p0, v2}, Lorg/telegram/ui/ChangeUsernameActivity$6;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;Landroid/app/ProgressDialog;)V

    const/4 v8, 0x2

    invoke-virtual {v6, v3, v7, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v4

    .line 371
    .local v4, "reqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    iget v7, p0, Lorg/telegram/ui/ChangeUsernameActivity;->classGuid:I

    invoke-virtual {v6, v4, v7}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    .line 373
    const/4 v6, -0x2

    const-string/jumbo v7, "Cancel"

    const v8, 0x7f0700f2

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/ChangeUsernameActivity$7;

    invoke-direct {v8, p0, v4}, Lorg/telegram/ui/ChangeUsernameActivity$7;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;I)V

    invoke-virtual {v2, v6, v7, v8}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 384
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0
.end method

.method private showErrorAlert(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUsernameActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 193
    :goto_0
    return-void

    .line 175
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUsernameActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 176
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v1, "AppName"

    const v2, 0x7f07009a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 177
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 188
    const-string/jumbo v1, "ErrorOccurred"

    const v2, 0x7f0701e8

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 191
    :goto_2
    const-string/jumbo v1, "OK"

    const v2, 0x7f07039f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 192
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ChangeUsernameActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 177
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

    .line 179
    :pswitch_0
    const-string/jumbo v1, "UsernameInvalid"

    const v2, 0x7f0704ec

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 182
    :pswitch_1
    const-string/jumbo v1, "UsernameInUse"

    const v2, 0x7f0704eb

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 185
    :pswitch_2
    const-string/jumbo v1, "FeatureUnavailable"

    const v2, 0x7f0701f5

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 177
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


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f020131

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 65
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 66
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "Username"

    const v2, 0x7f0704e6

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ChangeUsernameActivity$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChangeUsernameActivity$1;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 78
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v8

    .line 79
    .local v8, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/4 v0, 0x1

    const v1, 0x7f020152

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->doneButton:Landroid/view/View;

    .line 81
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    .line 82
    .local v9, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v9, :cond_0

    .line 83
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    .line 86
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->fragmentView:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 88
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->fragmentView:Landroid/view/View;

    new-instance v1, Lorg/telegram/ui/ChangeUsernameActivity$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChangeUsernameActivity$2;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 95
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    .line 96
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 97
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    const v1, -0x686869

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 98
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    const v1, -0xdededf

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 99
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 100
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLines(I)V

    .line 101
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 102
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 103
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setGravity(I)V

    .line 104
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    const v1, 0x2c000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 106
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    const-string/jumbo v1, "UsernamePlaceholder"

    const v2, 0x7f0704f0

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 108
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/ChangeUsernameActivity$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChangeUsernameActivity$3;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 119
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->fragmentView:Landroid/view/View;

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    iget-object v10, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    const/4 v0, -0x1

    const/16 v1, 0x24

    const/high16 v2, 0x41c00000    # 24.0f

    const/high16 v3, 0x41c00000    # 24.0f

    const/high16 v4, 0x41c00000    # 24.0f

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    if-eqz v9, :cond_1

    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    iget-object v1, v9, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 126
    :cond_1
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 128
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 129
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->fragmentView:Landroid/view/View;

    move-object v10, v0

    check-cast v10, Landroid/widget/LinearLayout;

    iget-object v11, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    :goto_2
    const/16 v3, 0x18

    const/16 v4, 0xc

    const/16 v5, 0x18

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v10, v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 132
    .local v7, "helpTextView":Landroid/widget/TextView;
    const/4 v0, 0x1

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v7, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 133
    const v0, -0x92928e

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    :goto_3
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 135
    const-string/jumbo v0, "UsernameHelp"

    const v1, 0x7f0704ea

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->fragmentView:Landroid/view/View;

    move-object v10, v0

    check-cast v10, Landroid/widget/LinearLayout;

    const/4 v0, -0x2

    const/4 v1, -0x2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x5

    :goto_4
    const/16 v3, 0x18

    const/16 v4, 0xa

    const/16 v5, 0x18

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v10, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/ChangeUsernameActivity$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChangeUsernameActivity$4;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 155
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->fragmentView:Landroid/view/View;

    return-object v0

    .line 103
    .end local v7    # "helpTextView":Landroid/widget/TextView;
    :cond_2
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 128
    :cond_3
    const/4 v0, 0x3

    goto :goto_1

    .line 129
    :cond_4
    const/4 v2, 0x3

    goto :goto_2

    .line 134
    .restart local v7    # "helpTextView":Landroid/widget/TextView;
    :cond_5
    const/4 v0, 0x3

    goto :goto_3

    .line 136
    :cond_6
    const/4 v2, 0x3

    goto :goto_4
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 162
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 163
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "mainconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 164
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "view_animations"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 165
    .local v0, "animations":Z
    if-nez v0, :cond_0

    .line 166
    iget-object v2, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 167
    iget-object v2, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 169
    :cond_0
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 1
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    .line 389
    if-eqz p1, :cond_0

    .line 390
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 391
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 393
    :cond_0
    return-void
.end method
