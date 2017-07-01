.class public Lorg/telegram/ui/Adapters/ContactsAdapter;
.super Lorg/telegram/ui/Adapters/BaseSectionsAdapter;
.source "ContactsAdapter.java"


# instance fields
.field private checkedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "*>;"
        }
    .end annotation
.end field

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

.field private isAdmin:Z

.field private mContext:Landroid/content/Context;

.field private needPhonebook:Z

.field private onlyUsers:I

.field private scrolling:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IZLjava/util/HashMap;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onlyUsersType"    # I
    .param p3, "arg2"    # Z
    .param p5, "arg4"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p4, "arg3":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    .line 46
    iput p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    .line 47
    iput-boolean p3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    .line 48
    iput-object p4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->ignoreUsers:Ljava/util/HashMap;

    .line 49
    iput-boolean p5, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    .line 50
    return-void
.end method


# virtual methods
.method public getCountForSection(I)I
    .locals 6
    .param p1, "section"    # I

    .prologue
    const/4 v1, 0x2

    .line 138
    iget v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v4, v1, :cond_2

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v3, v4, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    .line 139
    .local v3, "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :goto_0
    iget v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v4, v1, :cond_3

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v2, v4, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    .line 141
    .local v2, "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    iget v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v4, :cond_4

    .line 142
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_7

    .line 143
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 144
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 145
    .local v1, "count":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_0

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz v4, :cond_1

    .line 146
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 169
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .end local v1    # "count":I
    :cond_1
    :goto_2
    return v1

    .line 138
    .end local v2    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v3, v4, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    goto :goto_0

    .line 139
    .restart local v3    # "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v2, v4, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    goto :goto_1

    .line 151
    .restart local v2    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    if-nez p1, :cond_5

    .line 152
    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v4, :cond_1

    .line 155
    const/4 v1, 0x4

    goto :goto_2

    .line 157
    :cond_5
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 158
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 159
    .restart local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 160
    .restart local v1    # "count":I
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_6

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz v4, :cond_1

    .line 161
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 166
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .end local v1    # "count":I
    :cond_7
    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz v4, :cond_8

    .line 167
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_2

    .line 169
    :cond_8
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public getItem(II)Ljava/lang/Object;
    .locals 6
    .param p1, "section"    # I
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    .line 62
    iget v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v4, v5, :cond_1

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v2, v4, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    .line 63
    .local v2, "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :goto_0
    iget v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v4, v5, :cond_2

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v1, v4, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    .line 65
    .local v1, "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    iget v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v4, :cond_3

    .line 66
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_0

    .line 67
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 68
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p2, v4, :cond_0

    .line 69
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 89
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    :cond_0
    :goto_2
    return-object v3

    .line 62
    .end local v1    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v2, v4, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    goto :goto_0

    .line 63
    .restart local v2    # "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v1, v4, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    goto :goto_1

    .line 74
    .restart local v1    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    if-eqz p1, :cond_0

    .line 77
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 78
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 79
    .restart local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p2, v4, :cond_0

    .line 80
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    goto :goto_2

    .line 86
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    :cond_4
    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz v4, :cond_0

    .line 87
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2
.end method

