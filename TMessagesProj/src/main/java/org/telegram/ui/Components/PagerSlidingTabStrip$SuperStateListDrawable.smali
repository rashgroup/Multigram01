.class Lorg/telegram/ui/Components/PagerSlidingTabStrip$SuperStateListDrawable;
.super Landroid/graphics/drawable/StateListDrawable;
.source "PagerSlidingTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/PagerSlidingTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SuperStateListDrawable"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/PagerSlidingTabStrip;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 347
    iput-object p1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$SuperStateListDrawable;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    .line 348
    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 349
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a1

    aput v1, v0, v2

    invoke-virtual {p0, v0, p2}, Lorg/telegram/ui/Components/PagerSlidingTabStrip$SuperStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 350
    new-array v0, v2, [I

    invoke-virtual {p0, v0, p2}, Lorg/telegram/ui/Components/PagerSlidingTabStrip$SuperStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 351
    return-void
.end method


# virtual methods
.method public isStateful()Z
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 11
    .param p1, "states"    # [I

    .prologue
    .line 355
    const/4 v3, 0x0

    .line 356
    .local v3, "isStatePressedInArray":Z
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget v6, v0, v1

    .line 357
    .local v6, "state":I
    const v8, 0x10100a1

    if-ne v6, v8, :cond_0

    .line 358
    const/4 v3, 0x1

    .line 356
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 362
    .end local v6    # "state":I
    :cond_1
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v9, "ApoTheme"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 363
    .local v7, "themePreferences":Landroid/content/SharedPreferences;
    if-eqz v3, :cond_2

    .line 364
    const-string/jumbo v8, "theme_emoji_tab_scolor"

    const v9, -0xd4691e

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 365
    .local v5, "sColor":I
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-super {p0, v5, v8}, Landroid/graphics/drawable/StateListDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 370
    .end local v5    # "sColor":I
    :goto_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    move-result v8

    return v8

    .line 367
    :cond_2
    const-string/jumbo v8, "theme_emoji_tab_icolor"

    const v9, -0x575758

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 368
    .local v2, "iColor":I
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-super {p0, v2, v8}, Landroid/graphics/drawable/StateListDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1
.end method
