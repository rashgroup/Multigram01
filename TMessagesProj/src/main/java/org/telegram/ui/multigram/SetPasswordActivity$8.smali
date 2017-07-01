.class Lorg/telegram/ui/multigram/SetPasswordActivity$8;
.super Ljava/lang/Object;
.source "SetPasswordActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/multigram/SetPasswordActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/multigram/SetPasswordActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/multigram/SetPasswordActivity;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lorg/telegram/ui/multigram/SetPasswordActivity$8;->this$0:Lorg/telegram/ui/multigram/SetPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lorg/telegram/ui/multigram/SetPasswordActivity$8;->this$0:Lorg/telegram/ui/multigram/SetPasswordActivity;

    # getter for: Lorg/telegram/ui/multigram/SetPasswordActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lorg/telegram/ui/multigram/SetPasswordActivity;->access$700(Lorg/telegram/ui/multigram/SetPasswordActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 331
    const/4 v0, 0x1

    return v0
.end method
