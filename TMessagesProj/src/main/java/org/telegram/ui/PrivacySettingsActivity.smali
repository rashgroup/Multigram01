.class public Lorg/telegram/ui/PrivacySettingsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "PrivacySettingsActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;
    }
.end annotation


# instance fields
.field private blockedRow:I

.field private deleteAccountDetailRow:I

.field private deleteAccountRow:I

.field private deleteAccountSectionRow:I

.field private groupsDetailRow:I

.field private groupsRow:I

.field private lastSeenRow:I

.field private listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

.field private passcodeRow:I

.field private passwordRow:I

.field private privacySectionRow:I

.field private rowCount:I

.field private secretDetailRow:I

.field private secretSectionRow:I

.field private secretWebpageRow:I

.field private securitySectionRow:I

.field private sessionsDetailRow:I

.field private sessionsRow:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 295
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 46
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->blockedRow:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 46
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->sessionsRow:I

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PrivacySettingsActivity;Z)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/telegram/ui/PrivacySettingsActivity;->formatRulesString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 46
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountDetailRow:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 46
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretSectionRow:I

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 46
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->groupsDetailRow:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 46
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->sessionsDetailRow:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 46
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretDetailRow:I

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 46
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->privacySectionRow:I

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 46
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->securitySectionRow:I

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 46
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountSectionRow:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 46
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountRow:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 46
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->lastSeenRow:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 46
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->groupsRow:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 46
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passwordRow:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 46
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passcodeRow:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 46
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretWebpageRow:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 46
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    return v0
.end method

.method private formatRulesString(Z)Ljava/lang/String;
    .locals 12
    .param p1, "isGroup"    # Z

    .prologue
    const v9, 0x7f0702b8

    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 238
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v6

    invoke-virtual {v6, p1}, Lorg/telegram/messenger/ContactsController;->getPrivacyRules(Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 239
    .local v3, "privacyRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PrivacyRule;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 240
    const-string/jumbo v6, "LastSeenNobody"

    invoke-static {v6, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 284
    :goto_0
    return-object v6

    .line 242
    :cond_0
    const/4 v5, -0x1

    .line 243
    .local v5, "type":I
    const/4 v2, 0x0

    .line 244
    .local v2, "plus":I
    const/4 v1, 0x0

    .line 245
    .local v1, "minus":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_5

    .line 246
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PrivacyRule;

    .line 247
    .local v4, "rule":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    instance-of v6, v4, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;

    if-eqz v6, :cond_1

    .line 248
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$PrivacyRule;->users:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v2, v6

    .line 245
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 249
    :cond_1
    instance-of v6, v4, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;

    if-eqz v6, :cond_2

    .line 250
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$PrivacyRule;->users:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v1, v6

    goto :goto_2

    .line 251
    :cond_2
    instance-of v6, v4, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowAll;

    if-eqz v6, :cond_3

    .line 252
    const/4 v5, 0x0

    goto :goto_2

    .line 253
    :cond_3
    instance-of v6, v4, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowAll;

    if-eqz v6, :cond_4

    .line 254
    const/4 v5, 0x1

    goto :goto_2

    .line 256
    :cond_4
    const/4 v5, 0x2

    goto :goto_2

    .line 259
    .end local v4    # "rule":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    :cond_5
    if-eqz v5, :cond_6

    if-ne v5, v7, :cond_8

    if-lez v1, :cond_8

    .line 260
    :cond_6
    if-nez v1, :cond_7

    .line 261
    const-string/jumbo v6, "LastSeenEverybody"

    const v7, 0x7f0702a9

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 263
    :cond_7
    const-string/jumbo v6, "LastSeenEverybodyMinus"

    const v7, 0x7f0702aa

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 265
    :cond_8
    if-eq v5, v8, :cond_9

    if-ne v5, v7, :cond_d

    if-lez v1, :cond_d

    if-lez v2, :cond_d

    .line 266
    :cond_9
    if-nez v2, :cond_a

    if-nez v1, :cond_a

    .line 267
    const-string/jumbo v6, "LastSeenContacts"

    const v7, 0x7f0702a4

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 269
    :cond_a
    if-eqz v2, :cond_b

    if-eqz v1, :cond_b

    .line 270
    const-string/jumbo v6, "LastSeenContactsMinusPlus"

    const v7, 0x7f0702a6

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 271
    :cond_b
    if-eqz v1, :cond_c

    .line 272
    const-string/jumbo v6, "LastSeenContactsMinus"

    const v7, 0x7f0702a5

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 274
    :cond_c
    const-string/jumbo v6, "LastSeenContactsPlus"

    const v7, 0x7f0702a7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 277
    :cond_d
    if-eq v5, v10, :cond_e

    if-lez v2, :cond_10

    .line 278
    :cond_e
    if-nez v2, :cond_f

    .line 279
    const-string/jumbo v6, "LastSeenNobody"

    invoke-static {v6, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 281
    :cond_f
    const-string/jumbo v6, "LastSeenNobodyPlus"

    const v7, 0x7f0702b9

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 284
    :cond_10
    const-string/jumbo v6, "unknown"

    goto/16 :goto_0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 111
    iget-object v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v3, 0x7f020131

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 112
    iget-object v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 113
    iget-object v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "PrivacySettings"

    const v4, 0x7f0703f8

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/PrivacySettingsActivity$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/PrivacySettingsActivity$1;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 123
    new-instance v2, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    .line 125
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->fragmentView:Landroid/view/View;

    .line 126
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 127
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    const v2, -0xf0f10

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 129
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 130
    .local v1, "listView":Landroid/widget/ListView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 131
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 132
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 133
    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 134
    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    new-instance v2, Lorg/telegram/ui/PrivacySettingsActivity$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PrivacySettingsActivity$2;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 225
    iget-object v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->fragmentView:Landroid/view/View;

    return-object v2
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 230
    sget v0, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    if-ne p1, v0, :cond_0

    .line 231
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->notifyDataSetChanged()V

    .line 235
    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 70
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 72
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->loadPrivacySettings()V

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    .line 75
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->privacySectionRow:I

    .line 76
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->blockedRow:I

    .line 77
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->lastSeenRow:I

    .line 78
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->groupsRow:I

    .line 79
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->groupsDetailRow:I

    .line 80
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->securitySectionRow:I

    .line 81
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passcodeRow:I

    .line 82
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passwordRow:I

    .line 83
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->sessionsRow:I

    .line 84
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->sessionsDetailRow:I

    .line 85
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountSectionRow:I

    .line 86
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountRow:I

    .line 87
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountDetailRow:I

    .line 88
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    if-eq v0, v3, :cond_0

    .line 89
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretSectionRow:I

    .line 90
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretWebpageRow:I

    .line 91
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretDetailRow:I

    .line 98
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 100
    return v3

    .line 93
    :cond_0
    iput v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretSectionRow:I

    .line 94
    iput v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretWebpageRow:I

    .line 95
    iput v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretDetailRow:I

    goto :goto_0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 106
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 107
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 289
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 290
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->notifyDataSetChanged()V

    .line 293
    :cond_0
    return-void
.end method
