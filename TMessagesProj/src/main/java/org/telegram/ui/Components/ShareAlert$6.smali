.class Lorg/telegram/ui/Components/ShareAlert$6;
.super Ljava/lang/Object;
.source "ShareAlert.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ZLorg/telegram/ui/Components/ChatActivityEnterView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ShareAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$6;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 9
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v8, 0x1

    .line 313
    if-eqz p2, :cond_1

    .line 314
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$6;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->tabDialogs:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$1600(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 315
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$6;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->tabDialogs:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$1600(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 316
    .local v3, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$6;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$1300(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/HashMap;

    move-result-object v4

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 317
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$6;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$1300(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/HashMap;

    move-result-object v4

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    .end local v0    # "a":I
    .end local v3    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$6;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->tabDialogs:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$1600(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 322
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$6;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->tabDialogs:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$1600(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 323
    .restart local v3    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$6;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$1300(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/HashMap;

    move-result-object v4

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 324
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$6;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$1300(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/HashMap;

    move-result-object v4

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 329
    .end local v3    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_3
    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$6;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    if-ge v0, v4, :cond_8

    .line 331
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$6;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ShareAlert$6;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;
    invoke-static {v5}, Lorg/telegram/ui/Components/ShareAlert;->access$600(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    move-result-object v5

    if-ne v4, v5, :cond_4

    .line 332
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$6;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;
    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$600(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$TL_dialog;

    move-result-object v3

    .line 336
    .restart local v3    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :goto_3
    if-nez v3, :cond_5

    .line 350
    .end local v3    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :goto_4
    return-void

    .line 334
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$6;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;
    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$500(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$TL_dialog;

    move-result-object v3

    .restart local v3    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    goto :goto_3

    .line 339
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$6;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 340
    .local v2, "child":Landroid/view/View;
    instance-of v4, v2, Lorg/telegram/ui/Cells/ShareDialogCell;

    if-eqz v4, :cond_6

    move-object v1, v2

    .line 341
    check-cast v1, Lorg/telegram/ui/Cells/ShareDialogCell;

    .line 342
    .local v1, "cell":Lorg/telegram/ui/Cells/ShareDialogCell;
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$6;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$1300(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/HashMap;

    move-result-object v4

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 343
    invoke-virtual {v1, v8, v8}, Lorg/telegram/ui/Cells/ShareDialogCell;->setChecked(ZZ)V

    .line 329
    .end local v1    # "cell":Lorg/telegram/ui/Cells/ShareDialogCell;
    :cond_6
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 345
    .restart local v1    # "cell":Lorg/telegram/ui/Cells/ShareDialogCell;
    :cond_7
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v8}, Lorg/telegram/ui/Cells/ShareDialogCell;->setChecked(ZZ)V

    goto :goto_5

    .line 349
    .end local v1    # "cell":Lorg/telegram/ui/Cells/ShareDialogCell;
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_8
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$6;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ShareAlert;->updateSelectedCount()V

    goto :goto_4
.end method
