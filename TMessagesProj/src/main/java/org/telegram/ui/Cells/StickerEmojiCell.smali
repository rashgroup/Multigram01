.class public Lorg/telegram/ui/Cells/StickerEmojiCell;
.super Landroid/widget/FrameLayout;
.source "StickerEmojiCell.java"


# static fields
.field private static interpolator:Landroid/view/animation/AccelerateInterpolator;


# instance fields
.field private alpha:F

.field private changingAlpha:Z

.field private emojiTextView:Landroid/widget/TextView;

.field private imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private lastUpdateTime:J

.field private scale:F

.field private scaled:Z

.field private sticker:Lorg/telegram/tgnet/TLRPC$Document;

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->interpolator:Landroid/view/animation/AccelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x42

    const/16 v3, 0x1c

    const/4 v2, 0x1

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->alpha:F

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->time:J

    .line 43
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 44
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setAspectFit(Z)V

    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v1, 0x11

    invoke-static {v4, v4, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->emojiTextView:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->emojiTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 49
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->emojiTextView:Landroid/widget/TextView;

    const/16 v1, 0x55

    invoke-static {v3, v3, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 2

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->changingAlpha:Z

    .line 87
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->alpha:F

    .line 88
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->time:J

    .line 89
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->alpha:F

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 90
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->invalidate()V

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->lastUpdateTime:J

    .line 92
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerEmojiCell;->invalidate()V

    .line 93
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v4

    .line 112
    .local v4, "result":Z
    iget-object v5, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    if-ne p2, v5, :cond_5

    iget-boolean v5, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->changingAlpha:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scaled:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scale:F

    const v6, 0x3f4ccccd    # 0.8f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    :cond_0
    iget-boolean v5, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scaled:Z

    if-nez v5, :cond_5

    iget v5, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scale:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_5

    .line 113
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 114
    .local v2, "newTime":J
    iget-wide v6, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->lastUpdateTime:J

    sub-long v0, v2, v6

    .line 115
    .local v0, "dt":J
    iput-wide v2, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->lastUpdateTime:J

    .line 116
    iget-boolean v5, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->changingAlpha:Z

    if-eqz v5, :cond_6

    .line 117
    iget-wide v6, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->time:J

    add-long/2addr v6, v0

    iput-wide v6, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->time:J

    .line 118
    iget-wide v6, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->time:J

    const-wide/16 v8, 0x41a

    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    .line 119
    const-wide/16 v6, 0x41a

    iput-wide v6, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->time:J

    .line 121
    :cond_2
    const/high16 v5, 0x3f000000    # 0.5f

    sget-object v6, Lorg/telegram/ui/Cells/StickerEmojiCell;->interpolator:Landroid/view/animation/AccelerateInterpolator;

    iget-wide v8, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->time:J

    long-to-float v7, v8

    const v8, 0x44834000    # 1050.0f

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->alpha:F

    .line 122
    iget v5, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->alpha:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_3

    .line 123
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->changingAlpha:Z

    .line 124
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->alpha:F

    .line 126
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    iget v6, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->alpha:F

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 138
    :cond_4
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v6, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scale:F

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/BackupImageView;->setScaleX(F)V

    .line 139
    iget-object v5, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v6, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scale:F

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/BackupImageView;->setScaleY(F)V

    .line 140
    iget-object v5, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->invalidate()V

    .line 141
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerEmojiCell;->invalidate()V

    .line 143
    .end local v0    # "dt":J
    .end local v2    # "newTime":J
    :cond_5
    return v4

    .line 127
    .restart local v0    # "dt":J
    .restart local v2    # "newTime":J
    :cond_6
    iget-boolean v5, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scaled:Z

    if-eqz v5, :cond_7

    iget v5, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scale:F

    const v6, 0x3f4ccccd    # 0.8f

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_7

    .line 128
    iget v5, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scale:F

    long-to-float v6, v0

    const/high16 v7, 0x43c80000    # 400.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scale:F

    .line 129
    iget v5, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scale:F

    const v6, 0x3f4ccccd    # 0.8f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4

    .line 130
    const v5, 0x3f4ccccd    # 0.8f

    iput v5, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scale:F

    goto :goto_0

    .line 133
    :cond_7
    iget v5, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scale:F

    long-to-float v6, v0

    const/high16 v7, 0x43c80000    # 400.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scale:F

    .line 134
    iget v5, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scale:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 135
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scale:F

    goto :goto_0
.end method

.method public getSticker()Lorg/telegram/tgnet/TLRPC$Document;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    return-object v0
.end method

.method public isDisabled()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->changingAlpha:Z

    return v0
.end method

.method public setScaled(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scaled:Z

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->lastUpdateTime:J

    .line 98
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerEmojiCell;->invalidate()V

    .line 99
    return-void
.end method

.method public setSticker(Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 9
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;
    .param p2, "showEmoji"    # Z

    .prologue
    const/4 v6, 0x0

    const/high16 v8, 0x41800000    # 16.0f

    const/4 v7, 0x0

    .line 57
    if-eqz p1, :cond_3

    .line 58
    iput-object p1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    .line 59
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v3, :cond_0

    .line 60
    iget-object v3, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string/jumbo v5, "webp"

    invoke-virtual {v3, v4, v6, v5, v6}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 63
    :cond_0
    if-eqz p2, :cond_5

    .line 64
    const/4 v2, 0x0

    .line 65
    .local v2, "set":Z
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 66
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 67
    .local v1, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v3, :cond_4

    .line 68
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 69
    iget-object v3, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->emojiTextView:Landroid/widget/TextView;

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->emojiTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v4, v5, v6, v7}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const/4 v2, 0x1

    .line 75
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_1
    if-nez v2, :cond_2

    .line 76
    iget-object v3, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->emojiTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/query/StickersQuery;->getEmojiForSticker(J)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->emojiTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v4, v5, v6, v7}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->emojiTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    .end local v0    # "a":I
    .end local v2    # "set":Z
    :cond_3
    :goto_1
    return-void

    .line 65
    .restart local v0    # "a":I
    .restart local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .restart local v2    # "set":Z
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    .end local v0    # "a":I
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v2    # "set":Z
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->emojiTextView:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public showingBitmap()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
