.class Lorg/telegram/ui/WallpapersActivity$ListAdapter;
.super Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
.source "WallpapersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/WallpapersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/WallpapersActivity$ListAdapter$Holder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/WallpapersActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/WallpapersActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 488
    iput-object p1, p0, Lorg/telegram/ui/WallpapersActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersActivity;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;-><init>()V

    .line 489
    iput-object p2, p0, Lorg/telegram/ui/WallpapersActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 490
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # getter for: Lorg/telegram/ui/WallpapersActivity;->wallPapers:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/WallpapersActivity;->access$400(Lorg/telegram/ui/WallpapersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 499
    int-to-long v0, p1

    return-wide v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "i"    # I

    .prologue
    .line 510
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/WallpaperCell;

    if-nez p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # getter for: Lorg/telegram/ui/WallpapersActivity;->selectedBackground:I
    invoke-static {v2}, Lorg/telegram/ui/WallpapersActivity;->access$000(Lorg/telegram/ui/WallpapersActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/WallpaperCell;->setWallpaper(Lorg/telegram/tgnet/TLRPC$WallPaper;I)V

    .line 511
    return-void

    .line 510
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # getter for: Lorg/telegram/ui/WallpapersActivity;->wallPapers:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/WallpapersActivity;->access$400(Lorg/telegram/ui/WallpapersActivity;)Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$WallPaper;

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I

    .prologue
    .line 504
    new-instance v0, Lorg/telegram/ui/Cells/WallpaperCell;

    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/WallpaperCell;-><init>(Landroid/content/Context;)V

    .line 505
    .local v0, "view":Lorg/telegram/ui/Cells/WallpaperCell;
    new-instance v1, Lorg/telegram/ui/WallpapersActivity$ListAdapter$Holder;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/WallpapersActivity$ListAdapter$Holder;-><init>(Lorg/telegram/ui/WallpapersActivity$ListAdapter;Landroid/view/View;)V

    return-object v1
.end method
