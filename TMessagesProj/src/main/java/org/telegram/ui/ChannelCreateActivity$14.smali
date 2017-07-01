.class Lorg/telegram/ui/ChannelCreateActivity$14;
.super Ljava/lang/Object;
.source "ChannelCreateActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelCreateActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelCreateActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelCreateActivity;)V
    .locals 0

    .prologue
    .line 754
    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity$14;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 14
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
    .line 758
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v11, p0, Lorg/telegram/ui/ChannelCreateActivity$14;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->searching:Z
    invoke-static {v11}, Lorg/telegram/ui/ChannelCreateActivity;->access$2500(Lorg/telegram/ui/ChannelCreateActivity;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lorg/telegram/ui/ChannelCreateActivity$14;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->searchWas:Z
    invoke-static {v11}, Lorg/telegram/ui/ChannelCreateActivity;->access$2600(Lorg/telegram/ui/ChannelCreateActivity;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 759
    iget-object v11, p0, Lorg/telegram/ui/ChannelCreateActivity$14;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;
    invoke-static {v11}, Lorg/telegram/ui/ChannelCreateActivity;->access$3000(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Adapters/SearchAdapter;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Lorg/telegram/ui/Adapters/SearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$User;

    .line 768
    .local v10, "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_0
    if-nez v10, :cond_2

    .line 825
    .end local v10    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local p2    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    return-void

    .line 761
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    iget-object v11, p0, Lorg/telegram/ui/ChannelCreateActivity$14;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;
    invoke-static {v11}, Lorg/telegram/ui/ChannelCreateActivity;->access$3200(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getSectionForPosition(I)I

    move-result v5

    .line 762
    .local v5, "section":I
    iget-object v11, p0, Lorg/telegram/ui/ChannelCreateActivity$14;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;
    invoke-static {v11}, Lorg/telegram/ui/ChannelCreateActivity;->access$3200(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getPositionInSectionForPosition(I)I

    move-result v4

    .line 763
    .local v4, "row":I
    if-ltz v4, :cond_0

    if-ltz v5, :cond_0

    .line 766
    iget-object v11, p0, Lorg/telegram/ui/ChannelCreateActivity$14;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;
    invoke-static {v11}, Lorg/telegram/ui/ChannelCreateActivity;->access$3200(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter;

    move-result-object v11

    invoke-virtual {v11, v5, v4}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$User;

    .restart local v10    # "user":Lorg/telegram/tgnet/TLRPC$User;
    goto :goto_0

    .line 772
    .end local v4    # "row":I
    .end local v5    # "section":I
    :cond_2
    const/4 v1, 0x1

    .line 773
    .local v1, "check":Z
    iget-object v11, p0, Lorg/telegram/ui/ChannelCreateActivity$14;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->selectedContacts:Ljava/util/HashMap;
    invoke-static {v11}, Lorg/telegram/ui/ChannelCreateActivity;->access$1300(Lorg/telegram/ui/ChannelCreateActivity;)Ljava/util/HashMap;

    move-result-object v11

    iget v12, v10, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 774
    const/4 v1, 0x0

    .line 776
    :try_start_0
    iget-object v11, p0, Lorg/telegram/ui/ChannelCreateActivity$14;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->selectedContacts:Ljava/util/HashMap;
    invoke-static {v11}, Lorg/telegram/ui/ChannelCreateActivity;->access$1300(Lorg/telegram/ui/ChannelCreateActivity;)Ljava/util/HashMap;

    move-result-object v11

    iget v12, v10, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/ChipSpan;

    .line 777
    .local v7, "span":Lorg/telegram/ui/Components/ChipSpan;
    iget-object v11, p0, Lorg/telegram/ui/ChannelCreateActivity$14;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->selectedContacts:Ljava/util/HashMap;
    invoke-static {v11}, Lorg/telegram/ui/ChannelCreateActivity;->access$1300(Lorg/telegram/ui/ChannelCreateActivity;)Ljava/util/HashMap;

    move-result-object v11

    iget v12, v10, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    new-instance v9, Landroid/text/SpannableStringBuilder;

    iget-object v11, p0, Lorg/telegram/ui/ChannelCreateActivity$14;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;
    invoke-static {v11}, Lorg/telegram/ui/ChannelCreateActivity;->access$300(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/widget/EditText;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 779
    .local v9, "text":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v9, v7}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v9, v7}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v9, v11, v12}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 780
    iget-object v11, p0, Lorg/telegram/ui/ChannelCreateActivity$14;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->allSpans:Ljava/util/ArrayList;
    invoke-static {v11}, Lorg/telegram/ui/ChannelCreateActivity;->access$2700(Lorg/telegram/ui/ChannelCreateActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 781
    iget-object v11, p0, Lorg/telegram/ui/ChannelCreateActivity$14;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    const/4 v12, 0x1

    # setter for: Lorg/telegram/ui/ChannelCreateActivity;->ignoreChange:Z
    invoke-static {v11, v12}, Lorg/telegram/ui/ChannelCreateActivity;->access$2202(Lorg/telegram/ui/ChannelCreateActivity;Z)Z

    .line 782
    iget-object v11, p0, Lorg/telegram/ui/ChannelCreateActivity$14;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;
    invoke-static {v11}, Lorg/telegram/ui/ChannelCreateActivity;->access$300(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/widget/EditText;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 783
    iget-object v11, p0, Lorg/telegram/ui/ChannelCreateActivity$14;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;
    invoke-static {v11}, Lorg/telegram/ui/ChannelCreateActivity;->access$300(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/widget/EditText;

    move-result-object v11

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setSelection(I)V

    .line 784
    iget-object v11, p0, Lorg/telegram/ui/ChannelCreateActivity$14;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    const/4 v12, 0x0

    # setter for: Lorg/telegram/ui/ChannelCreateActivity;->ignoreChange:Z
    invoke-static {v11, v12}, Lorg/telegram/ui/ChannelCreateActivity;->access$2202(Lorg/telegram/ui/ChannelCreateActivity;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    .end local v7    # "span":Lorg/telegram/ui/Components/ChipSpan;
    .end local v9    # "text":Landroid/text/SpannableStringBuilder;
    :cond_3
    :goto_2
    iget-object v11, p0, Lorg/telegram/ui/ChannelCreateActivity$14;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v11}, Lorg/telegram/ui/ChannelCreateActivity;->access$3400(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v11

    const-string/jumbo v12, "Members"

    iget-object v13, p0, Lorg/telegram/ui/ChannelCreateActivity$14;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->selectedContacts:Ljava/util/HashMap;
    invoke-static {v13}, Lorg/telegram/ui/ChannelCreateActivity;->access$1300(Lorg/telegram/ui/ChannelCreateActivity;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v13

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 800
    iget-object v11, p0, Lorg/telegram/ui/ChannelCreateActivity$14;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->searching:Z
    invoke-static {v11}, Lorg/telegram/ui/ChannelCreateActivity;->access$2500(Lorg/telegram/ui/ChannelCreateActivity;)Z

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, p0, Lorg/telegram/ui/ChannelCreateActivity$14;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->searchWas:Z
    invoke-static {v11}, Lorg/telegram/ui/ChannelCreateActivity;->access$2600(Lorg/telegram/ui/ChannelCreateActivity;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 801
    :cond_4
    iget-object v11, p0, Lorg/telegram/ui/ChannelCreateActivity$14;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    const/4 v12, 0x1

    # setter for: Lorg/telegram/ui/ChannelCreateActivity;->ignoreChange:Z
    invoke-static {v11, v12}, Lorg/telegram/ui/ChannelCreateActivity;->access$2202(Lorg/telegram/ui/ChannelCreateActivity;Z)Z

    .line 802
    new-instance v8, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v11, ""

    invoke-direct {v8, v11}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 803
    .local v8, "ssb":Landroid/text/SpannableStringBuilder;
    iget-object v11, p0, Lorg/telegram/ui/ChannelCreateActivity$14;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->allSpans:Ljava/util/ArrayList;
    invoke-static {v11}, Lorg/telegram/ui/ChannelCreateActivity;->access$2700(Lorg/telegram/ui/ChannelCreateActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/text/style/ImageSpan;

    .line 804
    .local v6, "sp":Landroid/text/style/ImageSpan;
    const-string/jumbo v11, "<<"

    invoke-virtual {v8, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 805
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x2

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    const/16 v13, 0x21

    invoke-virtual {v8, v6, v11, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 785
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "sp":Landroid/text/style/ImageSpan;
    .end local v8    # "ssb":Landroid/text/SpannableStringBuilder;
    :catch_0
    move-exception v2

    .line 786
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "tmessages"

    invoke-static {v11, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 789
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v11, p0, Lorg/telegram/ui/ChannelCreateActivity$14;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    const/4 v12, 0x1

    # setter for: Lorg/telegram/ui/ChannelCreateActivity;->ignoreChange:Z
    invoke-static {v11, v12}, Lorg/telegram/ui/ChannelCreateActivity;->access$2202(Lorg/telegram/ui/ChannelCreateActivity;Z)Z

    .line 790
    iget-object v11, p0, Lorg/telegram/ui/ChannelCreateActivity$14;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # invokes: Lorg/telegram/ui/ChannelCreateActivity;->createAndPutChipForUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/ui/Components/ChipSpan;
    invoke-static {v11, v10}, Lorg/telegram/ui/ChannelCreateActivity;->access$3300(Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/ui/Components/ChipSpan;

    move-result-object v7

    .line 791
    .restart local v7    # "span":Lorg/telegram/ui/Components/ChipSpan;
    if-eqz v7, :cond_6

    .line 792
    iget v11, v10, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iput v11, v7, Lorg/telegram/ui/Components/ChipSpan;->uid:I

    .line 794
    :cond_6
    iget-object v11, p0, Lorg/telegram/ui/ChannelCreateActivity$14;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    const/4 v12, 0x0

    # setter for: Lorg/telegram/ui/ChannelCreateActivity;->ignoreChange:Z
    invoke-static {v11, v12}, Lorg/telegram/ui/ChannelCreateActivity;->access$2202(Lorg/telegram/ui/ChannelCreateActivity;Z)Z

    .line 795
    if-nez v7, :cond_3

    goto/16 :goto_1

    .line 807
    .end local v7    # "span":Lorg/telegram/ui/Components/ChipSpan;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v8    # "ssb":Landroid/text/SpannableStringBuilder;
    :cond_7
    iget-object v11, p0, Lorg/telegram/ui/ChannelCreateActivity$14;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;
    invoke-static {v11}, Lorg/telegram/ui/ChannelCreateActivity;->access$300(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/widget/EditText;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 808
    iget-object v11, p0, Lorg/telegram/ui/ChannelCreateActivity$14;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;
    invoke-static {v11}, Lorg/telegram/ui/ChannelCreateActivity;->access$300(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/widget/EditText;

    move-result-object v11

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setSelection(I)V

    .line 809
    iget-object v11, p0, Lorg/telegram/ui/ChannelCreateActivity$14;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    const/4 v12, 0x0

    # setter for: Lorg/telegram/ui/ChannelCreateActivity;->ignoreChange:Z
    invoke-static {v11, v12}, Lorg/telegram/ui/ChannelCreateActivity;->access$2202(Lorg/telegram/ui/ChannelCreateActivity;Z)Z

    .line 811
    iget-object v11, p0, Lorg/telegram/ui/ChannelCreateActivity$14;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;
    invoke-static {v11}, Lorg/telegram/ui/ChannelCreateActivity;->access$3000(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Adapters/SearchAdapter;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Adapters/SearchAdapter;->searchDialogs(Ljava/lang/String;)V

    .line 812
    iget-object v11, p0, Lorg/telegram/ui/ChannelCreateActivity$14;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    const/4 v12, 0x0

    # setter for: Lorg/telegram/ui/ChannelCreateActivity;->searching:Z
    invoke-static {v11, v12}, Lorg/telegram/ui/ChannelCreateActivity;->access$2502(Lorg/telegram/ui/ChannelCreateActivity;Z)Z

    .line 813
    iget-object v11, p0, Lorg/telegram/ui/ChannelCreateActivity$14;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    const/4 v12, 0x0

    # setter for: Lorg/telegram/ui/ChannelCreateActivity;->searchWas:Z
    invoke-static {v11, v12}, Lorg/telegram/ui/ChannelCreateActivity;->access$2602(Lorg/telegram/ui/ChannelCreateActivity;Z)Z

    .line 814
    iget-object v11, p0, Lorg/telegram/ui/ChannelCreateActivity$14;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v11}, Lorg/telegram/ui/ChannelCreateActivity;->access$2900(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v11

    iget-object v12, p0, Lorg/telegram/ui/ChannelCreateActivity$14;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;
    invoke-static {v12}, Lorg/telegram/ui/ChannelCreateActivity;->access$3200(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Components/LetterSectionsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 815
    iget-object v11, p0, Lorg/telegram/ui/ChannelCreateActivity$14;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;
    invoke-static {v11}, Lorg/telegram/ui/ChannelCreateActivity;->access$3200(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/ui/Adapters/ContactsAdapter;->notifyDataSetChanged()V

    .line 816
    iget-object v11, p0, Lorg/telegram/ui/ChannelCreateActivity$14;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v11}, Lorg/telegram/ui/ChannelCreateActivity;->access$2900(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Components/LetterSectionsListView;->setFastScrollAlwaysVisible(Z)V

    .line 817
    iget-object v11, p0, Lorg/telegram/ui/ChannelCreateActivity$14;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v11}, Lorg/telegram/ui/ChannelCreateActivity;->access$2900(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Components/LetterSectionsListView;->setFastScrollEnabled(Z)V

    .line 818
    iget-object v11, p0, Lorg/telegram/ui/ChannelCreateActivity$14;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v11}, Lorg/telegram/ui/ChannelCreateActivity;->access$2900(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Components/LetterSectionsListView;->setVerticalScrollBarEnabled(Z)V

    .line 819
    iget-object v11, p0, Lorg/telegram/ui/ChannelCreateActivity$14;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->emptyTextView:Landroid/widget/TextView;
    invoke-static {v11}, Lorg/telegram/ui/ChannelCreateActivity;->access$3100(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/widget/TextView;

    move-result-object v11

    const-string/jumbo v12, "NoContacts"

    const v13, 0x7f070334

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 821
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v8    # "ssb":Landroid/text/SpannableStringBuilder;
    :cond_8
    move-object/from16 v0, p2

    instance-of v11, v0, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v11, :cond_0

    .line 822
    check-cast p2, Lorg/telegram/ui/Cells/UserCell;

    .end local p2    # "view":Landroid/view/View;
    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v11}, Lorg/telegram/ui/Cells/UserCell;->setChecked(ZZ)V

    goto/16 :goto_1
.end method
