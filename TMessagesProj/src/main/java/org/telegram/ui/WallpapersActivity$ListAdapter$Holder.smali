.class Lorg/telegram/ui/WallpapersActivity$ListAdapter$Holder;
.super Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.source "WallpapersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/WallpapersActivity$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/WallpapersActivity$ListAdapter;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/WallpapersActivity$ListAdapter;Landroid/view/View;)V
    .locals 0
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 481
    iput-object p1, p0, Lorg/telegram/ui/WallpapersActivity$ListAdapter$Holder;->this$1:Lorg/telegram/ui/WallpapersActivity$ListAdapter;

    .line 482
    invoke-direct {p0, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 483
    return-void
.end method
