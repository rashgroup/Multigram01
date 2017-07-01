.class public Lorg/telegram/ui/PrivacyControlActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "PrivacyControlActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;,
        Lorg/telegram/ui/PrivacyControlActivity$LinkMovementMethodMy;
    }
.end annotation


# static fields
.field private static final done_button:I = 0x1


# instance fields
.field private alwaysShareRow:I

.field private currentMinus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private currentPlus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private currentType:I

.field private detailRow:I

.field private doneButton:Landroid/view/View;

.field private enableAnimation:Z

.field private everybodyRow:I

.field private isGroup:Z

.field private lastCheckedType:I

.field private listAdapter:Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;

.field private myContactsRow:I

.field private neverShareRow:I

.field private nobodyRow:I

.field private rowCount:I

.field private sectionRow:I

.field private shareDetailRow:I

.field private shareSectionRow:I


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "group"    # Z

    .prologue
    .line 93
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->lastCheckedType:I

    .line 94
    iput-boolean p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->isGroup:Z

    .line 95
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    return v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/PrivacyControlActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/PrivacyControlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 53
    iget-boolean v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->isGroup:Z

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->neverShareRow:I

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->alwaysShareRow:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/PrivacyControlActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/PrivacyControlActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 53
    iput-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/PrivacyControlActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/PrivacyControlActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 53
    iput-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->listAdapter:Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/PrivacyControlActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->showErrorAlert()V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->detailRow:I

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->shareDetailRow:I

    return v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->sectionRow:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/PrivacyControlActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->applyCurrentPrivacySettings()V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->shareSectionRow:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->nobodyRow:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->everybodyRow:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->myContactsRow:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/PrivacyControlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 53
    iget-boolean v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->enableAnimation:Z

    return v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/PrivacyControlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->enableAnimation:Z

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/PrivacyControlActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->doneButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 53
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->lastCheckedType:I

    return v0
.end method

