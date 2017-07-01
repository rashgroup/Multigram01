.class public Lorg/telegram/messenger/Emoji;
.super Ljava/lang/Object;
.source "Emoji.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/Emoji$EmojiSpan;,
        Lorg/telegram/messenger/Emoji$DrawableInfo;,
        Lorg/telegram/messenger/Emoji$EmojiDrawable;
    }
.end annotation


# static fields
.field private static bigImgSize:I = 0x0

.field private static final cols:[[I

.field private static drawImgSize:I = 0x0

.field private static emojiBmp:[[Landroid/graphics/Bitmap; = null

.field private static inited:Z = false

.field private static loadingEmoji:[[Z = null

.field private static placeholderPaint:Landroid/graphics/Paint; = null

.field private static rects:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/CharSequence;",
            "Lorg/telegram/messenger/Emoji$DrawableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final splitCount:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v9, 0x5

    const/4 v12, 0x0

    const/4 v10, 0x4

    .line 33
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lorg/telegram/messenger/Emoji;->rects:Ljava/util/HashMap;

    .line 36
    sput-boolean v12, Lorg/telegram/messenger/Emoji;->inited:Z

    .line 39
    filled-new-array {v9, v10}, [I

    move-result-object v7

    const-class v8, Landroid/graphics/Bitmap;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Landroid/graphics/Bitmap;

    sput-object v7, Lorg/telegram/messenger/Emoji;->emojiBmp:[[Landroid/graphics/Bitmap;

    .line 40
    filled-new-array {v9, v10}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Z

    sput-object v7, Lorg/telegram/messenger/Emoji;->loadingEmoji:[[Z

    .line 42
    new-array v7, v9, [[I

    new-array v8, v10, [I

    fill-array-data v8, :array_0

    aput-object v8, v7, v12

    const/4 v8, 0x1

    new-array v9, v10, [I

    fill-array-data v9, :array_1

    aput-object v9, v7, v8

    const/4 v8, 0x2

    new-array v9, v10, [I

    fill-array-data v9, :array_2

    aput-object v9, v7, v8

    const/4 v8, 0x3

    new-array v9, v10, [I

    fill-array-data v9, :array_3

    aput-object v9, v7, v8

    new-array v8, v10, [I

    fill-array-data v8, :array_4

    aput-object v8, v7, v10

    sput-object v7, Lorg/telegram/messenger/Emoji;->cols:[[I

    .line 52
    sget v7, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_0

    .line 53
    const/16 v1, 0x20

    .line 61
    .local v1, "emojiFullSize":I
    :goto_0
    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sput v7, Lorg/telegram/messenger/Emoji;->drawImgSize:I

    .line 62
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_3

    const/high16 v7, 0x42200000    # 40.0f

    :goto_1
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sput v7, Lorg/telegram/messenger/Emoji;->bigImgSize:I

    .line 64
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    sget-object v7, Lorg/telegram/messenger/EmojiData;->data:[[Ljava/lang/String;

    array-length v7, v7

    if-ge v3, v7, :cond_5

    .line 65
    sget-object v7, Lorg/telegram/messenger/EmojiData;->data:[[Ljava/lang/String;

    aget-object v7, v7, v3

    array-length v7, v7

    int-to-float v7, v7

    const/high16 v8, 0x40800000    # 4.0f

    div-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v0, v8

    .line 67
    .local v0, "count2":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    sget-object v7, Lorg/telegram/messenger/EmojiData;->data:[[Ljava/lang/String;

    aget-object v7, v7, v3

    array-length v7, v7

    if-ge v2, v7, :cond_4

    .line 68
    div-int v4, v2, v0

    .line 69
    .local v4, "page":I
    mul-int v7, v4, v0

    sub-int v5, v2, v7

    .line 70
    .local v5, "position":I
    new-instance v6, Landroid/graphics/Rect;

    sget-object v7, Lorg/telegram/messenger/Emoji;->cols:[[I

    aget-object v7, v7, v3

    aget v7, v7, v4

    rem-int v7, v5, v7

    mul-int/2addr v7, v1

    sget-object v8, Lorg/telegram/messenger/Emoji;->cols:[[I

    aget-object v8, v8, v3

    aget v8, v8, v4

    div-int v8, v5, v8

    mul-int/2addr v8, v1

    sget-object v9, Lorg/telegram/messenger/Emoji;->cols:[[I

    aget-object v9, v9, v3

    aget v9, v9, v4

    rem-int v9, v5, v9

    add-int/lit8 v9, v9, 0x1

    mul-int/2addr v9, v1

    sget-object v10, Lorg/telegram/messenger/Emoji;->cols:[[I

    aget-object v10, v10, v3

    aget v10, v10, v4

    div-int v10, v5, v10

    add-int/lit8 v10, v10, 0x1

    mul-int/2addr v10, v1

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 71
    .local v6, "rect":Landroid/graphics/Rect;
    sget-object v7, Lorg/telegram/messenger/Emoji;->rects:Ljava/util/HashMap;

    sget-object v8, Lorg/telegram/messenger/EmojiData;->data:[[Ljava/lang/String;

    aget-object v8, v8, v3

    aget-object v8, v8, v2

    new-instance v9, Lorg/telegram/messenger/Emoji$DrawableInfo;

    int-to-byte v10, v3

    int-to-byte v11, v4

    invoke-direct {v9, v6, v10, v11}, Lorg/telegram/messenger/Emoji$DrawableInfo;-><init>(Landroid/graphics/Rect;BB)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 54
    .end local v0    # "count2":I
    .end local v1    # "emojiFullSize":I
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "page":I
    .end local v5    # "position":I
    .end local v6    # "rect":Landroid/graphics/Rect;
    :cond_0
    sget v7, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v8, 0x3fc00000    # 1.5f

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_1

    .line 55
    const/16 v1, 0x30

    .restart local v1    # "emojiFullSize":I
    goto/16 :goto_0

    .line 56
    .end local v1    # "emojiFullSize":I
    :cond_1
    sget v7, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v8, 0x40000000    # 2.0f

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_2

    .line 57
    const/16 v1, 0x40

    .restart local v1    # "emojiFullSize":I
    goto/16 :goto_0

    .line 59
    .end local v1    # "emojiFullSize":I
    :cond_2
    const/16 v1, 0x40

    .restart local v1    # "emojiFullSize":I
    goto/16 :goto_0

    .line 62
    :cond_3
    const/high16 v7, 0x42000000    # 32.0f

    goto/16 :goto_1

    .line 64
    .restart local v0    # "count2":I
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 74
    .end local v0    # "count2":I
    .end local v2    # "i":I
    :cond_5
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    sput-object v7, Lorg/telegram/messenger/Emoji;->placeholderPaint:Landroid/graphics/Paint;

    .line 75
    sget-object v7, Lorg/telegram/messenger/Emoji;->placeholderPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    return-void

    .line 42
    :array_0
    .array-data 4
        0xb
        0xb
        0xb
        0xb
    .end array-data

    :array_1
    .array-data 4
        0x6
        0x6
        0x6
        0x6
    .end array-data

    :array_2
    .array-data 4
        0x9
        0x9
        0x9
        0x9
    .end array-data

    :array_3
    .array-data 4
        0x9
        0x9
        0x9
        0x9
    .end array-data

    :array_4
    .array-data 4
        0x8
        0x8
        0x8
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    return-void
.end method

.method static synthetic access$000()[[Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lorg/telegram/messenger/Emoji;->emojiBmp:[[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lorg/telegram/messenger/Emoji;->bigImgSize:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lorg/telegram/messenger/Emoji;->drawImgSize:I

    return v0
.end method

.method static synthetic access$400()[[Z
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lorg/telegram/messenger/Emoji;->loadingEmoji:[[Z

    return-object v0
.end method

.method static synthetic access$600(II)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 32
    invoke-static {p0, p1}, Lorg/telegram/messenger/Emoji;->loadEmoji(II)V

    return-void
.end method

.method static synthetic access$700()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lorg/telegram/messenger/Emoji;->placeholderPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public static fixEmoji(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "emoji"    # Ljava/lang/String;

    .prologue
    const v6, 0xd83c

    const/4 v5, 0x0

    .line 169
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 170
    .local v2, "lenght":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v2, :cond_5

    .line 171
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 172
    .local v1, "ch":C
    if-lt v1, v6, :cond_4

    const v3, 0xd83e

    if-gt v1, v3, :cond_4

    .line 173
    if-ne v1, v6, :cond_3

    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_3

    .line 174
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 175
    const v3, 0xde2f

    if-eq v1, v3, :cond_0

    const v3, 0xdc04

    if-eq v1, v3, :cond_0

    const v3, 0xde1a

    if-eq v1, v3, :cond_0

    const v3, 0xdd7f

    if-ne v1, v3, :cond_2

    .line 176
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\ufe0f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 177
    add-int/lit8 v2, v2, 0x1

    .line 178
    add-int/lit8 v0, v0, 0x2

    .line 170
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 183
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 185
    :cond_4
    const/16 v3, 0x20e3

    if-ne v1, v3, :cond_6

    .line 195
    .end local v1    # "ch":C
    :cond_5
    return-object p0

    .line 187
    .restart local v1    # "ch":C
    :cond_6
    const/16 v3, 0x203c

    if-lt v1, v3, :cond_1

    const/16 v3, 0x3299

    if-gt v1, v3, :cond_1

    .line 188
    sget-object v3, Lorg/telegram/messenger/EmojiData;->emojiToFE0FMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\ufe0f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 190
    add-int/lit8 v2, v2, 0x1

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getEmojiBigDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "code"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 210
    invoke-static {p0}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v0

    .line 211
    .local v0, "ed":Lorg/telegram/messenger/Emoji$EmojiDrawable;
    if-nez v0, :cond_0

    .line 212
    const/4 v0, 0x0

    .line 216
    .end local v0    # "ed":Lorg/telegram/messenger/Emoji$EmojiDrawable;
    :goto_0
    return-object v0

    .line 214
    .restart local v0    # "ed":Lorg/telegram/messenger/Emoji$EmojiDrawable;
    :cond_0
    sget v1, Lorg/telegram/messenger/Emoji;->bigImgSize:I

    sget v2, Lorg/telegram/messenger/Emoji;->bigImgSize:I

    invoke-virtual {v0, v3, v3, v1, v2}, Lorg/telegram/messenger/Emoji$EmojiDrawable;->setBounds(IIII)V

    .line 215
    const/4 v1, 0x1

    # setter for: Lorg/telegram/messenger/Emoji$EmojiDrawable;->fullSize:Z
    invoke-static {v0, v1}, Lorg/telegram/messenger/Emoji$EmojiDrawable;->access$102(Lorg/telegram/messenger/Emoji$EmojiDrawable;Z)Z

    goto :goto_0
.end method

.method public static getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;
    .locals 5
    .param p0, "code"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    .line 199
    sget-object v2, Lorg/telegram/messenger/Emoji;->rects:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/Emoji$DrawableInfo;

    .line 200
    .local v1, "info":Lorg/telegram/messenger/Emoji$DrawableInfo;
    if-nez v1, :cond_0

    .line 201
    const-string/jumbo v2, "tmessages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No drawable for emoji "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/4 v0, 0x0

    .line 206
    :goto_0
    return-object v0

    .line 204
    :cond_0
    new-instance v0, Lorg/telegram/messenger/Emoji$EmojiDrawable;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/Emoji$EmojiDrawable;-><init>(Lorg/telegram/messenger/Emoji$DrawableInfo;)V

    .line 205
    .local v0, "ed":Lorg/telegram/messenger/Emoji$EmojiDrawable;
    sget v2, Lorg/telegram/messenger/Emoji;->drawImgSize:I

    sget v3, Lorg/telegram/messenger/Emoji;->drawImgSize:I

    invoke-virtual {v0, v4, v4, v2, v3}, Lorg/telegram/messenger/Emoji$EmojiDrawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method private static inArray(C[C)Z
    .locals 5
    .param p0, "c"    # C
    .param p1, "a"    # [C

    .prologue
    .line 302
    move-object v0, p1

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-char v1, v0, v2

    .line 303
    .local v1, "cc":C
    if-ne v1, p0, :cond_0

    .line 304
    const/4 v4, 0x1

    .line 307
    .end local v1    # "cc":C
    :goto_1
    return v4

    .line 302
    .restart local v1    # "cc":C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 307
    .end local v1    # "cc":C
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static invalidateAll(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 157
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v0, p0

    .line 158
    check-cast v0, Landroid/view/ViewGroup;

    .line 159
    .local v0, "g":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 160
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/Emoji;->invalidateAll(Landroid/view/View;)V

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    .end local v0    # "g":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_0
    instance-of v2, p0, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 163
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 165
    :cond_1
    return-void
.end method

.method private static loadEmoji(II)V
    .locals 20
    .param p0, "page"    # I
    .param p1, "page2"    # I

    .prologue
    .line 81
    const/4 v4, 0x1

    .line 82
    .local v4, "imageResize":I
    :try_start_0
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/high16 v16, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v16

    if-gtz v2, :cond_2

    .line 83
    const/high16 v14, 0x40000000    # 2.0f

    .line 84
    .local v14, "scale":F
    const/4 v4, 0x2

    .line 98
    :goto_0
    const/4 v8, 0x4

    .local v8, "a":I
    :goto_1
    const/4 v2, 0x6

    if-ge v8, v2, :cond_5

    .line 99
    :try_start_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v16, "v%d_emoji%.01fx_%d.jpg"

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v2, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 100
    .local v11, "imageName":Ljava/lang/String;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v11}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 101
    .local v10, "imageFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 104
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v16, "v%d_emoji%.01fx_a_%d.jpg"

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v2, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 105
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v11}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 106
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 85
    .end local v8    # "a":I
    .end local v10    # "imageFile":Ljava/io/File;
    .end local v11    # "imageName":Ljava/lang/String;
    .end local v14    # "scale":F
    :cond_2
    :try_start_2
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v16, 0x3fc00000    # 1.5f

    cmpg-float v2, v2, v16

    if-gtz v2, :cond_3

    .line 86
    const/high16 v14, 0x40400000    # 3.0f

    .line 87
    .restart local v14    # "scale":F
    const/4 v4, 0x2

    goto/16 :goto_0

    .line 88
    .end local v14    # "scale":F
    :cond_3
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v16, 0x40000000    # 2.0f

    cmpg-float v2, v2, v16

    if-gtz v2, :cond_4

    .line 89
    const/high16 v14, 0x40000000    # 2.0f

    .restart local v14    # "scale":F
    goto/16 :goto_0

    .line 91
    .end local v14    # "scale":F
    :cond_4
    const/high16 v14, 0x40000000    # 2.0f

    .restart local v14    # "scale":F
    goto/16 :goto_0

    .line 110
    .restart local v8    # "a":I
    :catch_0
    move-exception v9

    .line 111
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_5
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v16, "v7_emoji%.01fx_%d_%d.jpg"

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v2, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 116
    .restart local v11    # "imageName":Ljava/lang/String;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v11}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 117
    .restart local v10    # "imageFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    .line 118
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "emoji/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    .line 119
    .local v12, "is":Ljava/io/InputStream;
    invoke-static {v12, v10}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 120
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 123
    .end local v12    # "is":Ljava/io/InputStream;
    :cond_6
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 124
    .local v13, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v13, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 125
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 127
    iget v2, v13, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int v5, v2, v4

    .line 128
    .local v5, "width":I
    iget v2, v13, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v6, v2, v4

    .line 129
    .local v6, "height":I
    mul-int/lit8 v7, v5, 0x4

    .line 131
    .local v7, "stride":I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 132
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/Utilities;->loadBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;IIII)V

    .line 134
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v16, "v7_emoji%.01fx_a_%d_%d.jpg"

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v2, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 135
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v11}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 136
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7

    .line 137
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "emoji/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    .line 138
    .restart local v12    # "is":Ljava/io/InputStream;
    invoke-static {v12, v10}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 139
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 142
    .end local v12    # "is":Ljava/io/InputStream;
    :cond_7
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/Utilities;->loadBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;IIII)V

    .line 144
    new-instance v2, Lorg/telegram/messenger/Emoji$1;

    move/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v2, v0, v1, v3}, Lorg/telegram/messenger/Emoji$1;-><init>(IILandroid/graphics/Bitmap;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 154
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v7    # "stride":I
    .end local v8    # "a":I
    .end local v10    # "imageFile":Ljava/io/File;
    .end local v11    # "imageName":Ljava/lang/String;
    .end local v13    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v14    # "scale":F
    :goto_2
    return-void

    .line 151
    :catch_1
    move-exception v15

    .line 152
    .local v15, "x":Ljava/lang/Throwable;
    const-string/jumbo v2, "tmessages"

    const-string/jumbo v16, "Error loading emoji"

    move-object/from16 v0, v16

    invoke-static {v2, v0, v15}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;
    .locals 28
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "fontMetrics"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p2, "size"    # I
    .param p3, "createNew"    # Z

    .prologue
    .line 311
    if-eqz p0, :cond_0

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v23

    if-nez v23, :cond_1

    .line 422
    .end local p0    # "cs":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object p0

    .line 317
    .restart local p0    # "cs":Ljava/lang/CharSequence;
    :cond_1
    if-nez p3, :cond_7

    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v23, v0

    if-eqz v23, :cond_7

    move-object/from16 v19, p0

    .line 318
    check-cast v19, Landroid/text/Spannable;

    .line 322
    .local v19, "s":Landroid/text/Spannable;
    :goto_1
    const-wide/16 v8, 0x0

    .line 323
    .local v8, "buf":J
    const/4 v15, 0x0

    .line 325
    .local v15, "emojiCount":I
    const/16 v21, -0x1

    .line 326
    .local v21, "startIndex":I
    const/16 v22, 0x0

    .line 327
    .local v22, "startLength":I
    const/16 v18, 0x0

    .line 328
    .local v18, "previousGoodIndex":I
    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v23, 0x10

    move/from16 v0, v23

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 332
    .local v14, "emojiCode":Ljava/lang/StringBuilder;
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v17

    .line 333
    .local v17, "length":I
    const/4 v11, 0x0

    .line 337
    .local v11, "doneEmoji":Z
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_15

    .line 338
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 339
    .local v7, "c":C
    const v23, 0xd83c

    move/from16 v0, v23

    if-lt v7, v0, :cond_2

    const v23, 0xd83e

    move/from16 v0, v23

    if-le v7, v0, :cond_3

    :cond_2
    const-wide/16 v24, 0x0

    cmp-long v23, v8, v24

    if-eqz v23, :cond_8

    const-wide v24, -0x100000000L

    and-long v24, v24, v8

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-nez v23, :cond_8

    const-wide/32 v24, 0xffff

    and-long v24, v24, v8

    const-wide/32 v26, 0xd83c

    cmp-long v23, v24, v26

    if-nez v23, :cond_8

    const v23, 0xdde6

    move/from16 v0, v23

    if-lt v7, v0, :cond_8

    const v23, 0xddff

    move/from16 v0, v23

    if-gt v7, v0, :cond_8

    .line 340
    :cond_3
    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 341
    move/from16 v21, v16

    .line 343
    :cond_4
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 344
    add-int/lit8 v22, v22, 0x1

    .line 345
    const/16 v23, 0x10

    shl-long v8, v8, v23

    .line 346
    int-to-long v0, v7

    move-wide/from16 v24, v0

    or-long v8, v8, v24

    .line 376
    :cond_5
    :goto_3
    move/from16 v18, v16

    .line 377
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_4
    const/16 v23, 0x3

    move/from16 v0, v23

    if-ge v6, v0, :cond_11

    .line 378
    add-int/lit8 v23, v16, 0x1

    move/from16 v0, v23

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    .line 379
    add-int/lit8 v23, v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 380
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v6, v0, :cond_10

    .line 381
    const/16 v23, 0x200d

    move/from16 v0, v23

    if-ne v7, v0, :cond_6

    .line 382
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    add-int/lit8 v16, v16, 0x1

    .line 384
    add-int/lit8 v22, v22, 0x1

    .line 385
    const/4 v11, 0x0

    .line 377
    :cond_6
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 320
    .end local v6    # "a":I
    .end local v7    # "c":C
    .end local v8    # "buf":J
    .end local v11    # "doneEmoji":Z
    .end local v14    # "emojiCode":Ljava/lang/StringBuilder;
    .end local v15    # "emojiCount":I
    .end local v16    # "i":I
    .end local v17    # "length":I
    .end local v18    # "previousGoodIndex":I
    .end local v19    # "s":Landroid/text/Spannable;
    .end local v21    # "startIndex":I
    .end local v22    # "startLength":I
    :cond_7
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v23

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v19

    .restart local v19    # "s":Landroid/text/Spannable;
    goto/16 :goto_1

    .line 347
    .restart local v7    # "c":C
    .restart local v8    # "buf":J
    .restart local v11    # "doneEmoji":Z
    .restart local v14    # "emojiCode":Ljava/lang/StringBuilder;
    .restart local v15    # "emojiCount":I
    .restart local v16    # "i":I
    .restart local v17    # "length":I
    .restart local v18    # "previousGoodIndex":I
    .restart local v21    # "startIndex":I
    .restart local v22    # "startLength":I
    :cond_8
    const-wide/16 v24, 0x0

    cmp-long v23, v8, v24

    if-lez v23, :cond_9

    const v23, 0xf000

    and-int v23, v23, v7

    const v24, 0xd000

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 348
    :try_start_1
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 349
    add-int/lit8 v22, v22, 0x1

    .line 350
    const-wide/16 v8, 0x0

    .line 351
    const/4 v11, 0x1

    goto :goto_3

    .line 352
    :cond_9
    const/16 v23, 0x20e3

    move/from16 v0, v23

    if-ne v7, v0, :cond_c

    .line 353
    if-lez v16, :cond_5

    .line 354
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 355
    .local v10, "c2":C
    const/16 v23, 0x30

    move/from16 v0, v23

    if-lt v10, v0, :cond_a

    const/16 v23, 0x39

    move/from16 v0, v23

    if-le v10, v0, :cond_b

    :cond_a
    const/16 v23, 0x23

    move/from16 v0, v23

    if-eq v10, v0, :cond_b

    const/16 v23, 0x2a

    move/from16 v0, v23

    if-ne v10, v0, :cond_5

    .line 356
    :cond_b
    move/from16 v21, v18

    .line 357
    sub-int v23, v16, v18

    add-int/lit8 v22, v23, 0x1

    .line 358
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 360
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 363
    .end local v10    # "c2":C
    :cond_c
    const/16 v23, 0xa9

    move/from16 v0, v23

    if-eq v7, v0, :cond_d

    const/16 v23, 0xae

    move/from16 v0, v23

    if-eq v7, v0, :cond_d

    const/16 v23, 0x203c

    move/from16 v0, v23

    if-lt v7, v0, :cond_f

    const/16 v23, 0x3299

    move/from16 v0, v23

    if-gt v7, v0, :cond_f

    :cond_d
    sget-object v23, Lorg/telegram/messenger/EmojiData;->dataCharsMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 364
    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    .line 365
    move/from16 v21, v16

    .line 367
    :cond_e
    add-int/lit8 v22, v22, 0x1

    .line 368
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 369
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 370
    :cond_f
    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    .line 371
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 372
    const/16 v21, -0x1

    .line 373
    const/16 v22, 0x0

    .line 374
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 388
    .restart local v6    # "a":I
    :cond_10
    const v23, 0xfe00

    move/from16 v0, v23

    if-lt v7, v0, :cond_6

    const v23, 0xfe0f

    move/from16 v0, v23

    if-gt v7, v0, :cond_6

    .line 389
    add-int/lit8 v16, v16, 0x1

    .line 390
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_5

    .line 395
    :cond_11
    if-eqz v11, :cond_14

    .line 396
    add-int/lit8 v23, v16, 0x2

    move/from16 v0, v23

    move/from16 v1, v17

    if-ge v0, v1, :cond_12

    .line 397
    add-int/lit8 v23, v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v23

    const v24, 0xd83c

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_12

    add-int/lit8 v23, v16, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v23

    const v24, 0xdffb

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_12

    add-int/lit8 v23, v16, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v23

    const v24, 0xdfff

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_12

    .line 398
    add-int/lit8 v23, v16, 0x1

    add-int/lit8 v24, v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 399
    add-int/lit8 v22, v22, 0x2

    .line 400
    add-int/lit8 v16, v16, 0x2

    .line 403
    :cond_12
    const/16 v23, 0x0

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v12

    .line 404
    .local v12, "drawable":Lorg/telegram/messenger/Emoji$EmojiDrawable;
    if-eqz v12, :cond_13

    .line 405
    new-instance v20, Lorg/telegram/messenger/Emoji$EmojiSpan;

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, p2

    move-object/from16 v3, p1

    invoke-direct {v0, v12, v1, v2, v3}, Lorg/telegram/messenger/Emoji$EmojiSpan;-><init>(Lorg/telegram/messenger/Emoji$EmojiDrawable;IILandroid/graphics/Paint$FontMetricsInt;)V

    .line 406
    .local v20, "span":Lorg/telegram/messenger/Emoji$EmojiSpan;
    add-int v23, v21, v22

    const/16 v24, 0x21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 407
    add-int/lit8 v15, v15, 0x1

    .line 409
    .end local v20    # "span":Lorg/telegram/messenger/Emoji$EmojiSpan;
    :cond_13
    const/16 v22, 0x0

    .line 410
    const/16 v21, -0x1

    .line 411
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 412
    const/4 v11, 0x0

    .line 414
    .end local v12    # "drawable":Lorg/telegram/messenger/Emoji$EmojiDrawable;
    :cond_14
    const/16 v23, 0x32

    move/from16 v0, v23

    if-lt v15, v0, :cond_16

    .end local v6    # "a":I
    .end local v7    # "c":C
    :cond_15
    move-object/from16 p0, v19

    .line 422
    goto/16 :goto_0

    .line 337
    .restart local v6    # "a":I
    .restart local v7    # "c":C
    :cond_16
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 418
    .end local v6    # "a":I
    .end local v7    # "c":C
    :catch_0
    move-exception v13

    .line 419
    .local v13, "e":Ljava/lang/Exception;
    const-string/jumbo v23, "tmessages"

    move-object/from16 v0, v23

    invoke-static {v0, v13}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
