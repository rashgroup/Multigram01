.class Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$ProgressView;
.super Landroid/view/View;
.source "ChangePhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressView"
.end annotation


# instance fields
.field private paint:Landroid/graphics/Paint;

.field private paint2:Landroid/graphics/Paint;

.field private progress:F

.field final synthetic this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 811
    iput-object p1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$ProgressView;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .line 812
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 807
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$ProgressView;->paint:Landroid/graphics/Paint;

    .line 808
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$ProgressView;->paint2:Landroid/graphics/Paint;

    .line 813
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$ProgressView;->paint:Landroid/graphics/Paint;

    const v1, -0x1e150e

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 814
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$ProgressView;->paint2:Landroid/graphics/Paint;

    const v1, -0x9d5f30

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 815
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 824
    invoke-virtual {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$ProgressView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$ProgressView;->progress:F

    mul-float/2addr v0, v2

    float-to-int v8, v0

    .line 825
    .local v8, "start":I
    int-to-float v3, v8

    invoke-virtual {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$ProgressView;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$ProgressView;->paint2:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 826
    int-to-float v3, v8

    invoke-virtual {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$ProgressView;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$ProgressView;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$ProgressView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 827
    return-void
.end method

.method public setProgress(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 818
    iput p1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$ProgressView;->progress:F

    .line 819
    invoke-virtual {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$ProgressView;->invalidate()V

    .line 820
    return-void
.end method
