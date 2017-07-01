.class public Lorg/telegram/ui/Components/AvatarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AvatarDrawable.java"


# static fields
.field private static arrColors:[I

.field private static arrColorsButtons:[I

.field private static arrColorsNames:[I

.field private static arrColorsProfiles:[I

.field private static arrColorsProfilesBack:[I

.field private static arrColorsProfilesText:[I

.field private static broadcastDrawable:Landroid/graphics/drawable/Drawable;

.field private static namePaint:Landroid/text/TextPaint;

.field private static namePaintSmall:Landroid/text/TextPaint;

.field private static paint:Landroid/graphics/Paint;

.field private static photoDrawable:Landroid/graphics/drawable/Drawable;


# instance fields
.field private color:I

.field private drawBrodcast:Z

.field private drawPhoto:Z

.field private isProfile:Z

.field private radius:I

.field private smallStyle:Z

.field private stringBuilder:Ljava/lang/StringBuilder;

.field private textHeight:F

.field private textLayout:Landroid/text/StaticLayout;

.field private textLeft:F

.field private textWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Components/AvatarDrawable;->paint:Landroid/graphics/Paint;

    .line 36
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/ui/Components/AvatarDrawable;->arrColors:[I

    .line 37
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/telegram/ui/Components/AvatarDrawable;->arrColorsProfiles:[I

    .line 38
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/telegram/ui/Components/AvatarDrawable;->arrColorsProfilesBack:[I

    .line 39
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/telegram/ui/Components/AvatarDrawable;->arrColorsProfilesText:[I

    .line 40
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Lorg/telegram/ui/Components/AvatarDrawable;->arrColorsNames:[I

    .line 41
    new-array v0, v2, [I

    fill-array-data v0, :array_5

    sput-object v0, Lorg/telegram/ui/Components/AvatarDrawable;->arrColorsButtons:[I

    return-void

    .line 36
    nop

    :array_0
    .array-data 4
        -0x1a9aab
        -0xd73b8
        -0x717a12
        -0x8937b3
        -0xa0412b
        -0xab6323
        -0x717a12
        -0xd8b66
    .end array-data

    .line 37
    :array_1
    .array-data 4
        -0x27909b
        -0x9629f
        -0x73862e
        -0x984ca3
        -0xa95d45
        -0xaf7a4f
        -0x73862e
        -0xc805a
    .end array-data

    .line 38
    :array_2
    .array-data 4
        -0x359faa
        -0xe76bc
        -0x82953c
        -0xa95eb4
        -0xbb6d54
        -0xa67046
        -0x82953c
        -0xb37b4a
    .end array-data

    .line 39
    :array_3
    .array-data 4
        -0x6343b
        -0x22238
        -0x323b13
        -0x3f1246
        -0x471d10
        -0x281506
        -0x323b13
        -0x4c2809
    .end array-data

    .line 40
    :array_4
    .array-data 4
        -0x35a9b0
        -0x2784d7
        -0xb16d34
        -0xaf4dce
        -0xbd4e58
        -0xb16d34
        -0xb16d34
        -0xb16d34
    .end array-data

    .line 41
    :array_5
    .array-data 4
        -0x43b4bf
        -0x198bd7
        -0x8ca042
        -0xb76ac3
        -0xc67b63
        -0xb67e53
        -0x8ca042
        -0xb67e53
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 60
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    .line 57
    const/16 v0, 0x20

    iput v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->radius:I

    .line 62
    sget-object v0, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    .line 64
    sget-object v0, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 65
    sget-object v0, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 67
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Components/AvatarDrawable;->namePaintSmall:Landroid/text/TextPaint;

    .line 68
    sget-object v0, Lorg/telegram/ui/Components/AvatarDrawable;->namePaintSmall:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 69
    sget-object v0, Lorg/telegram/ui/Components/AvatarDrawable;->namePaintSmall:Landroid/text/TextPaint;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 71
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/AvatarDrawable;->broadcastDrawable:Landroid/graphics/drawable/Drawable;

    .line 73
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 1
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Chat;Z)V
    .locals 4
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;
    .param p2, "profile"    # Z

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 93
    iput-boolean p2, p0, Lorg/telegram/ui/Components/AvatarDrawable;->isProfile:Z

    .line 94
    if-eqz p1, :cond_0

    .line 95
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v3, 0x0

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v2, v3, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 97
    :cond_0
    return-void

    .line 95
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 1
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;Z)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$User;Z)V
    .locals 4
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "profile"    # Z

    .prologue
    .line 84
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 85
    iput-boolean p2, p0, Lorg/telegram/ui/Components/AvatarDrawable;->isProfile:Z

    .line 86
    if-eqz p1, :cond_0

    .line 87
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 89
    :cond_0
    return-void
.end method

.method public static getButtonColorForId(I)I
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 139
    sget-object v0, Lorg/telegram/ui/Components/AvatarDrawable;->arrColorsButtons:[I

    invoke-static {p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public static getColorForId(I)I
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 135
    sget-object v0, Lorg/telegram/ui/Components/AvatarDrawable;->arrColors:[I

    invoke-static {p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public static getColorIndex(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 108
    if-ltz p0, :cond_0

    const/16 v0, 0x8

    if-ge p0, v0, :cond_0

    .line 131
    .end local p0    # "id":I
    :goto_0
    return p0

    .restart local p0    # "id":I
    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/AvatarDrawable;->arrColors:[I

    array-length v0, v0

    rem-int v0, p0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    goto :goto_0
.end method

.method public static getNameColorForId(I)I
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 160
    sget-object v0, Lorg/telegram/ui/Components/AvatarDrawable;->arrColorsNames:[I

    invoke-static {p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public static getProfileBackColorForId(I)I
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 152
    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 153
    invoke-static {}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getThemeColor()I

    move-result v0

    .line 155
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/AvatarDrawable;->arrColorsProfilesBack:[I

    invoke-static {p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(I)I

    move-result v1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public static getProfileColorForId(I)I
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 143
    sget-object v0, Lorg/telegram/ui/Components/AvatarDrawable;->arrColorsProfiles:[I

    invoke-static {p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public static getProfileTextColorForId(I)I
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 147
    sget-object v0, Lorg/telegram/ui/Components/AvatarDrawable;->arrColorsProfilesText:[I

    invoke-static {p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    .line 259
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 260
    .local v0, "bounds":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    .line 292
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 264
    .local v3, "size":I
    sget-object v6, Lorg/telegram/ui/Components/AvatarDrawable;->paint:Landroid/graphics/Paint;

    iget v7, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 265
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 266
    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, v0, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 267
    div-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v3, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v3, 0x2

    int-to-float v8, v8

    sget-object v9, Lorg/telegram/ui/Components/AvatarDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 270
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v11, v11, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 271
    .local v1, "rect":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 272
    .local v2, "rectF":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getRoundRadius()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getRoundRadius()I

    move-result v7

    int-to-float v7, v7

    sget-object v8, Lorg/telegram/ui/Components/AvatarDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v6, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 275
    iget-boolean v6, p0, Lorg/telegram/ui/Components/AvatarDrawable;->drawBrodcast:Z

    if-eqz v6, :cond_2

    sget-object v6, Lorg/telegram/ui/Components/AvatarDrawable;->broadcastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_2

    .line 276
    sget-object v6, Lorg/telegram/ui/Components/AvatarDrawable;->broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int v6, v3, v6

    div-int/lit8 v4, v6, 0x2

    .line 277
    .local v4, "x":I
    sget-object v6, Lorg/telegram/ui/Components/AvatarDrawable;->broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int v6, v3, v6

    div-int/lit8 v5, v6, 0x2

    .line 278
    .local v5, "y":I
    sget-object v6, Lorg/telegram/ui/Components/AvatarDrawable;->broadcastDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v7, Lorg/telegram/ui/Components/AvatarDrawable;->broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int/2addr v7, v4

    sget-object v8, Lorg/telegram/ui/Components/AvatarDrawable;->broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v6, v4, v5, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 279
    sget-object v6, Lorg/telegram/ui/Components/AvatarDrawable;->broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 291
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 281
    :cond_2
    iget-object v6, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    if-eqz v6, :cond_3

    .line 282
    int-to-float v6, v3

    iget v7, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textWidth:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v10

    iget v7, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLeft:F

    sub-float/2addr v6, v7

    int-to-float v7, v3

    iget v8, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textHeight:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v10

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 283
    iget-object v6, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 284
    :cond_3
    iget-boolean v6, p0, Lorg/telegram/ui/Components/AvatarDrawable;->drawPhoto:Z

    if-eqz v6, :cond_1

    sget-object v6, Lorg/telegram/ui/Components/AvatarDrawable;->photoDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    .line 285
    sget-object v6, Lorg/telegram/ui/Components/AvatarDrawable;->photoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int v6, v3, v6

    div-int/lit8 v4, v6, 0x2

    .line 286
    .restart local v4    # "x":I
    sget-object v6, Lorg/telegram/ui/Components/AvatarDrawable;->photoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int v6, v3, v6

    div-int/lit8 v5, v6, 0x2

    .line 287
    .restart local v5    # "y":I
    sget-object v6, Lorg/telegram/ui/Components/AvatarDrawable;->photoDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v7, Lorg/telegram/ui/Components/AvatarDrawable;->photoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int/2addr v7, v4

    sget-object v8, Lorg/telegram/ui/Components/AvatarDrawable;->photoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v6, v4, v5, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 288
    sget-object v6, Lorg/telegram/ui/Components/AvatarDrawable;->photoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 306
    const/4 v0, -0x2

    return v0
.end method

.method public getRoundRadius()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->radius:I

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 297
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 176
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 177
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 302
    return-void
.end method

.method public setDrawPhoto(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 241
    if-eqz p1, :cond_0

    sget-object v0, Lorg/telegram/ui/Components/AvatarDrawable;->photoDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 242
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020213

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/AvatarDrawable;->photoDrawable:Landroid/graphics/drawable/Drawable;

    .line 244
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->drawPhoto:Z

    .line 245
    return-void
.end method

.method public setInfo(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 11
    .param p1, "id"    # I
    .param p2, "firstName"    # Ljava/lang/String;
    .param p3, "lastName"    # Ljava/lang/String;
    .param p4, "isBroadcast"    # Z

    .prologue
    const/16 v5, 0x10

    const/16 v4, 0x20

    const/4 v3, 0x0

    .line 180
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->isProfile:Z

    if-eqz v0, :cond_7

    .line 181
    sget-object v0, Lorg/telegram/ui/Components/AvatarDrawable;->arrColorsProfiles:[I

    invoke-static {p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(I)I

    move-result v2

    aget v0, v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 186
    :goto_0
    iput-boolean p4, p0, Lorg/telegram/ui/Components/AvatarDrawable;->drawBrodcast:Z

    .line 188
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 189
    :cond_0
    move-object p2, p3

    .line 190
    const/4 p3, 0x0

    .line 193
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 194
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 195
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_2
    if-eqz p3, :cond_9

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 198
    const/4 v10, 0x0

    .line 199
    .local v10, "lastch":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "a":I
    :goto_1
    if-ltz v8, :cond_3

    .line 200
    if-eqz v10, :cond_8

    invoke-virtual {p3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_8

    .line 205
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_4

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u200c"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .end local v8    # "a":I
    .end local v10    # "lastch":Ljava/lang/String;
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_d

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "text":Ljava/lang/String;
    :try_start_0
    new-instance v0, Landroid/text/StaticLayout;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/AvatarDrawable;->smallStyle:Z

    if-eqz v2, :cond_c

    sget-object v2, Lorg/telegram/ui/Components/AvatarDrawable;->namePaintSmall:Landroid/text/TextPaint;

    :goto_3
    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    .line 227
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 228
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLeft:F

    .line 229
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textWidth:F

    .line 230
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textHeight:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .end local v1    # "text":Ljava/lang/String;
    :cond_6
    :goto_4
    return-void

    .line 183
    :cond_7
    sget-object v0, Lorg/telegram/ui/Components/AvatarDrawable;->arrColors:[I

    invoke-static {p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(I)I

    move-result v2

    aget v0, v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    goto/16 :goto_0

    .line 203
    .restart local v8    # "a":I
    .restart local v10    # "lastch":Ljava/lang/String;
    :cond_8
    add-int/lit8 v0, v8, 0x1

    invoke-virtual {p3, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 199
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 209
    .end local v8    # "a":I
    .end local v10    # "lastch":Ljava/lang/String;
    :cond_9
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 210
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .restart local v8    # "a":I
    :goto_5
    if-ltz v8, :cond_5

    .line 211
    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_b

    .line 212
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v8, v0, :cond_b

    add-int/lit8 v0, v8, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v4, :cond_b

    .line 213
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_a

    .line 214
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u200c"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v8, 0x1

    add-int/lit8 v3, v8, 0x2

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 210
    :cond_b
    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    .line 226
    .end local v8    # "a":I
    .restart local v1    # "text":Ljava/lang/String;
    :cond_c
    :try_start_1
    sget-object v2, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 232
    :catch_0
    move-exception v9

    .line 233
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 236
    .end local v1    # "text":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    goto :goto_4
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 4
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 170
    if-eqz p1, :cond_0

    .line 171
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v3, 0x0

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v2, v3, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 173
    :cond_0
    return-void

    .line 171
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 4
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 164
    if-eqz p1, :cond_0

    .line 165
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 167
    :cond_0
    return-void
.end method

.method public setProfile(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->isProfile:Z

    .line 101
    return-void
.end method

.method public setRoundRadius(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 249
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->radius:I

    .line 250
    return-void
.end method

.method public setSmallStyle(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->smallStyle:Z

    .line 105
    return-void
.end method
