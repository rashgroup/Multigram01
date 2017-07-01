.class Lorg/telegram/ui/DialogsActivity$SlidingTabView$1;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity$SlidingTabView;->addImageTab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity$SlidingTabView;I)V
    .locals 0

    .prologue
    .line 2542
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView$1;->this$1:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    iput p2, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2545
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView$1;->this$1:Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    iget v1, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView$1;->val$position:I

    # invokes: Lorg/telegram/ui/DialogsActivity$SlidingTabView;->tabOnClick(I)V
    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->access$3700(Lorg/telegram/ui/DialogsActivity$SlidingTabView;I)V

    .line 2546
    return-void
.end method
