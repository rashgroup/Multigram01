.class public Lorg/telegram/ui/Components/ChipSpan;
.super Landroid/text/style/ImageSpan;
.source "ChipSpan.java"


# instance fields
.field public uid:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "verticalAlignment"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 23
    return-void
.end method


# virtual methods
.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 5
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 27
    if-nez p5, :cond_0

    .line 28
    new-instance p5, Landroid/graphics/Paint$FontMetricsInt;

    .end local p5    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    invoke-direct {p5}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    .line 31
    .restart local p5    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/text/style/ImageSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v1

    .line 32
    .local v1, "sz":I
    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 33
    .local v0, "offset":I
    iget v3, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v4, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v3, v4

    div-int/lit8 v2, v3, 0x2

    .line 34
    .local v2, "w":I
    neg-int v3, v2

    sub-int/2addr v3, v0

    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 35
    sub-int v3, v2, v0

    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 36
    neg-int v3, v2

    sub-int/2addr v3, v0

    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 37
    const/4 v3, 0x0

    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 38
    sub-int v3, v2, v0

    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 39
    return v1
.end method
