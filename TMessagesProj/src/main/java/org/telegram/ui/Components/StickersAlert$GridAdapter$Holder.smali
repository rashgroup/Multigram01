.class Lorg/telegram/ui/Components/StickersAlert$GridAdapter$Holder;
.super Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.source "StickersAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/StickersAlert$GridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;Landroid/view/View;)V
    .locals 0
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 589
    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter$Holder;->this$1:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    .line 590
    invoke-direct {p0, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 591
    return-void
.end method
