.class Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$ProgressView;
.super Landroid/view/View;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressView"
.end annotation


# instance fields
.field private paint:Landroid/graphics/Paint;

.field private paint2:Landroid/graphics/Paint;

.field private progress:F

.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1049
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$ProgressView;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .line 1050
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1045
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$ProgressView;->paint:Landroid/graphics/Paint;

    .line 1046
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$ProgressView;->paint2:Landroid/graphics/Paint;

    .line 1051
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$ProgressView;->paint:Landroid/graphics/Paint;

    const v1, -0x1e150e

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1052
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$ProgressView;->paint2:Landroid/graphics/Paint;

    const v1, -0x9d5f30

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1053
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 1062
    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$ProgressView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$ProgressView;->progress:F

    mul-float/2addr v0, v2

    float-to-int v8, v0

    .line 1063
    .local v8, "start":I
    int-to-float v3, v8

    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$ProgressView;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$ProgressView;->paint2:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1064
    int-to-float v3, v8

    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$ProgressView;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$ProgressView;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$ProgressView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1065
    return-void
.end method

.method public setProgress(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 1056
    iput p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$ProgressView;->progress:F

    .line 1057
    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$ProgressView;->invalidate()V

    .line 1058
    return-void
.end method
