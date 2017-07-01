.class Lorg/telegram/ui/AudioSelectActivity$ListAdapter;
.super Lorg/telegram/ui/Adapters/BaseFragmentAdapter;
.source "AudioSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/AudioSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/AudioSelectActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/AudioSelectActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 277
    iput-object p1, p0, Lorg/telegram/ui/AudioSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseFragmentAdapter;-><init>()V

    .line 278
    iput-object p2, p0, Lorg/telegram/ui/AudioSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 279
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lorg/telegram/ui/AudioSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    # getter for: Lorg/telegram/ui/AudioSelectActivity;->audioEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/AudioSelectActivity;->access$300(Lorg/telegram/ui/AudioSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 298
    iget-object v0, p0, Lorg/telegram/ui/AudioSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    # getter for: Lorg/telegram/ui/AudioSelectActivity;->audioEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/AudioSelectActivity;->access$300(Lorg/telegram/ui/AudioSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 303
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 330
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Lorg/telegram/ui/AudioSelectActivity$ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 314
    .local v1, "type":I
    if-nez p2, :cond_0

    .line 315
    new-instance p2, Lorg/telegram/ui/Cells/AudioCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/AudioSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v2}, Lorg/telegram/ui/Cells/AudioCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    move-object v2, p2

    .line 316
    check-cast v2, Lorg/telegram/ui/Cells/AudioCell;

    new-instance v3, Lorg/telegram/ui/AudioSelectActivity$ListAdapter$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/AudioSelectActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/AudioSelectActivity$ListAdapter;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/AudioCell;->setDelegate(Lorg/telegram/ui/Cells/AudioCell$AudioCellDelegate;)V

    .line 323
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/AudioSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    # getter for: Lorg/telegram/ui/AudioSelectActivity;->audioEntries:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/AudioSelectActivity;->access$300(Lorg/telegram/ui/AudioSelectActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$AudioEntry;

    .local v0, "audioEntry":Lorg/telegram/messenger/MediaController$AudioEntry;
    move-object v2, p2

    .line 324
    check-cast v2, Lorg/telegram/ui/Cells/AudioCell;

    iget-object v3, p0, Lorg/telegram/ui/AudioSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    # getter for: Lorg/telegram/ui/AudioSelectActivity;->audioEntries:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/AudioSelectActivity;->access$300(Lorg/telegram/ui/AudioSelectActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MediaController$AudioEntry;

    iget-object v4, p0, Lorg/telegram/ui/AudioSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    # getter for: Lorg/telegram/ui/AudioSelectActivity;->audioEntries:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/AudioSelectActivity;->access$300(Lorg/telegram/ui/AudioSelectActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq p1, v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/AudioSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    # getter for: Lorg/telegram/ui/AudioSelectActivity;->selectedAudios:Ljava/util/HashMap;
    invoke-static {v5}, Lorg/telegram/ui/AudioSelectActivity;->access$000(Lorg/telegram/ui/AudioSelectActivity;)Ljava/util/HashMap;

    move-result-object v5

    iget-wide v6, v0, Lorg/telegram/messenger/MediaController$AudioEntry;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Cells/AudioCell;->setAudio(Lorg/telegram/messenger/MediaController$AudioEntry;ZZ)V

    .line 325
    return-object p2

    .line 324
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lorg/telegram/ui/AudioSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    # getter for: Lorg/telegram/ui/AudioSelectActivity;->audioEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/AudioSelectActivity;->access$300(Lorg/telegram/ui/AudioSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 288
    const/4 v0, 0x1

    return v0
.end method
