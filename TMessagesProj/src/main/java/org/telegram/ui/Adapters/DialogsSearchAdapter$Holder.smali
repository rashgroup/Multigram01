.class Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Holder;
.super Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.source "DialogsSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Landroid/view/View;)V
    .locals 0
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 76
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Holder;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .line 77
    invoke-direct {p0, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 78
    return-void
.end method
