.class public Lorg/telegram/ui/Components/TypefaceSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "TypefaceSpan.java"


# instance fields
.field private color:I

.field private mTypeface:Landroid/graphics/Typeface;

.field private textSize:I


# direct methods
.method public constructor <init>(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/telegram/ui/Components/TypefaceSpan;->mTypeface:Landroid/graphics/Typeface;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Typeface;I)V
    .locals 0
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "size"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/telegram/ui/Components/TypefaceSpan;->mTypeface:Landroid/graphics/Typeface;

    .line 28
    iput p2, p0, Lorg/telegram/ui/Components/TypefaceSpan;->textSize:I

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Typeface;II)V
    .locals 0
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "size"    # I
    .param p3, "textColor"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/telegram/ui/Components/TypefaceSpan;->mTypeface:Landroid/graphics/Typeface;

    .line 33
    iput p2, p0, Lorg/telegram/ui/Components/TypefaceSpan;->textSize:I

    .line 34
    iput p3, p0, Lorg/telegram/ui/Components/TypefaceSpan;->color:I

    .line 35
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "tp"    # Landroid/text/TextPaint;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Components/TypefaceSpan;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Components/TypefaceSpan;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 53
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/TypefaceSpan;->textSize:I

    if-eqz v0, :cond_1

    .line 54
    iget v0, p0, Lorg/telegram/ui/Components/TypefaceSpan;->textSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 56
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/TypefaceSpan;->color:I

    if-eqz v0, :cond_2

    .line 57
    iget v0, p0, Lorg/telegram/ui/Components/TypefaceSpan;->color:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 59
    :cond_2
    invoke-virtual {p1}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 60
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "p"    # Landroid/text/TextPaint;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/telegram/ui/Components/TypefaceSpan;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lorg/telegram/ui/Components/TypefaceSpan;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 42
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/TypefaceSpan;->textSize:I

    if-eqz v0, :cond_1

    .line 43
    iget v0, p0, Lorg/telegram/ui/Components/TypefaceSpan;->textSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 45
    :cond_1
    invoke-virtual {p1}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 46
    return-void
.end method
