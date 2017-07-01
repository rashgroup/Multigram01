.class public Lorg/telegram/ui/ContactsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ContactsActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;
    }
.end annotation


# instance fields
.field private allowBots:Z

.field private allowUsernameSearch:Z

.field private chat_id:I

.field private createSecretChat:Z

.field private creatingChat:Z

.field private delegate:Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;

.field private destroyAfterSelect:Z

.field private emptyTextView:Landroid/widget/TextView;

.field private ignoreUsers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Lorg/telegram/ui/Components/LetterSectionsListView;

.field private listViewAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

.field private needForwardCount:Z

.field private needPhonebook:Z

.field private onlyUsers:Z

.field private returnAsResult:Z

.field private searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

.field private searchWas:Z

.field private searching:Z

.field private selectAlertString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 97
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->creatingChat:Z

    .line 84
    iput-boolean v1, p0, Lorg/telegram/ui/ContactsActivity;->allowBots:Z

    .line 85
    iput-boolean v1, p0, Lorg/telegram/ui/ContactsActivity;->needForwardCount:Z

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ContactsActivity;->selectAlertString:Ljava/lang/String;

    .line 89
    iput-boolean v1, p0, Lorg/telegram/ui/ContactsActivity;->allowUsernameSearch:Z

    .line 98
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ContactsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ContactsActivity;

    .prologue
    .line 69
    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->searching:Z

    return v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/ContactsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ContactsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->searching:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Adapters/SearchAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ContactsActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

    return-object v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/ContactsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ContactsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->creatingChat:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ContactsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ContactsActivity;

    .prologue
    .line 69
    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->onlyUsers:Z

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ContactsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ContactsActivity;

    .prologue
    .line 69
    iget v0, p0, Lorg/telegram/ui/ContactsActivity;->chat_id:I

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ContactsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ContactsActivity;

    .prologue
    .line 69
    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->needPhonebook:Z

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ContactsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ContactsActivity;

    .prologue
    .line 69
    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->searchWas:Z

    return v0
.end method

