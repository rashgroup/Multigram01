.class Lorg/telegram/ui/DocumentSelectActivity$7;
.super Ljava/lang/Object;
.source "DocumentSelectActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DocumentSelectActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DocumentSelectActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DocumentSelectActivity;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
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
    .line 264
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-ltz p3, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/DocumentSelectActivity;->access$1000(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt p3, v4, :cond_1

    .line 335
    .end local p2    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 267
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/DocumentSelectActivity;->access$1000(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    .line 268
    .local v3, "item":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    iget-object v0, v3, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    .line 269
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_5

    .line 270
    iget v4, v3, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->icon:I

    const v5, 0x7f020182

    if-ne v4, v5, :cond_3

    .line 271
    iget-object v4, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->delegate:Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;
    invoke-static {v4}, Lorg/telegram/ui/DocumentSelectActivity;->access$700(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 272
    iget-object v4, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->delegate:Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;
    invoke-static {v4}, Lorg/telegram/ui/DocumentSelectActivity;->access$700(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;

    move-result-object v4

    invoke-interface {v4}, Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;->startDocumentSelectActivity()V

    .line 274
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/DocumentSelectActivity;->finishFragment(Z)V

    goto :goto_0

    .line 276
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->history:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/DocumentSelectActivity;->access$1600(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->history:Ljava/util/ArrayList;
    invoke-static {v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$1600(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;

    .line 277
    .local v2, "he":Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;
    iget-object v4, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v4}, Lorg/telegram/ui/DocumentSelectActivity;->access$1700(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    iget-object v5, v2, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v4, v2, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->dir:Ljava/io/File;

    if-eqz v4, :cond_4

    .line 279
    iget-object v4, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    iget-object v5, v2, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->dir:Ljava/io/File;

    # invokes: Lorg/telegram/ui/DocumentSelectActivity;->listFiles(Ljava/io/File;)Z
    invoke-static {v4, v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$200(Lorg/telegram/ui/DocumentSelectActivity;Ljava/io/File;)Z

    .line 283
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->listView:Landroid/widget/ListView;
    invoke-static {v4}, Lorg/telegram/ui/DocumentSelectActivity;->access$300(Lorg/telegram/ui/DocumentSelectActivity;)Landroid/widget/ListView;

    move-result-object v4

    iget v5, v2, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->scrollItem:I

    iget v6, v2, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->scrollOffset:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0

    .line 281
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # invokes: Lorg/telegram/ui/DocumentSelectActivity;->listRoots()V
    invoke-static {v4}, Lorg/telegram/ui/DocumentSelectActivity;->access$100(Lorg/telegram/ui/DocumentSelectActivity;)V

    goto :goto_1

    .line 285
    .end local v2    # "he":Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 286
    new-instance v2, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;

    iget-object v4, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;-><init>(Lorg/telegram/ui/DocumentSelectActivity;Lorg/telegram/ui/DocumentSelectActivity$1;)V

    .line 287
    .restart local v2    # "he":Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;
    iget-object v4, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->listView:Landroid/widget/ListView;
    invoke-static {v4}, Lorg/telegram/ui/DocumentSelectActivity;->access$300(Lorg/telegram/ui/DocumentSelectActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    iput v4, v2, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->scrollItem:I

    .line 288
    iget-object v4, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->listView:Landroid/widget/ListView;
    invoke-static {v4}, Lorg/telegram/ui/DocumentSelectActivity;->access$300(Lorg/telegram/ui/DocumentSelectActivity;)Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, v2, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->scrollOffset:I

    .line 289
    iget-object v4, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->currentDir:Ljava/io/File;
    invoke-static {v4}, Lorg/telegram/ui/DocumentSelectActivity;->access$000(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/io/File;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->dir:Ljava/io/File;

    .line 290
    iget-object v4, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v4}, Lorg/telegram/ui/DocumentSelectActivity;->access$1900(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitle()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->title:Ljava/lang/String;

    .line 291
    iget-object v4, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->history:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/DocumentSelectActivity;->access$1600(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v4, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # invokes: Lorg/telegram/ui/DocumentSelectActivity;->listFiles(Ljava/io/File;)Z
    invoke-static {v4, v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$200(Lorg/telegram/ui/DocumentSelectActivity;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 293
    iget-object v4, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->history:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/DocumentSelectActivity;->access$1600(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 296
    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v4}, Lorg/telegram/ui/DocumentSelectActivity;->access$2000(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    iget-object v5, v3, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v4, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->listView:Landroid/widget/ListView;
    invoke-static {v4}, Lorg/telegram/ui/DocumentSelectActivity;->access$300(Lorg/telegram/ui/DocumentSelectActivity;)Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_0

    .line 299
    .end local v2    # "he":Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;
    :cond_7
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_8

    .line 300
    iget-object v4, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    const-string/jumbo v5, "AccessError"

    const v6, 0x7f070041

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    # invokes: Lorg/telegram/ui/DocumentSelectActivity;->showErrorBox(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$1100(Lorg/telegram/ui/DocumentSelectActivity;Ljava/lang/String;)V

    .line 301
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    const-string/jumbo v4, "/mnt/sdcard"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    .restart local v0    # "file":Ljava/io/File;
    :cond_8
    iget-object v4, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->sizeLimit:J
    invoke-static {v4}, Lorg/telegram/ui/DocumentSelectActivity;->access$1200(Lorg/telegram/ui/DocumentSelectActivity;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_9

    .line 304
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-object v6, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->sizeLimit:J
    invoke-static {v6}, Lorg/telegram/ui/DocumentSelectActivity;->access$1200(Lorg/telegram/ui/DocumentSelectActivity;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_9

    .line 305
    iget-object v4, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    const-string/jumbo v5, "FileUploadLimit"

    const v6, 0x7f0701f6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->sizeLimit:J
    invoke-static {v9}, Lorg/telegram/ui/DocumentSelectActivity;->access$1200(Lorg/telegram/ui/DocumentSelectActivity;)J

    move-result-wide v10

    invoke-static {v10, v11}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    # invokes: Lorg/telegram/ui/DocumentSelectActivity;->showErrorBox(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$1100(Lorg/telegram/ui/DocumentSelectActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 309
    :cond_9
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 312
    iget-object v4, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v4}, Lorg/telegram/ui/DocumentSelectActivity;->access$2100(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 313
    iget-object v4, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->selectedFiles:Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/DocumentSelectActivity;->access$500(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 314
    iget-object v4, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->selectedFiles:Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/DocumentSelectActivity;->access$500(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->selectedFiles:Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/DocumentSelectActivity;->access$500(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 319
    iget-object v4, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v4}, Lorg/telegram/ui/DocumentSelectActivity;->access$2200(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 323
    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    const/4 v5, 0x0

    # setter for: Lorg/telegram/ui/DocumentSelectActivity;->scrolling:Z
    invoke-static {v4, v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$802(Lorg/telegram/ui/DocumentSelectActivity;Z)Z

    .line 324
    instance-of v4, p2, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v4, :cond_0

    .line 325
    check-cast p2, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->selectedFiles:Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/DocumentSelectActivity;->access$500(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, v3, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {p2, v4, v5}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    goto/16 :goto_0

    .line 316
    .restart local p2    # "view":Landroid/view/View;
    :cond_a
    iget-object v4, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->selectedFiles:Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/DocumentSelectActivity;->access$500(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 321
    :cond_b
    iget-object v4, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;
    invoke-static {v4}, Lorg/telegram/ui/DocumentSelectActivity;->access$1300(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->selectedFiles:Ljava/util/HashMap;
    invoke-static {v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$500(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    goto :goto_3

    .line 328
    :cond_c
    iget-object v4, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->delegate:Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;
    invoke-static {v4}, Lorg/telegram/ui/DocumentSelectActivity;->access$700(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 329
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v4, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->delegate:Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;
    invoke-static {v4}, Lorg/telegram/ui/DocumentSelectActivity;->access$700(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-interface {v4, v5, v1}, Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;->didSelectFiles(Lorg/telegram/ui/DocumentSelectActivity;Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method
