.class Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$Holder;
.super Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.source "PhotoFilterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;Landroid/view/View;)V
    .locals 0
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 2812
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$Holder;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    .line 2813
    invoke-direct {p0, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2814
    return-void
.end method
