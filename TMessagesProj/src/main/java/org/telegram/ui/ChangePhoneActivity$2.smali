.class Lorg/telegram/ui/ChangePhoneActivity$2;
.super Lorg/telegram/messenger/AnimatorListenerAdapterProxy;
.source "ChangePhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangePhoneActivity;->setPage(IZLandroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChangePhoneActivity;

.field final synthetic val$newView:Lorg/telegram/ui/Components/SlideView;

.field final synthetic val$outView:Lorg/telegram/ui/Components/SlideView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangePhoneActivity;Lorg/telegram/ui/Components/SlideView;Lorg/telegram/ui/Components/SlideView;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lorg/telegram/ui/ChangePhoneActivity$2;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChangePhoneActivity$2;->val$newView:Lorg/telegram/ui/Components/SlideView;

    iput-object p3, p0, Lorg/telegram/ui/ChangePhoneActivity$2;->val$outView:Lorg/telegram/ui/Components/SlideView;

    invoke-direct {p0}, Lorg/telegram/messenger/AnimatorListenerAdapterProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 266
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$2;->val$outView:Lorg/telegram/ui/Components/SlideView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SlideView;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$2;->val$outView:Lorg/telegram/ui/Components/SlideView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SlideView;->setX(F)V

    .line 268
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 261
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$2;->val$newView:Lorg/telegram/ui/Components/SlideView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SlideView;->setVisibility(I)V

    .line 262
    return-void
.end method
