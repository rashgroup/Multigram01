.class Lorg/telegram/ui/Components/ShareAlert$SlidingTabView$1;
.super Ljava/lang/Object;
.source "ShareAlert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->addImageTab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;I)V
    .locals 0

    .prologue
    .line 1141
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;

    iput p2, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1144
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;

    iget v1, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView$1;->val$position:I

    # invokes: Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->didSelectTab(I)V
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->access$3000(Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;I)V

    .line 1145
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;

    iget v1, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView$1;->val$position:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->setTabsLayout(I)V

    .line 1146
    return-void
.end method
