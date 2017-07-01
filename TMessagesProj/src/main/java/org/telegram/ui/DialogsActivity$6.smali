.class Lorg/telegram/ui/DialogsActivity$6;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field final synthetic val$chatPassword:Ljava/lang/String;

.field final synthetic val$chatUnlocked:Z

.field final synthetic val$preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/SharedPreferences;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 586
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-object p2, p0, Lorg/telegram/ui/DialogsActivity$6;->val$preferences:Landroid/content/SharedPreferences;

    iput-boolean p3, p0, Lorg/telegram/ui/DialogsActivity$6;->val$chatUnlocked:Z

    iput-object p4, p0, Lorg/telegram/ui/DialogsActivity$6;->val$chatPassword:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .locals 20
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 589
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->onlySelect:Z
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$600(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->searching:Z
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$000(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->searchWas:Z
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_6

    .line 590
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->searchWas:Z
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->searching:Z
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$000(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 591
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v8

    .line 592
    .local v8, "adapter":Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v2

    if-ne v8, v2, :cond_5

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v14

    .line 594
    .local v14, "item":Ljava/lang/Object;
    instance-of v2, v14, Ljava/lang/String;

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 595
    :cond_4
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v9, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 596
    .local v9, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v2, "AppName"

    const v3, 0x7f07009a

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 597
    const-string/jumbo v2, "ClearSearch"

    const v3, 0x7f07016e

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 598
    const-string/jumbo v2, "ClearButton"

    const v3, 0x7f070168

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/DialogsActivity$6$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/DialogsActivity$6$1;-><init>(Lorg/telegram/ui/DialogsActivity$6;)V

    invoke-virtual {v9, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 608
    const-string/jumbo v2, "Cancel"

    const v3, 0x7f0700f2

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 610
    const/4 v2, 0x1

    .line 813
    .end local v8    # "adapter":Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    .end local v9    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v14    # "item":Ljava/lang/Object;
    :goto_0
    return v2

    .line 614
    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    .line 617
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # invokes: Lorg/telegram/ui/DialogsActivity;->getDialogsArray()Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2500(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v12

    .line 618
    .local v12, "dialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    if-ltz p2, :cond_7

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, p2

    if-lt v0, v2, :cond_8

    .line 619
    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    .line 621
    :cond_8
    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 622
    .local v11, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-wide v0, v11, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    # setter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v2, v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$2602(Lorg/telegram/ui/DialogsActivity;J)J

    .line 623
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->val$preferences:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "fav_"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    .line 624
    .local v4, "isFavorite":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->val$preferences:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "hide_"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    .line 626
    .local v5, "isHide":Z
    new-instance v9, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v9, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 627
    .local v9, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v16, v0

    .line 628
    .local v16, "lower_id":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    const/16 v18, 0x20

    shr-long v2, v2, v18

    long-to-int v13, v2

    .line 630
    .local v13, "high_id":I
    invoke-static {v11}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 631
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move/from16 v0, v16

    neg-int v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v10

    .line 633
    .local v10, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v10, :cond_d

    iget-boolean v2, v10, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_d

    .line 634
    const/4 v2, 0x5

    new-array v15, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string/jumbo v3, "MarkAsRead"

    const v18, 0x7f0702e0

    move/from16 v0, v18

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v15, v2

    const/4 v3, 0x1

    if-eqz v4, :cond_a

    const-string/jumbo v2, "RemoveFromFavorites"

    const v18, 0x7f070401

    move/from16 v0, v18

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    aput-object v2, v15, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/DialogsActivity$6;->val$chatUnlocked:Z

    if-eqz v2, :cond_b

    const-string/jumbo v2, "ShowChat"

    const v18, 0x7f070484

    move/from16 v0, v18

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    aput-object v2, v15, v3

    const/4 v2, 0x3

    const-string/jumbo v3, "ClearHistoryCache"

    const v18, 0x7f07016a

    move/from16 v0, v18

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v15, v2

    const/4 v3, 0x4

    if-eqz v10, :cond_9

    iget-boolean v2, v10, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v2, :cond_c

    :cond_9
    const-string/jumbo v2, "LeaveMegaMenu"

    const v18, 0x7f0702c0

    move/from16 v0, v18

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_3
    aput-object v2, v15, v3

    .line 646
    .local v15, "items":[Ljava/lang/CharSequence;
    :goto_4
    new-instance v2, Lorg/telegram/ui/DialogsActivity$6$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4, v5, v10}, Lorg/telegram/ui/DialogsActivity$6$2;-><init>(Lorg/telegram/ui/DialogsActivity$6;ZZLorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v9, v15, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 722
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 813
    .end local v10    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :goto_5
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 634
    .end local v15    # "items":[Ljava/lang/CharSequence;
    .restart local v10    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_a
    const-string/jumbo v2, "AddToFavorites"

    const v18, 0x7f07007b

    move/from16 v0, v18

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_b
    const-string/jumbo v2, "HideChat"

    const v18, 0x7f070263

    move/from16 v0, v18

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_c
    const-string/jumbo v2, "DeleteMegaMenu"

    const v18, 0x7f0701b0

    move/from16 v0, v18

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 640
    :cond_d
    const/4 v2, 0x5

    new-array v15, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string/jumbo v3, "MarkAsRead"

    const v18, 0x7f0702e0

    move/from16 v0, v18

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v15, v2

    const/4 v3, 0x1

    if-eqz v4, :cond_f

    const-string/jumbo v2, "RemoveFromFavorites"

    const v18, 0x7f070401

    move/from16 v0, v18

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_6
    aput-object v2, v15, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/DialogsActivity$6;->val$chatUnlocked:Z

    if-eqz v2, :cond_10

    const-string/jumbo v2, "ShowChat"

    const v18, 0x7f070484

    move/from16 v0, v18

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_7
    aput-object v2, v15, v3

    const/4 v2, 0x3

    const-string/jumbo v3, "ClearHistoryCache"

    const v18, 0x7f07016a

    move/from16 v0, v18

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v15, v2

    const/4 v3, 0x4

    if-eqz v10, :cond_e

    iget-boolean v2, v10, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v2, :cond_11

    :cond_e
    const-string/jumbo v2, "LeaveChannelMenu"

    const v18, 0x7f0702be

    move/from16 v0, v18

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_8
    aput-object v2, v15, v3

    .restart local v15    # "items":[Ljava/lang/CharSequence;
    goto/16 :goto_4

    .end local v15    # "items":[Ljava/lang/CharSequence;
    :cond_f
    const-string/jumbo v2, "AddToFavorites"

    const v18, 0x7f07007b

    move/from16 v0, v18

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_10
    const-string/jumbo v2, "HideChat"

    const v18, 0x7f070263

    move/from16 v0, v18

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_11
    const-string/jumbo v2, "ChannelDeleteMenu"

    const v18, 0x7f070117

    move/from16 v0, v18

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 724
    .end local v10    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_12
    if-gez v16, :cond_14

    const/4 v2, 0x1

    if-eq v13, v2, :cond_14

    const/4 v6, 0x1

    .line 725
    .local v6, "isChat":Z
    :goto_9
    const/16 v17, 0x0

    .line 726
    .local v17, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v6, :cond_13

    if-lez v16, :cond_13

    const/4 v2, 0x1

    if-eq v13, v2, :cond_13

    .line 727
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v17

    .line 729
    :cond_13
    if-eqz v17, :cond_15

    move-object/from16 v0, v17

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v2, :cond_15

    const/4 v7, 0x1

    .line 731
    .local v7, "isBot":Z
    :goto_a
    const/4 v2, 0x5

    new-array v15, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string/jumbo v3, "MarkAsRead"

    const v18, 0x7f0702e0

    move/from16 v0, v18

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v15, v2

    const/4 v3, 0x1

    if-eqz v4, :cond_16

    const-string/jumbo v2, "RemoveFromFavorites"

    const v18, 0x7f070401

    move/from16 v0, v18

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_b
    aput-object v2, v15, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/DialogsActivity$6;->val$chatUnlocked:Z

    if-eqz v2, :cond_17

    const-string/jumbo v2, "ShowChat"

    const v18, 0x7f070484

    move/from16 v0, v18

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_c
    aput-object v2, v15, v3

    const/4 v2, 0x3

    const-string/jumbo v3, "ClearHistory"

    const v18, 0x7f070169

    move/from16 v0, v18

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v15, v2

    const/4 v3, 0x4

    if-eqz v6, :cond_18

    const-string/jumbo v2, "DeleteChat"

    const v18, 0x7f0701a9

    move/from16 v0, v18

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_d
    aput-object v2, v15, v3

    .line 736
    .restart local v15    # "items":[Ljava/lang/CharSequence;
    new-instance v2, Lorg/telegram/ui/DialogsActivity$6$3;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/DialogsActivity$6$3;-><init>(Lorg/telegram/ui/DialogsActivity$6;ZZZZ)V

    invoke-virtual {v9, v15, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 811
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_5

    .line 724
    .end local v6    # "isChat":Z
    .end local v7    # "isBot":Z
    .end local v15    # "items":[Ljava/lang/CharSequence;
    .end local v17    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_14
    const/4 v6, 0x0

    goto/16 :goto_9

    .line 729
    .restart local v6    # "isChat":Z
    .restart local v17    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_15
    const/4 v7, 0x0

    goto :goto_a

    .line 731
    .restart local v7    # "isBot":Z
    :cond_16
    const-string/jumbo v2, "AddToFavorites"

    const v18, 0x7f07007b

    move/from16 v0, v18

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_17
    const-string/jumbo v2, "HideChat"

    const v18, 0x7f070263

    move/from16 v0, v18

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :cond_18
    if-eqz v7, :cond_19

    const-string/jumbo v2, "DeleteAndStop"

    const v18, 0x7f0701a7

    move/from16 v0, v18

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    :cond_19
    const-string/jumbo v2, "Delete"

    const v18, 0x7f0701a0

    move/from16 v0, v18

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_d
.end method