.method public getItemView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 24
    .param p1, "section"    # I
    .param p2, "position"    # I
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 200
    invoke-virtual/range {p0 .. p2}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getItemViewType(II)I

    move-result v17

    .line 201
    .local v17, "type":I
    const/16 v20, 0x4

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 202
    if-nez p3, :cond_0

    .line 203
    new-instance p3, Lorg/telegram/ui/Cells/DividerCell;

    .end local p3    # "convertView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/DividerCell;-><init>(Landroid/content/Context;)V

    .line 204
    .restart local p3    # "convertView":Landroid/view/View;
    sget-boolean v20, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v20, :cond_1

    const/high16 v20, 0x41e00000    # 28.0f

    :goto_0
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v21

    const/16 v22, 0x0

    sget-boolean v20, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v20, :cond_2

    const/high16 v20, 0x42900000    # 72.0f

    :goto_1
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v20

    const/16 v23, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v20

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 286
    :cond_0
    :goto_2
    return-object p3

    .line 204
    :cond_1
    const/high16 v20, 0x42900000    # 72.0f

    goto :goto_0

    :cond_2
    const/high16 v20, 0x41e00000    # 28.0f

    goto :goto_1

    .line 206
    :cond_3
    const/16 v20, 0x3

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 207
    if-nez p3, :cond_4

    .line 208
    new-instance p3, Lorg/telegram/ui/Cells/GreySectionCell;

    .end local p3    # "convertView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/GreySectionCell;-><init>(Landroid/content/Context;)V

    .restart local p3    # "convertView":Landroid/view/View;
    move-object/from16 v20, p3

    .line 209
    check-cast v20, Lorg/telegram/ui/Cells/GreySectionCell;

    const-string/jumbo v21, "Contacts"

    const v22, 0x7f07017b

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/ui/Cells/GreySectionCell;->setText(Ljava/lang/String;)V

    .line 212
    :cond_4
    sget-object v20, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v21, "ApoTheme"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 213
    .local v16, "themePreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v20, "theme_contact_list_tbgcolor"

    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getTabsBackgroundColor(Landroid/content/SharedPreferences;)I

    move-result v21

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 214
    .local v14, "tbgColor":I
    const-string/jumbo v20, "theme_contact_list_tcolor"

    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getDialogNameColor(Landroid/content/SharedPreferences;)I

    move-result v21

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .local v13, "tColor":I
    move-object/from16 v20, p3

    .line 215
    check-cast v20, Lorg/telegram/ui/Cells/GreySectionCell;

    move-object/from16 v0, v20

    invoke-virtual {v0, v13, v14}, Lorg/telegram/ui/Cells/GreySectionCell;->setTextAndBGColor(II)V

    goto :goto_2

    .line 216
    .end local v13    # "tColor":I
    .end local v14    # "tbgColor":I
    .end local v16    # "themePreferences":Landroid/content/SharedPreferences;
    :cond_5
    const/16 v20, 0x2

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 217
    if-nez p3, :cond_6

    .line 218
    new-instance p3, Lorg/telegram/ui/Cells/TextCell;

    .end local p3    # "convertView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .restart local p3    # "convertView":Landroid/view/View;
    :cond_6
    move-object/from16 v5, p3

    .line 220
    check-cast v5, Lorg/telegram/ui/Cells/TextCell;

    .line 221
    .local v5, "actionCell":Lorg/telegram/ui/Cells/TextCell;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 222
    const-string/jumbo v20, "InviteFriends"

    const v21, 0x7f070283

    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    const v21, 0x7f0201d0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;I)V

    .line 235
    :cond_7
    :goto_3
    sget-object v20, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v21, "ApoTheme"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 236
    .restart local v16    # "themePreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v20, "theme_contact_list_ncolor"

    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getDialogNameColor(Landroid/content/SharedPreferences;)I

    move-result v21

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 237
    .local v6, "actionColor":I
    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/TextCell;->setTextColor(I)V

    .line 238
    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/TextCell;->setIconColor(I)V

    goto/16 :goto_2

    .line 223
    .end local v6    # "actionColor":I
    .end local v16    # "themePreferences":Landroid/content/SharedPreferences;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 224
    const-string/jumbo v20, "InviteToGroupByLink"

    const v21, 0x7f070287

    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    const v21, 0x7f0201d0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;I)V

    goto :goto_3

    .line 226
    :cond_9
    if-nez p2, :cond_a

    .line 227
    const-string/jumbo v20, "NewGroup"

    const v21, 0x7f070325

    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    const v21, 0x7f0201d2

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;I)V

    goto :goto_3

    .line 228
    :cond_a
    const/16 v20, 0x1

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 229
    const-string/jumbo v20, "NewSecretChat"

    const v21, 0x7f07032d

    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    const v21, 0x7f0201d7

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;I)V

    goto :goto_3

    .line 230
    :cond_b
    const/16 v20, 0x2

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 231
    const-string/jumbo v20, "NewChannel"

    const v21, 0x7f070324

    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    const v21, 0x7f0201c6

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 239
    .end local v5    # "actionCell":Lorg/telegram/ui/Cells/TextCell;
    :cond_c
    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 240
    if-nez p3, :cond_d

    .line 241
    new-instance p3, Lorg/telegram/ui/Cells/TextCell;

    .end local p3    # "convertView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 243
    .restart local p3    # "convertView":Landroid/view/View;
    :cond_d
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/ContactsController$Contact;

    .local v8, "contact":Lorg/telegram/messenger/ContactsController$Contact;
    move-object/from16 v15, p3

    .line 244
    check-cast v15, Lorg/telegram/ui/Cells/TextCell;

    .line 245
    .local v15, "textCell":Lorg/telegram/ui/Cells/TextCell;
    iget-object v0, v8, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_e

    iget-object v0, v8, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_e

    .line 246
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v8, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v8, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;)V

    .line 253
    :goto_4
    sget-object v20, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v21, "ApoTheme"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 254
    .restart local v16    # "themePreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v20, "theme_contact_list_ncolor"

    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getDialogNameColor(Landroid/content/SharedPreferences;)I

    move-result v21

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 255
    .restart local v6    # "actionColor":I
    invoke-virtual {v15, v6}, Lorg/telegram/ui/Cells/TextCell;->setTextColor(I)V

    goto/16 :goto_2

    .line 247
    .end local v6    # "actionColor":I
    .end local v16    # "themePreferences":Landroid/content/SharedPreferences;
    :cond_e
    iget-object v0, v8, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_f

    iget-object v0, v8, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_f

    .line 248
    iget-object v0, v8, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;)V

    goto :goto_4

    .line 250
    :cond_f
    iget-object v0, v8, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;)V

    goto :goto_4

    .line 256
    .end local v8    # "contact":Lorg/telegram/messenger/ContactsController$Contact;
    .end local v15    # "textCell":Lorg/telegram/ui/Cells/TextCell;
    :cond_10
    if-nez v17, :cond_0

    .line 257
    if-nez p3, :cond_11

    .line 258
    new-instance p3, Lorg/telegram/ui/Cells/UserCell;

    .end local p3    # "convertView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x3a

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZ)V

    .line 261
    .restart local p3    # "convertView":Landroid/view/View;
    sget-object v20, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v21, "ApoTheme"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 262
    .restart local v16    # "themePreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v20, "theme_contact_list_ncolor"

    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getDialogNameColor(Landroid/content/SharedPreferences;)I

    move-result v21

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 263
    .local v9, "nColor":I
    const-string/jumbo v20, "theme_contact_list_scolor"

    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getDialogMessageColor(Landroid/content/SharedPreferences;)I

    move-result v21

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 264
    .local v11, "sColor":I
    const-string/jumbo v20, "theme_contact_list_oscolor"

    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getDialogMessageColor(Landroid/content/SharedPreferences;)I

    move-result v21

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .local v10, "osColor":I
    move-object/from16 v20, p3

    .line 265
    check-cast v20, Lorg/telegram/ui/Cells/UserCell;

    move-object/from16 v0, v20

    invoke-virtual {v0, v11, v10}, Lorg/telegram/ui/Cells/UserCell;->setStatusColors(II)V

    move-object/from16 v20, p3

    .line 266
    check-cast v20, Lorg/telegram/ui/Cells/UserCell;

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Cells/UserCell;->setNameTextColor(I)V

    .line 269
    .end local v9    # "nColor":I
    .end local v10    # "osColor":I
    .end local v11    # "sColor":I
    .end local v16    # "themePreferences":Landroid/content/SharedPreferences;
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_13

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    move-object/from16 v19, v0

    .line 270
    .local v19, "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_14

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v12, v0, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    .line 272
    .local v12, "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    move/from16 v20, v0

    if-eqz v20, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    move/from16 v20, v0

    if-nez v20, :cond_15

    const/16 v20, 0x0

    :goto_7
    sub-int v20, p1, v20

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 273
    .local v7, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v21

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/telegram/tgnet/TLRPC$TL_contact;

    move-object/from16 v0, v20

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v18

    .local v18, "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v20, p3

    .line 274
    check-cast v20, Lorg/telegram/ui/Cells/UserCell;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Cells/UserCell;->setData(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/ContactsAdapter;->checkedMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    if-eqz v20, :cond_12

    move-object/from16 v20, p3

    .line 276
    check-cast v20, Lorg/telegram/ui/Cells/UserCell;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/ContactsAdapter;->checkedMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Adapters/ContactsAdapter;->scrolling:Z

    move/from16 v21, v0

    if-nez v21, :cond_16

    const/16 v21, 0x1

    :goto_8
    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/UserCell;->setChecked(ZZ)V

    .line 278
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/ContactsAdapter;->ignoreUsers:Ljava/util/HashMap;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/ContactsAdapter;->ignoreUsers:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_17

    .line 280
    const/high16 v20, 0x3f000000    # 0.5f

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_2

    .line 269
    .end local v7    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .end local v12    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v19    # "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_13
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    move-object/from16 v19, v0

    goto/16 :goto_5

    .line 270
    .restart local v19    # "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_14
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v12, v0, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    goto/16 :goto_6

    .line 272
    .restart local v12    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_15
    const/16 v20, 0x1

    goto/16 :goto_7

    .line 276
    .restart local v7    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .restart local v18    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_16
    const/16 v21, 0x0

    goto :goto_8

    .line 282
    :cond_17
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_2
.end method

.method public getItemViewType(II)I
    .locals 9
    .param p1, "section"    # I
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    .line 291
    iget v8, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v8, v6, :cond_1

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v8

    iget-object v2, v8, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    .line 292
    .local v2, "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :goto_0
    iget v8, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v8, v6, :cond_2

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v8

    iget-object v1, v8, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    .line 293
    .local v1, "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    iget v8, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-eqz v8, :cond_4

    iget-boolean v8, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v8, :cond_4

    .line 294
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 295
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p2, v5, :cond_3

    .line 313
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    :cond_0
    :goto_2
    return v3

    .line 291
    .end local v1    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v8

    iget-object v2, v8, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    goto :goto_0

    .line 292
    .restart local v2    # "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v8

    iget-object v1, v8, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    goto :goto_1

    .restart local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .restart local v1    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    move v3, v4

    .line 295
    goto :goto_2

    .line 297
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    :cond_4
    if-nez p1, :cond_8

    .line 298
    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-eqz v3, :cond_6

    .line 299
    :cond_5
    if-ne p2, v7, :cond_7

    move v3, v5

    .line 300
    goto :goto_2

    .line 303
    :cond_6
    if-ne p2, v5, :cond_7

    move v3, v5

    .line 304
    goto :goto_2

    :cond_7
    move v3, v6

    .line 307
    goto :goto_2

    .line 308
    :cond_8
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_9

    .line 309
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 310
    .restart local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt p2, v5, :cond_0

    move v3, v4

    goto :goto_2

    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    :cond_9
    move v3, v7

    .line 313
    goto :goto_2
.end method

.method public getSectionCount()I
    .locals 4

    .prologue
    .line 122
    iget v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v1, v2, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    .line 123
    .local v1, "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 124
    .local v0, "count":I
    iget v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-nez v2, :cond_0

    .line 125
    add-int/lit8 v0, v0, 0x1

    .line 127
    :cond_0
    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-eqz v2, :cond_1

    .line 128
    add-int/lit8 v0, v0, 0x1

    .line 130
    :cond_1
    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz v2, :cond_2

    .line 131
    add-int/lit8 v0, v0, 0x1

    .line 133
    :cond_2
    return v0

    .line 122
    .end local v0    # "count":I
    .end local v1    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v1, v2, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "section"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x2

    .line 174
    iget v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v2, v3, :cond_1

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v1, v2, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    .line 175
    .local v1, "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :goto_0
    iget v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v2, v3, :cond_2

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v0, v2, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    .line 177
    .local v0, "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    if-nez p2, :cond_0

    .line 178
    new-instance p2, Lorg/telegram/ui/Cells/LetterSectionCell;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v2}, Lorg/telegram/ui/Cells/LetterSectionCell;-><init>(Landroid/content/Context;)V

    .line 180
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    iget v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v2, :cond_4

    .line 181
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_3

    move-object v2, p2

    .line 182
    check-cast v2, Lorg/telegram/ui/Cells/LetterSectionCell;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    .line 195
    :goto_2
    return-object p2

    .line 174
    .end local v0    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v1, v2, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    goto :goto_0

    .line 175
    .restart local v1    # "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v0, v2, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    goto :goto_1

    .restart local v0    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    move-object v2, p2

    .line 184
    check-cast v2, Lorg/telegram/ui/Cells/LetterSectionCell;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    goto :goto_2

    .line 187
    :cond_4
    if-nez p1, :cond_5

    move-object v2, p2

    .line 188
    check-cast v2, Lorg/telegram/ui/Cells/LetterSectionCell;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    goto :goto_2

    .line 189
    :cond_5
    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    move-object v2, p2

    .line 190
    check-cast v2, Lorg/telegram/ui/Cells/LetterSectionCell;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object v2, p2

    .line 192
    check-cast v2, Lorg/telegram/ui/Cells/LetterSectionCell;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x5

    return v0