.method static synthetic access$202(Lorg/telegram/ui/ContactsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ContactsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->searchWas:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Adapters/BaseSectionsAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ContactsActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ContactsActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ContactsActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ContactsActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->emptyTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ContactsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ContactsActivity;

    .prologue
    .line 69
    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->returnAsResult:Z

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ContactsActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ContactsActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->ignoreUsers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ContactsActivity;Lorg/telegram/tgnet/TLRPC$User;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ContactsActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ContactsActivity;->didSelectResult(Lorg/telegram/tgnet/TLRPC$User;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/ContactsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ContactsActivity;

    .prologue
    .line 69
    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z

    return v0
.end method

.method private didSelectResult(Lorg/telegram/tgnet/TLRPC$User;ZLjava/lang/String;)V
    .locals 12
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "useAlert"    # Z
    .param p3, "param"    # Ljava/lang/String;

    .prologue
    .line 471
    if-eqz p2, :cond_6

    iget-object v7, p0, Lorg/telegram/ui/ContactsActivity;->selectAlertString:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 472
    invoke-virtual {p0}, Lorg/telegram/ui/ContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    if-nez v7, :cond_1

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    iget-boolean v7, p1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v7, :cond_2

    iget-boolean v7, p1, Lorg/telegram/tgnet/TLRPC$User;->bot_nochats:Z

    if-eqz v7, :cond_2

    .line 477
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/ContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "BotCantJoinGroups"

    const v9, 0x7f0700de

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 478
    :catch_0
    move-exception v1

    .line 479
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "tmessages"

    invoke-static {v7, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 483
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 484
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v7, "AppName"

    const v8, 0x7f07009a

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 485
    iget-object v7, p0, Lorg/telegram/ui/ContactsActivity;->selectAlertString:Ljava/lang/String;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->formatStringSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 486
    .local v6, "message":Ljava/lang/String;
    const/4 v2, 0x0

    .line 487
    .local v2, "editText":Landroid/widget/EditText;
    iget-boolean v7, p1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v7, :cond_3

    iget-boolean v7, p0, Lorg/telegram/ui/ContactsActivity;->needForwardCount:Z

    if-eqz v7, :cond_3

    .line 488
    const-string/jumbo v7, "%s\n\n%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "AddToTheGroupForwardCount"

    const v11, 0x7f07007e

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 489
    new-instance v2, Landroid/widget/EditText;

    .end local v2    # "editText":Landroid/widget/EditText;
    invoke-virtual {p0}, Lorg/telegram/ui/ContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 490
    .restart local v2    # "editText":Landroid/widget/EditText;
    const/high16 v7, 0x41900000    # 18.0f

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setTextSize(F)V

    .line 491
    const-string/jumbo v7, "50"

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 492
    const/16 v7, 0x11

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setGravity(I)V

    .line 493
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 494
    const/4 v7, 0x6

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 495
    move-object v3, v2

    .line 496
    .local v3, "editTextFinal":Landroid/widget/EditText;
    new-instance v7, Lorg/telegram/ui/ContactsActivity$6;

    invoke-direct {v7, p0, v3}, Lorg/telegram/ui/ContactsActivity$6;-><init>(Lorg/telegram/ui/ContactsActivity;Landroid/widget/EditText;)V

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 530
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 532
    .end local v3    # "editTextFinal":Landroid/widget/EditText;
    :cond_3
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 533
    move-object v4, v2

    .line 534
    .local v4, "finalEditText":Landroid/widget/EditText;
    const-string/jumbo v7, "OK"

    const v8, 0x7f07039f

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/ContactsActivity$7;

    invoke-direct {v8, p0, p1, v4}, Lorg/telegram/ui/ContactsActivity$7;-><init>(Lorg/telegram/ui/ContactsActivity;Lorg/telegram/tgnet/TLRPC$User;Landroid/widget/EditText;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 540
    const-string/jumbo v7, "Cancel"

    const v8, 0x7f0700f2

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 541
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/telegram/ui/ContactsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 542
    if-eqz v2, :cond_0

    .line 543
    invoke-virtual {v2}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 544
    .local v5, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v5, :cond_5

    .line 545
    instance-of v7, v5, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v7, :cond_4

    move-object v7, v5

    .line 546
    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, 0x1

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 548
    :cond_4
    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 549
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 551
    :cond_5
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    .line 554
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "editText":Landroid/widget/EditText;
    .end local v4    # "finalEditText":Landroid/widget/EditText;
    .end local v5    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6    # "message":Ljava/lang/String;
    :cond_6
    iget-object v7, p0, Lorg/telegram/ui/ContactsActivity;->delegate:Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;

    if-eqz v7, :cond_7

    .line 555
    iget-object v7, p0, Lorg/telegram/ui/ContactsActivity;->delegate:Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;

    invoke-interface {v7, p1, p3}, Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;->didSelectContact(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)V

    .line 556
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/telegram/ui/ContactsActivity;->delegate:Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;

    .line 558
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/ContactsActivity;->finishFragment()V

    goto/16 :goto_0
.end method

.method private updateColors()V
    .locals 15

    .prologue
    .line 139
    sget-object v12, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v13, "ApoTheme"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 140
    .local v11, "themePreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v12, "theme_contact_action_color"

    invoke-static {v11}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getActionBarColor(Landroid/content/SharedPreferences;)I

    move-result v13

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 141
    .local v0, "aColor":I
    const-string/jumbo v12, "theme_contact_action_gradient"

    invoke-static {v11}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getActionBarGradientFlag(Landroid/content/SharedPreferences;)I

    move-result v13

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 142
    .local v2, "agFlag":I
    const-string/jumbo v12, "theme_contact_action_gcolor"

    invoke-static {v11}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getActionBarGradientColor(Landroid/content/SharedPreferences;)I

    move-result v13

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 143
    .local v1, "agColor":I
    if-eqz v2, :cond_0

    .line 144
    invoke-static {v2}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getGradientOrientation(I)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v12

    invoke-static {v0, v1, v12}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setGradiant(IILandroid/graphics/drawable/GradientDrawable$Orientation;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    .line 145
    .local v6, "gradient":Landroid/graphics/drawable/GradientDrawable;
    iget-object v12, p0, Lorg/telegram/ui/ContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v12, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    .end local v6    # "gradient":Landroid/graphics/drawable/GradientDrawable;
    :goto_0
    const-string/jumbo v12, "theme_contact_action_icolor"

    invoke-static {v11}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getActionBarIconColor(Landroid/content/SharedPreferences;)I

    move-result v13

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 150
    .local v7, "iColor":I
    iget-object v12, p0, Lorg/telegram/ui/ContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v13, "theme_contact_action_tcolor"

    invoke-static {v11}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getActionBarTitleColor(Landroid/content/SharedPreferences;)I

    move-result v14

    invoke-interface {v11, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 152
    sget-object v12, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020143

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 153
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v3, v7}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/graphics/drawable/Drawable;I)V

    .line 154
    sget-object v12, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020150

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 155
    .local v4, "drawable1":Landroid/graphics/drawable/Drawable;
    invoke-static {v4, v7}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/graphics/drawable/Drawable;I)V

    .line 156
    sget-object v12, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020141

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 157
    .local v5, "drawable2":Landroid/graphics/drawable/Drawable;
    invoke-static {v5, v7}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/graphics/drawable/Drawable;I)V

    .line 160
    const-string/jumbo v12, "theme_contact_list_color"

    invoke-static {v11}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getListViewColor(Landroid/content/SharedPreferences;)I

    move-result v13

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 161
    .local v8, "lColor":I
    const-string/jumbo v12, "theme_contact_list_gradient"

    invoke-static {v11}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getListViewGradientFlag(Landroid/content/SharedPreferences;)I

    move-result v13

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 162
    .local v10, "lgFlag":I
    const-string/jumbo v12, "theme_contact_list_gcolor"

    invoke-static {v11}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getListViewGradientColor(Landroid/content/SharedPreferences;)I

    move-result v13

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 163
    .local v9, "lgColor":I
    if-eqz v10, :cond_1

    .line 164
    invoke-static {v10}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getGradientOrientation(I)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v12

    invoke-static {v8, v9, v12}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setGradiant(IILandroid/graphics/drawable/GradientDrawable$Orientation;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    .line 165
    .restart local v6    # "gradient":Landroid/graphics/drawable/GradientDrawable;
    iget-object v12, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v12, v6}, Lorg/telegram/ui/Components/LetterSectionsListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    .end local v6    # "gradient":Landroid/graphics/drawable/GradientDrawable;
    :goto_1
    return-void

    .line 147
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "drawable1":Landroid/graphics/drawable/Drawable;
    .end local v5    # "drawable2":Landroid/graphics/drawable/Drawable;
    .end local v7    # "iColor":I
    .end local v8    # "lColor":I
    .end local v9    # "lgColor":I
    .end local v10    # "lgFlag":I
    :cond_0
    iget-object v12, p0, Lorg/telegram/ui/ContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v12, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 167
    .restart local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "drawable1":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "drawable2":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "iColor":I
    .restart local v8    # "lColor":I
    .restart local v9    # "lgColor":I
    .restart local v10    # "lgFlag":I
    :cond_1
    iget-object v12, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v12, v8}, Lorg/telegram/ui/Components/LetterSectionsListView;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method private updateVisibleRows(I)V
    .locals 4
    .param p1, "mask"    # I

    .prologue
    .line 607
    iget-object v3, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    if-eqz v3, :cond_1

    .line 608
    iget-object v3, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/LetterSectionsListView;->getChildCount()I

    move-result v2

    .line 609
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 610
    iget-object v3, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/LetterSectionsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 611
    .local v1, "child":Landroid/view/View;
    instance-of v3, v1, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v3, :cond_0

    .line 612
    check-cast v1, Lorg/telegram/ui/Cells/UserCell;

    .end local v1    # "child":Landroid/view/View;
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Cells/UserCell;->update(I)V

    .line 609
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 616
    .end local v0    # "a":I
    .end local v2    # "count":I
    :cond_1
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->searching:Z

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->searchWas:Z

    .line 178
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f020143

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 180
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 181
    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->destroyAfterSelect:Z

    if-eqz v0, :cond_3

    .line 182
    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->returnAsResult:Z

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "SelectContact"

    const v2, 0x7f070448

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 195
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ContactsActivity$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ContactsActivity$1;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v12

    .line 207
    .local v12, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->destroyAfterSelect:Z

    if-nez v0, :cond_0

    .line 208
    const/4 v0, 0x1

    const v1, 0x7f020150

    invoke-virtual {v12, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 210
    :cond_0
    const/4 v0, 0x0

    const v1, 0x7f020141

    invoke-virtual {v12, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ContactsActivity$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ContactsActivity$2;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v9

    .line 251
    .local v9, "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, "Search"

    const v2, 0x7f070435

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 253
    new-instance v0, Lorg/telegram/ui/Adapters/SearchAdapter;

    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity;->ignoreUsers:Ljava/util/HashMap;

    iget-boolean v3, p0, Lorg/telegram/ui/ContactsActivity;->allowUsernameSearch:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-boolean v6, p0, Lorg/telegram/ui/ContactsActivity;->allowBots:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Adapters/SearchAdapter;-><init>(Landroid/content/Context;Ljava/util/HashMap;ZZZZ)V

    iput-object v0, p0, Lorg/telegram/ui/ContactsActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

    .line 254
    new-instance v0, Lorg/telegram/ui/Adapters/ContactsAdapter;

    iget-boolean v1, p0, Lorg/telegram/ui/ContactsActivity;->onlyUsers:Z

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    :goto_1
    iget-boolean v3, p0, Lorg/telegram/ui/ContactsActivity;->needPhonebook:Z

    iget-object v4, p0, Lorg/telegram/ui/ContactsActivity;->ignoreUsers:Ljava/util/HashMap;

    iget v1, p0, Lorg/telegram/ui/ContactsActivity;->chat_id:I

    if-eqz v1, :cond_5

    const/4 v5, 0x1

    :goto_2
    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Adapters/ContactsAdapter;-><init>(Landroid/content/Context;IZLjava/util/HashMap;Z)V

    iput-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    .line 256
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ContactsActivity;->fragmentView:Landroid/view/View;

    .line 258
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 259
    .local v7, "emptyTextLayout":Landroid/widget/LinearLayout;
    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 260
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 261
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 262
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 263
    .local v10, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v0, -0x1

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 264
    const/4 v0, -0x1

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 265
    const/16 v0, 0x30

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 266
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    new-instance v0, Lorg/telegram/ui/ContactsActivity$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ContactsActivity$3;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 274
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ContactsActivity;->emptyTextView:Landroid/widget/TextView;

    .line 276
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->emptyTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getSuperTypeFace()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 277
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->emptyTextView:Landroid/widget/TextView;

    const v1, -0x7f7f80

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 278
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->emptyTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 279
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->emptyTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 280
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->emptyTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "NoContacts"

    const v2, 0x7f070334

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 282
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 283
    .local v11, "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v0, -0x1

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 284
    const/4 v0, -0x1

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 285
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 286
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 289
    .local v8, "frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 290
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .end local v11    # "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 291
    .restart local v11    # "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v0, -0x1

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 292
    const/4 v0, -0x1

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 293
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 294
    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    new-instance v0, Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/LetterSectionsListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    .line 297
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/LetterSectionsListView;->setEmptyView(Landroid/view/View;)V

    .line 298
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LetterSectionsListView;->setVerticalScrollBarEnabled(Z)V

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LetterSectionsListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 300
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LetterSectionsListView;->setDividerHeight(I)V

    .line 301
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LetterSectionsListView;->setFastScrollEnabled(Z)V

    .line 302
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LetterSectionsListView;->setScrollBarStyle(I)V

    .line 303
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LetterSectionsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 304
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LetterSectionsListView;->setFastScrollAlwaysVisible(Z)V

    .line 305
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/LetterSectionsListView;->setVerticalScrollbarPosition(I)V

    .line 306
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 307
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LetterSectionsListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .end local v10    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 308
    .restart local v10    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v0, -0x1

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 309
    const/4 v0, -0x1

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 310
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/LetterSectionsListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    new-instance v1, Lorg/telegram/ui/ContactsActivity$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ContactsActivity$4;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LetterSectionsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 451
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    new-instance v1, Lorg/telegram/ui/ContactsActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ContactsActivity$5;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LetterSectionsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 467
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->fragmentView:Landroid/view/View;

    return-object v0

    .line 185
    .end local v7    # "emptyTextLayout":Landroid/widget/LinearLayout;
    .end local v8    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v9    # "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .end local v10    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    .end local v12    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "NewSecretChat"

    const v2, 0x7f07032d

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 188
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "NewMessageTitle"

    const v2, 0x7f070326

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 192
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "Contacts"

    const v2, 0x7f07017b

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 254
    .restart local v9    # "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .restart local v12    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 305
    .restart local v7    # "emptyTextLayout":Landroid/widget/LinearLayout;
    .restart local v8    # "frameLayout":Landroid/widget/FrameLayout;
    .restart local v10    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v11    # "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    const/4 v0, 0x2

    goto :goto_3
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 582
    sget v3, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    if-ne p1, v3, :cond_1

    .line 583
    iget-object v3, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    if-eqz v3, :cond_0

    .line 584
    iget-object v3, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->notifyDataSetChanged()V

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    sget v3, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, v3, :cond_3

    .line 587
    aget-object v3, p2, v5

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 588
    .local v2, "mask":I
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_2

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_2

    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_0

    .line 589
    :cond_2
    invoke-direct {p0, v2}, Lorg/telegram/ui/ContactsActivity;->updateVisibleRows(I)V

    goto :goto_0

    .line 591
    .end local v2    # "mask":I
    :cond_3
    sget v3, Lorg/telegram/messenger/NotificationCenter;->encryptedChatCreated:I

    if-ne p1, v3, :cond_4

    .line 592
    iget-boolean v3, p0, Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lorg/telegram/ui/ContactsActivity;->creatingChat:Z

    if-eqz v3, :cond_0

    .line 593
    aget-object v1, p2, v5

    check-cast v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 594
    .local v1, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 595
    .local v0, "args2":Landroid/os/Bundle;
    const-string/jumbo v3, "enc_id"

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 596
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 597
    new-instance v3, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v3, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/telegram/ui/ContactsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_0

    .line 599
    .end local v0    # "args2":Landroid/os/Bundle;
    .end local v1    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    :cond_4
    sget v3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    if-ne p1, v3, :cond_0

    .line 600
    iget-boolean v3, p0, Lorg/telegram/ui/ContactsActivity;->creatingChat:Z

    if-nez v3, :cond_0

    .line 601
    invoke-virtual {p0}, Lorg/telegram/ui/ContactsActivity;->removeSelfFromStack()V

    goto :goto_0
.end method

.method public onFragmentCreate()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 104
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 105
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 106
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->encryptedChatCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 107
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 108
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->arguments:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lorg/telegram/ui/ContactsActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "onlyUsers"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->onlyUsers:Z

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->arguments:Landroid/os/Bundle;

    const-string/jumbo v1, "destroyAfterSelect"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->destroyAfterSelect:Z

    .line 111
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->arguments:Landroid/os/Bundle;

    const-string/jumbo v1, "returnAsResult"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->returnAsResult:Z

    .line 112
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->arguments:Landroid/os/Bundle;

    const-string/jumbo v1, "createSecretChat"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z

    .line 113
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->arguments:Landroid/os/Bundle;

    const-string/jumbo v1, "selectAlertString"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ContactsActivity;->selectAlertString:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->arguments:Landroid/os/Bundle;

    const-string/jumbo v1, "allowUsernameSearch"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->allowUsernameSearch:Z

    .line 115
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->arguments:Landroid/os/Bundle;

    const-string/jumbo v1, "needForwardCount"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->needForwardCount:Z

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->arguments:Landroid/os/Bundle;

    const-string/jumbo v1, "allowBots"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->allowBots:Z

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->arguments:Landroid/os/Bundle;

    const-string/jumbo v1, "chat_id"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ContactsActivity;->chat_id:I

    .line 122
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->checkInviteText()V

    .line 124
    return v3

    .line 119
    :cond_0
    iput-boolean v3, p0, Lorg/telegram/ui/ContactsActivity;->needPhonebook:Z

    goto :goto_0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 130
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 131
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 132
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->encryptedChatCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 133
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ContactsActivity;->delegate:Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;

    .line 135
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 574
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 575
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    .line 578
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 564
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 565
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->notifyDataSetChanged()V

    .line 569
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->updateColors()V

    .line 570
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;

    .prologue
    .line 619
    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity;->delegate:Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;

    .line 620
    return-void
.end method

.method public setIgnoreUsers(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 623
    .local p1, "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity;->ignoreUsers:Ljava/util/HashMap;

    .line 624
    return-void
.end method
