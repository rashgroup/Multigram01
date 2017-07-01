.class public Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;
.super Landroid/widget/BaseAdapter;
.source "DrawerLayoutAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 62
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x1

    .line 127
    if-nez p1, :cond_1

    .line 128
    const/4 v0, 0x0

    .line 134
    :cond_0
    :goto_0
    return v0

    .line 129
    :cond_1
    if-eq p1, v0, :cond_0

    .line 131
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 132
    const/4 v0, 0x2

    goto :goto_0

    .line 134
    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const v5, 0x7f0201da

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 72
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->getItemViewType(I)I

    move-result v1

    .line 73
    .local v1, "type":I
    if-nez v1, :cond_2

    .line 74
    if-nez p2, :cond_0

    .line 75
    new-instance p2, Lorg/telegram/ui/Cells/DrawerProfileCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v2}, Lorg/telegram/ui/Cells/DrawerProfileCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_0
    move-object v2, p2

    .line 77
    check-cast v2, Lorg/telegram/ui/Cells/DrawerProfileCell;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/DrawerProfileCell;->setUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 122
    :cond_1
    :goto_0
    return-object p2

    .line 78
    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 79
    if-nez p2, :cond_1

    .line 80
    new-instance p2, Lorg/telegram/ui/Cells/EmptyCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->mContext:Landroid/content/Context;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-direct {p2, v2, v3}, Lorg/telegram/ui/Cells/EmptyCell;-><init>(Landroid/content/Context;I)V

    .restart local p2    # "view":Landroid/view/View;
    goto :goto_0

    .line 82
    :cond_3
    if-ne v1, v3, :cond_4

    .line 83
    if-nez p2, :cond_1

    .line 84
    new-instance p2, Lorg/telegram/ui/Cells/DividerCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v2}, Lorg/telegram/ui/Cells/DividerCell;-><init>(Landroid/content/Context;)V

    .line 85
    .restart local p2    # "view":Landroid/view/View;
    const-string/jumbo v2, "theme_drawer_divider_color"

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 87
    :cond_4
    if-ne v1, v4, :cond_1

    .line 88
    if-nez p2, :cond_5

    .line 89
    new-instance p2, Lorg/telegram/ui/Cells/DrawerActionCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v2}, Lorg/telegram/ui/Cells/DrawerActionCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_5
    move-object v0, p2

    .line 91
    check-cast v0, Lorg/telegram/ui/Cells/DrawerActionCell;

    .line 93
    .local v0, "actionCell":Lorg/telegram/ui/Cells/DrawerActionCell;
    if-ne p1, v3, :cond_6

    .line 94
    const-string/jumbo v2, "NewGroup"

    const v3, 0x7f070325

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0201d3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/DrawerActionCell;->setTextAndIcon(Ljava/lang/String;I)V

    goto :goto_0

    .line 95
    :cond_6
    if-ne p1, v4, :cond_7

    .line 96
    const-string/jumbo v2, "NewSecretChat"

    const v3, 0x7f07032d

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0201d8

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/DrawerActionCell;->setTextAndIcon(Ljava/lang/String;I)V

    goto :goto_0

    .line 97
    :cond_7
    const/4 v2, 0x4

    if-ne p1, v2, :cond_8

    .line 98
    const-string/jumbo v2, "NewChannel"

    const v3, 0x7f070324

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0201c7

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/DrawerActionCell;->setTextAndIcon(Ljava/lang/String;I)V

    goto :goto_0

    .line 99
    :cond_8
    const/4 v2, 0x6

    if-ne p1, v2, :cond_9

    .line 100
    const-string/jumbo v2, "Contacts"

    const v3, 0x7f07017b

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0201c9

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/DrawerActionCell;->setTextAndIcon(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 101
    :cond_9
    const/4 v2, 0x7

    if-ne p1, v2, :cond_a

    .line 102
    const-string/jumbo v2, "OnlineContacs"

    const v3, 0x7f0703a2

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0201d5

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/DrawerActionCell;->setTextAndIcon(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 103
    :cond_a
    const/16 v2, 0x8

    if-ne p1, v2, :cond_b

    .line 104
    const-string/jumbo v2, "SpecialContacts"

    const v3, 0x7f0705bb

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0201d6

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/DrawerActionCell;->setTextAndIcon(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 105
    :cond_b
    const/16 v2, 0x9

    if-ne p1, v2, :cond_c

    .line 106
    const-string/jumbo v2, "UserChanges"

    const v3, 0x7f07063d

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0201dc

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/DrawerActionCell;->setTextAndIcon(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 107
    :cond_c
    const/16 v2, 0xa

    if-ne p1, v2, :cond_d

    .line 108
    const-string/jumbo v2, "IdFinder"

    const v3, 0x7f070270

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0201cf

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/DrawerActionCell;->setTextAndIcon(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 109
    :cond_d
    const/16 v2, 0xb

    if-ne p1, v2, :cond_e

    .line 110
    const-string/jumbo v2, "DownloadManager"

    const v3, 0x7f0705a2

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0201cb

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/DrawerActionCell;->setTextAndIcon(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 111
    :cond_e
    const/16 v2, 0xc

    if-ne p1, v2, :cond_f

    .line 112
    const-string/jumbo v2, "InviteFriends"

    const v3, 0x7f070283

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0201d1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/DrawerActionCell;->setTextAndIcon(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 113
    :cond_f
    const/16 v2, 0xd

    if-ne p1, v2, :cond_10

    .line 114
    const-string/jumbo v2, "Settings"

    const v3, 0x7f07046d

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/Cells/DrawerActionCell;->setTextAndIcon(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 115
    :cond_10
    const/16 v2, 0xe

    if-ne p1, v2, :cond_11

    .line 116
    const-string/jumbo v2, "ApoSettings"

    const v3, 0x7f0704cc

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/Cells/DrawerActionCell;->setTextAndIcon(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 117
    :cond_11
    const/16 v2, 0xf

    if-ne p1, v2, :cond_1

    .line 118
    const-string/jumbo v2, "TelegramFaq"

    const v3, 0x7f0704b3

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0201cd

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/DrawerActionCell;->setTextAndIcon(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x4

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 144
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x1

    .line 46
    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