.end method

.method public isRowEnabled(II)Z
    .locals 7
    .param p1, "section"    # I
    .param p2, "row"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 94
    iget v5, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v5, v6, :cond_1

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v5

    iget-object v2, v5, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    .line 95
    .local v2, "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :goto_0
    iget v5, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v5, v6, :cond_2

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v5

    iget-object v1, v5, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    .line 97
    .local v1, "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    iget v5, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v5, :cond_4

    .line 98
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 99
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p2, v5, :cond_3

    .line 117
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    :cond_0
    :goto_2
    return v3

    .line 94
    .end local v1    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v5

    iget-object v2, v5, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    goto :goto_0

    .line 95
    .restart local v2    # "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v5

    iget-object v1, v5, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    goto :goto_1

    .restart local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .restart local v1    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    move v3, v4

    .line 99
    goto :goto_2

    .line 101
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    :cond_4
    if-nez p1, :cond_7

    .line 102
    iget-boolean v5, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-eqz v5, :cond_6

    .line 103
    :cond_5
    if-ne p2, v3, :cond_0

    move v3, v4

    .line 104
    goto :goto_2

    .line 107
    :cond_6
    const/4 v5, 0x3

    if-ne p2, v5, :cond_0

    move v3, v4

    .line 108
    goto :goto_2

    .line 112
    :cond_7
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 113
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 114
    .restart local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt p2, v5, :cond_0

    move v3, v4

    goto :goto_2
.end method

.method public setCheckedMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;*>;"
    iput-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->checkedMap:Ljava/util/HashMap;

    .line 54
    return-void
.end method

.method public setIsScrolling(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->scrolling:Z

    .line 58
    return-void
.end method
