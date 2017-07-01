.class Lorg/telegram/ui/ManageSpaceActivity$3;
.super Ljava/lang/Object;
.source "ManageSpaceActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ManageSpaceActivity;->fixLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ManageSpaceActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ManageSpaceActivity;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lorg/telegram/ui/ManageSpaceActivity$3;->this$0:Lorg/telegram/ui/ManageSpaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity$3;->this$0:Lorg/telegram/ui/ManageSpaceActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ManageSpaceActivity;->needLayout()V

    .line 261
    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity$3;->this$0:Lorg/telegram/ui/ManageSpaceActivity;

    # getter for: Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v0}, Lorg/telegram/ui/ManageSpaceActivity;->access$000(Lorg/telegram/ui/ManageSpaceActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 263
    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity$3;->this$0:Lorg/telegram/ui/ManageSpaceActivity;

    # getter for: Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v0}, Lorg/telegram/ui/ManageSpaceActivity;->access$000(Lorg/telegram/ui/ManageSpaceActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity$3;->this$0:Lorg/telegram/ui/ManageSpaceActivity;

    # getter for: Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v0}, Lorg/telegram/ui/ManageSpaceActivity;->access$000(Lorg/telegram/ui/ManageSpaceActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