.method static synthetic access$802(Lorg/telegram/ui/PrivacyControlActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->lastCheckedType:I

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/PrivacyControlActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->updateRows()V

    return-void
.end method

.method private applyCurrentPrivacySettings()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 274
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;-><init>()V

    .line 275
    .local v4, "req":Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;
    iget-boolean v7, p0, Lorg/telegram/ui/PrivacyControlActivity;->isGroup:Z

    if-eqz v7, :cond_1

    .line 276
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyChatInvite;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyChatInvite;-><init>()V

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    .line 280
    :goto_0
    iget v7, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    if-eqz v7, :cond_3

    iget-object v7, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 281
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;-><init>()V

    .line 282
    .local v5, "rule":Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v7, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 283
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v7, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v8, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    .line 284
    .local v6, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v6, :cond_0

    .line 285
    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    .line 286
    .local v1, "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    if-eqz v1, :cond_0

    .line 287
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    .end local v1    # "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 278
    .end local v0    # "a":I
    .end local v5    # "rule":Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;
    .end local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyStatusTimestamp;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyStatusTimestamp;-><init>()V

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    goto :goto_0

    .line 291
    .restart local v0    # "a":I
    .restart local v5    # "rule":Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;
    :cond_2
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;->rules:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    .end local v0    # "a":I
    .end local v5    # "rule":Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;
    :cond_3
    iget v7, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    if-eq v7, v10, :cond_6

    iget-object v7, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 294
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;-><init>()V

    .line 295
    .local v5, "rule":Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_2
    iget-object v7, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_5

    .line 296
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v7, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v8, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    .line 297
    .restart local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v6, :cond_4

    .line 298
    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    .line 299
    .restart local v1    # "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    if-eqz v1, :cond_4

    .line 300
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    .end local v1    # "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 304
    .end local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_5
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;->rules:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    .end local v0    # "a":I
    .end local v5    # "rule":Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;
    :cond_6
    iget v7, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    if-nez v7, :cond_9

    .line 307
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;->rules:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowAll;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowAll;-><init>()V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_7
    :goto_3
    const/4 v2, 0x0

    .line 314
    .local v2, "progressDialog":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lorg/telegram/ui/PrivacyControlActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 315
    new-instance v2, Landroid/app/ProgressDialog;

    .end local v2    # "progressDialog":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lorg/telegram/ui/PrivacyControlActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 316
    .restart local v2    # "progressDialog":Landroid/app/ProgressDialog;
    const-string/jumbo v7, "Loading"

    const v8, 0x7f0702d1

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 317
    invoke-virtual {v2, v9}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 318
    invoke-virtual {v2, v9}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 319
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 321
    :cond_8
    move-object v3, v2

    .line 322
    .local v3, "progressDialogFinal":Landroid/app/ProgressDialog;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/PrivacyControlActivity$3;

    invoke-direct {v8, p0, v3}, Lorg/telegram/ui/PrivacyControlActivity$3;-><init>(Lorg/telegram/ui/PrivacyControlActivity;Landroid/app/ProgressDialog;)V

    invoke-virtual {v7, v4, v8, v11}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 347
    return-void

    .line 308
    .end local v2    # "progressDialog":Landroid/app/ProgressDialog;
    .end local v3    # "progressDialogFinal":Landroid/app/ProgressDialog;
    :cond_9
    iget v7, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    if-ne v7, v10, :cond_a

    .line 309
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;->rules:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowAll;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowAll;-><init>()V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 310
    :cond_a
    iget v7, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    if-ne v7, v11, :cond_7

    .line 311
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;->rules:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowContacts;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowContacts;-><init>()V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private checkPrivacy()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 361
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    .line 362
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    .line 363
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-boolean v5, p0, Lorg/telegram/ui/PrivacyControlActivity;->isGroup:Z

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/ContactsController;->getPrivacyRules(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 364
    .local v1, "privacyRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PrivacyRule;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 365
    iput v7, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    .line 394
    :goto_0
    return-void

    .line 368
    :cond_0
    const/4 v3, -0x1

    .line 369
    .local v3, "type":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 370
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PrivacyRule;

    .line 371
    .local v2, "rule":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;

    if-eqz v4, :cond_1

    .line 372
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$PrivacyRule;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 369
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 373
    :cond_1
    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;

    if-eqz v4, :cond_2

    .line 374
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$PrivacyRule;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 375
    :cond_2
    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowAll;

    if-eqz v4, :cond_3

    .line 376
    const/4 v3, 0x0

    goto :goto_2

    .line 377
    :cond_3
    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowAll;

    if-eqz v4, :cond_4

    .line 378
    const/4 v3, 0x1

    goto :goto_2

    .line 380
    :cond_4
    const/4 v3, 0x2

    goto :goto_2

    .line 383
    .end local v2    # "rule":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    :cond_5
    if-eqz v3, :cond_6

    if-ne v3, v6, :cond_9

    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_9

    .line 384
    :cond_6
    const/4 v4, 0x0

    iput v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    .line 390
    :cond_7
    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->doneButton:Landroid/view/View;

    if-eqz v4, :cond_8

    .line 391
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->doneButton:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 393
    :cond_8
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->updateRows()V

    goto :goto_0

    .line 385
    :cond_9
    if-eq v3, v8, :cond_a

    if-ne v3, v6, :cond_b

    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_b

    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_b

    .line 386
    :cond_a
    iput v8, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    goto :goto_3

    .line 387
    :cond_b
    if-eq v3, v7, :cond_c

    if-ne v3, v6, :cond_7

    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 388
    :cond_c
    iput v7, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    goto :goto_3
.end method

.method private showErrorAlert()V
    .locals 3

    .prologue
    .line 350
    invoke-virtual {p0}, Lorg/telegram/ui/PrivacyControlActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 358
    :goto_0
    return-void

    .line 353
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/PrivacyControlActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 354
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v1, "AppName"

    const v2, 0x7f07009a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 355
    const-string/jumbo v1, "PrivacyFloodControlError"

    const v2, 0x7f0703f4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 356
    const-string/jumbo v1, "OK"

    const v2, 0x7f07039f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 357
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/PrivacyControlActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0
.end method

.method private updateRows()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, -0x1

    .line 397
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    .line 398
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->sectionRow:I

    .line 399
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->everybodyRow:I

    .line 400
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->myContactsRow:I

    .line 401
    iget-boolean v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->isGroup:Z

    if-eqz v0, :cond_3

    .line 402
    iput v2, p0, Lorg/telegram/ui/PrivacyControlActivity;->nobodyRow:I

    .line 406
    :goto_0
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->detailRow:I

    .line 407
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->shareSectionRow:I

    .line 408
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    if-ne v0, v3, :cond_4

    .line 409
    :cond_0
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->alwaysShareRow:I

    .line 413
    :goto_1
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    if-ne v0, v3, :cond_5

    .line 414
    :cond_1
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->neverShareRow:I

    .line 418
    :goto_2
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->shareDetailRow:I

    .line 419
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->listAdapter:Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;

    if-eqz v0, :cond_2

    .line 420
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->listAdapter:Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->notifyDataSetChanged()V

    .line 422
    :cond_2
    return-void

    .line 404
    :cond_3
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->nobodyRow:I

    goto :goto_0

    .line 411
    :cond_4
    iput v2, p0, Lorg/telegram/ui/PrivacyControlActivity;->alwaysShareRow:I

    goto :goto_1

    .line 416
    :cond_5
    iput v2, p0, Lorg/telegram/ui/PrivacyControlActivity;->neverShareRow:I

    goto :goto_2
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 114
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v5, 0x7f020131

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 115
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 116
    iget-boolean v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->isGroup:Z

    if-eqz v4, :cond_0

    .line 117
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "GroupsAndChannels"

    const v6, 0x7f07025d

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 121
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/PrivacyControlActivity$1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/PrivacyControlActivity$1;-><init>(Lorg/telegram/ui/PrivacyControlActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 159
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v3

    .line 160
    .local v3, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const v4, 0x7f020152

    const/high16 v5, 0x42600000    # 56.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v3, v7, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->doneButton:Landroid/view/View;

    .line 161
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->doneButton:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 163
    new-instance v4, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;-><init>(Lorg/telegram/ui/PrivacyControlActivity;Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->listAdapter:Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;

    .line 165
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->fragmentView:Landroid/view/View;

    .line 166
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 167
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    const v4, -0xf0f10

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 169
    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 170
    .local v2, "listView":Landroid/widget/ListView;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 171
    invoke-virtual {v2, v9}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 172
    invoke-virtual {v2, v9}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 173
    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 174
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 175
    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 176
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 177
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 178
    const/16 v4, 0x30

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 179
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->listAdapter:Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 181
    new-instance v4, Lorg/telegram/ui/PrivacyControlActivity$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/PrivacyControlActivity$2;-><init>(Lorg/telegram/ui/PrivacyControlActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 263
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->fragmentView:Landroid/view/View;

    return-object v4

    .line 119
    .end local v0    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "listView":Landroid/widget/ListView;
    .end local v3    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "PrivacyLastSeen"

    const v6, 0x7f0703f5

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 268
    sget v0, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    if-ne p1, v0, :cond_0

    .line 269
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->checkPrivacy()V

    .line 271
    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 100
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->checkPrivacy()V

    .line 101
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->updateRows()V

    .line 102
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 109
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 110
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 426
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 427
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->lastCheckedType:I

    .line 428
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->enableAnimation:Z

    .line 429
    return-void
.end method
