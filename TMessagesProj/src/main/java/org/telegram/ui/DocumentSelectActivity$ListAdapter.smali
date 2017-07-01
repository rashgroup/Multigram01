.class Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;
.super Lorg/telegram/ui/Adapters/BaseFragmentAdapter;
.source "DocumentSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/DocumentSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/DocumentSelectActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/DocumentSelectActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 635
    iput-object p1, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseFragmentAdapter;-><init>()V

    .line 636
    iput-object p2, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 637
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$1000(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 646
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$1000(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 651
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 659
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$1000(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    iget-object v0, v0, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 664
    if-nez p2, :cond_0

    .line 665
    new-instance p2, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    move-object v7, p2

    .line 667
    check-cast v7, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 668
    .local v7, "textDetailCell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$1000(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    .line 669
    .local v6, "item":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    iget v0, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->icon:I

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 670
    check-cast v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    iget-object v1, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->title:Ljava/lang/String;

    iget-object v2, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    iget v5, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->icon:I

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setTextAndValueAndTypeAndThumb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 675
    :goto_0
    iget-object v0, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$2500(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 676
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->selectedFiles:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$500(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->scrolling:Z
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$800(Lorg/telegram/ui/DocumentSelectActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v8

    :goto_1
    invoke-virtual {v7, v1, v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    .line 680
    :goto_2
    return-object p2

    .line 672
    :cond_1
    iget-object v0, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->ext:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->ext:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .local v3, "type":Ljava/lang/String;
    move-object v0, p2

    .line 673
    check-cast v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    iget-object v1, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->title:Ljava/lang/String;

    iget-object v2, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    iget-object v4, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->thumb:Ljava/lang/String;

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setTextAndValueAndTypeAndThumb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .end local v3    # "type":Ljava/lang/String;
    :cond_2
    move v0, v9

    .line 676
    goto :goto_1

    .line 678
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->scrolling:Z
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$800(Lorg/telegram/ui/DocumentSelectActivity;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_3
    invoke-virtual {v7, v9, v8}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    goto :goto_2

    :cond_4
    move v8, v9

    goto :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 655
    const/4 v0, 0x2

    return v0
.end method
