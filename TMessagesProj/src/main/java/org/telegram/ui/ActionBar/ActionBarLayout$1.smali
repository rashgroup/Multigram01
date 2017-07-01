.class Lorg/telegram/ui/ActionBar/ActionBarLayout$1;
.super Lorg/telegram/messenger/AnimatorListenerAdapterProxy;
.source "ActionBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBarLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field final synthetic val$backAnimation:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Z)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$1;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$1;->val$backAnimation:Z

    invoke-direct {p0}, Lorg/telegram/messenger/AnimatorListenerAdapterProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 467
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$1;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$1;->val$backAnimation:Z

    # invokes: Lorg/telegram/ui/ActionBar/ActionBarLayout;->onSlideAnimationEnd(Z)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$400(Lorg/telegram/ui/ActionBar/ActionBarLayout;Z)V

    .line 468
    return-void
.end method
