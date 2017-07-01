.class Lorg/telegram/ui/GroupCreateActivity$4;
.super Ljava/lang/Object;
.source "GroupCreateActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCreateActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupCreateActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCreateActivity;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 18
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 376
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->searching:Z
    invoke-static {v12}, Lorg/telegram/ui/GroupCreateActivity;->access$900(Lorg/telegram/ui/GroupCreateActivity;)Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->searchWas:Z
    invoke-static {v12}, Lorg/telegram/ui/GroupCreateActivity;->access$1000(Lorg/telegram/ui/GroupCreateActivity;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 377
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;
    invoke-static {v12}, Lorg/telegram/ui/GroupCreateActivity;->access$1500(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Adapters/SearchAdapter;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Adapters/SearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$User;

    .line 386
    .local v11, "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_0
    if-nez v11, :cond_2

    .line 451
    .end local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local p2    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    return-void

    .line 379
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;
    invoke-static {v12}, Lorg/telegram/ui/GroupCreateActivity;->access$1700(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getSectionForPosition(I)I

    move-result v6

    .line 380
    .local v6, "section":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;
    invoke-static {v12}, Lorg/telegram/ui/GroupCreateActivity;->access$1700(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getPositionInSectionForPosition(I)I

    move-result v5

    .line 381
    .local v5, "row":I
    if-ltz v5, :cond_0

    if-ltz v6, :cond_0

    .line 384
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;
    invoke-static {v12}, Lorg/telegram/ui/GroupCreateActivity;->access$1700(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter;

    move-result-object v12

    invoke-virtual {v12, v6, v5}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$User;

    .restart local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    goto :goto_0

    .line 390
    .end local v5    # "row":I
    .end local v6    # "section":I
    :cond_2
    const/4 v2, 0x1

    .line 391
    .local v2, "check":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Ljava/util/HashMap;
    invoke-static {v12}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Ljava/util/HashMap;

    move-result-object v12

    iget v13, v11, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 392
    const/4 v2, 0x0

    .line 394
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Ljava/util/HashMap;
    invoke-static {v12}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Ljava/util/HashMap;

    move-result-object v12

    iget v13, v11, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Components/ChipSpan;

    .line 395
    .local v8, "span":Lorg/telegram/ui/Components/ChipSpan;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Ljava/util/HashMap;
    invoke-static {v12}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Ljava/util/HashMap;

    move-result-object v12

    iget v13, v11, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    new-instance v10, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->userSelectEditText:Landroid/widget/EditText;
    invoke-static {v12}, Lorg/telegram/ui/GroupCreateActivity;->access$700(Lorg/telegram/ui/GroupCreateActivity;)Landroid/widget/EditText;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-direct {v10, v12}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 397
    .local v10, "text":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v10, v8}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v10, v8}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    invoke-virtual {v10, v12, v13}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 398
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->allSpans:Ljava/util/ArrayList;
    invoke-static {v12}, Lorg/telegram/ui/GroupCreateActivity;->access$1100(Lorg/telegram/ui/GroupCreateActivity;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 399
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    const/4 v13, 0x1

    # setter for: Lorg/telegram/ui/GroupCreateActivity;->ignoreChange:Z
    invoke-static {v12, v13}, Lorg/telegram/ui/GroupCreateActivity;->access$502(Lorg/telegram/ui/GroupCreateActivity;Z)Z

    .line 400
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->userSelectEditText:Landroid/widget/EditText;
    invoke-static {v12}, Lorg/telegram/ui/GroupCreateActivity;->access$700(Lorg/telegram/ui/GroupCreateActivity;)Landroid/widget/EditText;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->userSelectEditText:Landroid/widget/EditText;
    invoke-static {v12}, Lorg/telegram/ui/GroupCreateActivity;->access$700(Lorg/telegram/ui/GroupCreateActivity;)Landroid/widget/EditText;

    move-result-object v12

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setSelection(I)V

    .line 402
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    const/4 v13, 0x0

    # setter for: Lorg/telegram/ui/GroupCreateActivity;->ignoreChange:Z
    invoke-static {v12, v13}, Lorg/telegram/ui/GroupCreateActivity;->access$502(Lorg/telegram/ui/GroupCreateActivity;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    .end local v8    # "span":Lorg/telegram/ui/Components/ChipSpan;
    .end local v10    # "text":Landroid/text/SpannableStringBuilder;
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->isAlwaysShare:Z
    invoke-static {v12}, Lorg/telegram/ui/GroupCreateActivity;->access$100(Lorg/telegram/ui/GroupCreateActivity;)Z

    move-result v12

    if-nez v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->isNeverShare:Z
    invoke-static {v12}, Lorg/telegram/ui/GroupCreateActivity;->access$200(Lorg/telegram/ui/GroupCreateActivity;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 424
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v12}, Lorg/telegram/ui/GroupCreateActivity;->access$1900(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v12

    const-string/jumbo v13, "MembersCount"

    const v14, 0x7f0702ee

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Ljava/util/HashMap;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->size()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->maxCount:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/GroupCreateActivity;->access$1200(Lorg/telegram/ui/GroupCreateActivity;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 426
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->searching:Z
    invoke-static {v12}, Lorg/telegram/ui/GroupCreateActivity;->access$900(Lorg/telegram/ui/GroupCreateActivity;)Z

    move-result v12

    if-nez v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->searchWas:Z
    invoke-static {v12}, Lorg/telegram/ui/GroupCreateActivity;->access$1000(Lorg/telegram/ui/GroupCreateActivity;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 427
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    const/4 v13, 0x1

    # setter for: Lorg/telegram/ui/GroupCreateActivity;->ignoreChange:Z
    invoke-static {v12, v13}, Lorg/telegram/ui/GroupCreateActivity;->access$502(Lorg/telegram/ui/GroupCreateActivity;Z)Z

    .line 428
    new-instance v9, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v12, ""

    invoke-direct {v9, v12}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 429
    .local v9, "ssb":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->allSpans:Ljava/util/ArrayList;
    invoke-static {v12}, Lorg/telegram/ui/GroupCreateActivity;->access$1100(Lorg/telegram/ui/GroupCreateActivity;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/text/style/ImageSpan;

    .line 430
    .local v7, "sp":Landroid/text/style/ImageSpan;
    const-string/jumbo v12, "<<"

    invoke-virtual {v9, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 431
    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x2

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    const/16 v14, 0x21

    invoke-virtual {v9, v7, v12, v13, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 403
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "sp":Landroid/text/style/ImageSpan;
    .end local v9    # "ssb":Landroid/text/SpannableStringBuilder;
    :catch_0
    move-exception v3

    .line 404
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "tmessages"

    invoke-static {v12, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 407
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->maxCount:I
    invoke-static {v12}, Lorg/telegram/ui/GroupCreateActivity;->access$1200(Lorg/telegram/ui/GroupCreateActivity;)I

    move-result v12

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Ljava/util/HashMap;
    invoke-static {v12}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->maxCount:I
    invoke-static {v13}, Lorg/telegram/ui/GroupCreateActivity;->access$1200(Lorg/telegram/ui/GroupCreateActivity;)I

    move-result v13

    if-eq v12, v13, :cond_0

    .line 410
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->chatType:I
    invoke-static {v12}, Lorg/telegram/ui/GroupCreateActivity;->access$400(Lorg/telegram/ui/GroupCreateActivity;)I

    move-result v12

    if-nez v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Ljava/util/HashMap;
    invoke-static {v12}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    iget v13, v13, Lorg/telegram/messenger/MessagesController;->maxGroupCount:I

    add-int/lit8 v13, v13, -0x1

    if-ne v12, v13, :cond_7

    .line 411
    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/GroupCreateActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v1, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 412
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v12, "AppName"

    const v13, 0x7f07009a

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 413
    const-string/jumbo v12, "SoftUserLimitAlert"

    const v13, 0x7f070493

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 414
    const-string/jumbo v12, "OK"

    const v13, 0x7f07039f

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 415
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/GroupCreateActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 418
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    const/4 v13, 0x1

    # setter for: Lorg/telegram/ui/GroupCreateActivity;->ignoreChange:Z
    invoke-static {v12, v13}, Lorg/telegram/ui/GroupCreateActivity;->access$502(Lorg/telegram/ui/GroupCreateActivity;Z)Z

    .line 419
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # invokes: Lorg/telegram/ui/GroupCreateActivity;->createAndPutChipForUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/ui/Components/ChipSpan;
    invoke-static {v12, v11}, Lorg/telegram/ui/GroupCreateActivity;->access$1800(Lorg/telegram/ui/GroupCreateActivity;Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/ui/Components/ChipSpan;

    move-result-object v8

    .line 420
    .restart local v8    # "span":Lorg/telegram/ui/Components/ChipSpan;
    iget v12, v11, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iput v12, v8, Lorg/telegram/ui/Components/ChipSpan;->uid:I

    .line 421
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    const/4 v13, 0x0

    # setter for: Lorg/telegram/ui/GroupCreateActivity;->ignoreChange:Z
    invoke-static {v12, v13}, Lorg/telegram/ui/GroupCreateActivity;->access$502(Lorg/telegram/ui/GroupCreateActivity;Z)Z

    goto/16 :goto_2

    .line 433
    .end local v8    # "span":Lorg/telegram/ui/Components/ChipSpan;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v9    # "ssb":Landroid/text/SpannableStringBuilder;
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->userSelectEditText:Landroid/widget/EditText;
    invoke-static {v12}, Lorg/telegram/ui/GroupCreateActivity;->access$700(Lorg/telegram/ui/GroupCreateActivity;)Landroid/widget/EditText;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 434
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->userSelectEditText:Landroid/widget/EditText;
    invoke-static {v12}, Lorg/telegram/ui/GroupCreateActivity;->access$700(Lorg/telegram/ui/GroupCreateActivity;)Landroid/widget/EditText;

    move-result-object v12

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setSelection(I)V

    .line 435
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    const/4 v13, 0x0

    # setter for: Lorg/telegram/ui/GroupCreateActivity;->ignoreChange:Z
    invoke-static {v12, v13}, Lorg/telegram/ui/GroupCreateActivity;->access$502(Lorg/telegram/ui/GroupCreateActivity;Z)Z

    .line 437
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;
    invoke-static {v12}, Lorg/telegram/ui/GroupCreateActivity;->access$1500(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Adapters/SearchAdapter;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Adapters/SearchAdapter;->searchDialogs(Ljava/lang/String;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    const/4 v13, 0x0

    # setter for: Lorg/telegram/ui/GroupCreateActivity;->searching:Z
    invoke-static {v12, v13}, Lorg/telegram/ui/GroupCreateActivity;->access$902(Lorg/telegram/ui/GroupCreateActivity;Z)Z

    .line 439
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    const/4 v13, 0x0

    # setter for: Lorg/telegram/ui/GroupCreateActivity;->searchWas:Z
    invoke-static {v12, v13}, Lorg/telegram/ui/GroupCreateActivity;->access$1002(Lorg/telegram/ui/GroupCreateActivity;Z)Z

    .line 440
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v12}, Lorg/telegram/ui/GroupCreateActivity;->access$1400(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;
    invoke-static {v13}, Lorg/telegram/ui/GroupCreateActivity;->access$1700(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/LetterSectionsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;
    invoke-static {v12}, Lorg/telegram/ui/GroupCreateActivity;->access$1700(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/Adapters/ContactsAdapter;->notifyDataSetChanged()V

    .line 442
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v12}, Lorg/telegram/ui/GroupCreateActivity;->access$1400(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/LetterSectionsListView;->setFastScrollAlwaysVisible(Z)V

    .line 443
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v12}, Lorg/telegram/ui/GroupCreateActivity;->access$1400(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/LetterSectionsListView;->setFastScrollEnabled(Z)V

    .line 444
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v12}, Lorg/telegram/ui/GroupCreateActivity;->access$1400(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/LetterSectionsListView;->setVerticalScrollBarEnabled(Z)V

    .line 445
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->emptyTextView:Landroid/widget/TextView;
    invoke-static {v12}, Lorg/telegram/ui/GroupCreateActivity;->access$1600(Lorg/telegram/ui/GroupCreateActivity;)Landroid/widget/TextView;

    move-result-object v12

    const-string/jumbo v13, "NoContacts"

    const v14, 0x7f070334

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 447
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v9    # "ssb":Landroid/text/SpannableStringBuilder;
    :cond_9
    move-object/from16 v0, p2

    instance-of v12, v0, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v12, :cond_0

    .line 448
    check-cast p2, Lorg/telegram/ui/Cells/UserCell;

    .end local p2    # "view":Landroid/view/View;
    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v12}, Lorg/telegram/ui/Cells/UserCell;->setChecked(ZZ)V

    goto/16 :goto_1
.end method
