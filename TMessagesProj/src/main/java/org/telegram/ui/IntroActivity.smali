.class public Lorg/telegram/ui/IntroActivity;
.super Landroid/app/Activity;
.source "IntroActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/IntroActivity$IntroAdapter;
    }
.end annotation


# instance fields
.field private bottomPages:Landroid/view/ViewGroup;

.field private icons:[I

.field private justCreated:Z

.field private lastPage:I

.field private messages:[I

.field private startPressed:Z

.field private titles:[I

.field private topImage1:Landroid/widget/ImageView;

.field private topImage2:Landroid/widget/ImageView;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    iput v0, p0, Lorg/telegram/ui/IntroActivity;->lastPage:I

    .line 44
    iput-boolean v0, p0, Lorg/telegram/ui/IntroActivity;->justCreated:Z

    .line 45
    iput-boolean v0, p0, Lorg/telegram/ui/IntroActivity;->startPressed:Z

    .line 265
    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/IntroActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 37
    iget v0, p0, Lorg/telegram/ui/IntroActivity;->lastPage:I

    return v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/IntroActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lorg/telegram/ui/IntroActivity;->lastPage:I

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/IntroActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/IntroActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity;->topImage1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/IntroActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity;->topImage2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/IntroActivity;)[I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity;->icons:[I

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/IntroActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 37
    iget-boolean v0, p0, Lorg/telegram/ui/IntroActivity;->startPressed:Z

    return v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/IntroActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lorg/telegram/ui/IntroActivity;->startPressed:Z

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/IntroActivity;)[I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity;->titles:[I

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/IntroActivity;)[I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity;->messages:[I

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/IntroActivity;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity;->bottomPages:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v9, 0x40800000    # 4.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    const/4 v3, 0x7

    const/4 v6, 0x1

    .line 52
    const v2, 0x7f0a0086

    invoke-virtual {p0, v2}, Lorg/telegram/ui/IntroActivity;->setTheme(I)V

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme;->loadRecources(Landroid/content/Context;)V

    .line 55
    invoke-virtual {p0, v6}, Lorg/telegram/ui/IntroActivity;->requestWindowFeature(I)Z

    .line 57
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 58
    const v2, 0x7f030031

    invoke-virtual {p0, v2}, Lorg/telegram/ui/IntroActivity;->setContentView(I)V

    .line 64
    :goto_0
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_4

    .line 65
    new-array v2, v3, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lorg/telegram/ui/IntroActivity;->icons:[I

    .line 74
    new-array v2, v3, [I

    fill-array-data v2, :array_1

    iput-object v2, p0, Lorg/telegram/ui/IntroActivity;->titles:[I

    .line 83
    new-array v2, v3, [I

    fill-array-data v2, :array_2

    iput-object v2, p0, Lorg/telegram/ui/IntroActivity;->messages:[I

    .line 121
    :goto_1
    const v2, 0x7f0e00e2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 122
    const v2, 0x7f0e00e3

    invoke-virtual {p0, v2}, Lorg/telegram/ui/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 123
    .local v1, "startMessagingButton":Landroid/widget/TextView;
    const-string/jumbo v2, "StartMessaging"

    const v3, 0x7f07049a

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_0

    .line 125
    const-string/jumbo v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 127
    :cond_0
    const v2, 0x7f02019e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 128
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 129
    new-instance v0, Landroid/animation/StateListAnimator;

    invoke-direct {v0}, Landroid/animation/StateListAnimator;-><init>()V

    .line 130
    .local v0, "animator":Landroid/animation/StateListAnimator;
    new-array v2, v6, [I

    const v3, 0x10100a7

    aput v3, v2, v7

    const-string/jumbo v3, "translationZ"

    const/4 v4, 0x2

    new-array v4, v4, [F

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 131
    new-array v2, v7, [I

    const-string/jumbo v3, "translationZ"

    const/4 v4, 0x2

    new-array v4, v4, [F

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 132
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 134
    .end local v0    # "animator":Landroid/animation/StateListAnimator;
    :cond_1
    const v2, 0x7f0e00e0

    invoke-virtual {p0, v2}, Lorg/telegram/ui/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lorg/telegram/ui/IntroActivity;->topImage1:Landroid/widget/ImageView;

    .line 135
    const v2, 0x7f0e00e1

    invoke-virtual {p0, v2}, Lorg/telegram/ui/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lorg/telegram/ui/IntroActivity;->topImage2:Landroid/widget/ImageView;

    .line 136
    const v2, 0x7f0e00e4

    invoke-virtual {p0, v2}, Lorg/telegram/ui/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lorg/telegram/ui/IntroActivity;->bottomPages:Landroid/view/ViewGroup;

    .line 137
    iget-object v2, p0, Lorg/telegram/ui/IntroActivity;->topImage2:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    iget-object v2, p0, Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lorg/telegram/ui/IntroActivity$IntroAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lorg/telegram/ui/IntroActivity$IntroAdapter;-><init>(Lorg/telegram/ui/IntroActivity;Lorg/telegram/ui/IntroActivity$1;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 139
    iget-object v2, p0, Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v7}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 140
    iget-object v2, p0, Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v6}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 141
    iget-object v2, p0, Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lorg/telegram/ui/IntroActivity$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/IntroActivity$1;-><init>(Lorg/telegram/ui/IntroActivity;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 216
    new-instance v2, Lorg/telegram/ui/IntroActivity$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/IntroActivity$2;-><init>(Lorg/telegram/ui/IntroActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v2, :cond_2

    .line 230
    new-instance v2, Lorg/telegram/ui/IntroActivity$3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/IntroActivity$3;-><init>(Lorg/telegram/ui/IntroActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 239
    :cond_2
    iput-boolean v6, p0, Lorg/telegram/ui/IntroActivity;->justCreated:Z

    .line 240
    return-void

    .line 60
    .end local v1    # "startMessagingButton":Landroid/widget/TextView;
    :cond_3
    invoke-virtual {p0, v6}, Lorg/telegram/ui/IntroActivity;->setRequestedOrientation(I)V

    .line 61
    const v2, 0x7f030030

    invoke-virtual {p0, v2}, Lorg/telegram/ui/IntroActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 93
    :cond_4
    new-array v2, v3, [I

    fill-array-data v2, :array_3

    iput-object v2, p0, Lorg/telegram/ui/IntroActivity;->icons:[I

    .line 102
    new-array v2, v3, [I

    fill-array-data v2, :array_4

    iput-object v2, p0, Lorg/telegram/ui/IntroActivity;->titles:[I

    .line 111
    new-array v2, v3, [I

    fill-array-data v2, :array_5

    iput-object v2, p0, Lorg/telegram/ui/IntroActivity;->messages:[I

    goto/16 :goto_1

    .line 65
    nop

    :array_0
    .array-data 4
        0x7f02019d
        0x7f02019c
        0x7f02019b
        0x7f02019a
        0x7f020199
        0x7f020198
        0x7f020196
    .end array-data

    .line 74
    :array_1
    .array-data 4
        0x7f0703c1
        0x7f0703bf
        0x7f0703bd
        0x7f0703bb
        0x7f0703b9
        0x7f0703b7
        0x7f0703b5
    .end array-data

    .line 83
    :array_2
    .array-data 4
        0x7f0703c0
        0x7f0703be
        0x7f0703bc
        0x7f0703ba
        0x7f0703b8
        0x7f0703b6
        0x7f0703b4
    .end array-data

    .line 93
    :array_3
    .array-data 4
        0x7f020196
        0x7f020198
        0x7f020199
        0x7f02019a
        0x7f02019b
        0x7f02019c
        0x7f02019d
    .end array-data

    .line 102
    :array_4
    .array-data 4
        0x7f0703b5
        0x7f0703b7
        0x7f0703b9
        0x7f0703bb
        0x7f0703bd
        0x7f0703bf
        0x7f0703c1
    .end array-data

    .line 111
    :array_5
    .array-data 4
        0x7f0703b4
        0x7f0703b6
        0x7f0703b8
        0x7f0703ba
        0x7f0703bc
        0x7f0703be
        0x7f0703c0
    .end array-data
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 261
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 262
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->unregisterUpdates()V

    .line 263
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x0

    .line 244
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 245
    iget-boolean v0, p0, Lorg/telegram/ui/IntroActivity;->justCreated:Z

    if-eqz v0, :cond_0

    .line 246
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 248
    iput v2, p0, Lorg/telegram/ui/IntroActivity;->lastPage:I

    .line 253
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/IntroActivity;->justCreated:Z

    .line 255
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->checkForCrashes(Landroid/app/Activity;)V

    .line 256
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->checkForUpdates(Landroid/app/Activity;)V

    .line 257
    return-void

    .line 250
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 251
    iput v1, p0, Lorg/telegram/ui/IntroActivity;->lastPage:I

    goto :goto_0
.end method
