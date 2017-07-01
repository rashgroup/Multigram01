.class Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$2;
.super Lorg/telegram/messenger/AnimatorListenerAdapterProxy;
.source "DrawerLayoutContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->openDrawer(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$2;->this$0:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-direct {p0}, Lorg/telegram/messenger/AnimatorListenerAdapterProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 185
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$2;->this$0:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v1, 0x1

    # invokes: Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->onDrawerAnimationEnd(Z)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->access$100(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;Z)V

    .line 186
    return-void
.end method
