.class Lorg/telegram/ui/DialogsActivity$SlidingTabView;
.super Landroid/widget/LinearLayout;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/DialogsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingTabView"
.end annotation


# instance fields
.field private animateTabXTo:F

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private paint:Landroid/graphics/Paint;

.field positionOfTab:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private selectedTab:I

.field private startAnimationTime:J

.field private startAnimationX:F

.field private tabCount:I

.field tabInPosition:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tabWidth:F

.field private tabX:F

.field tabs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field private totalAnimationDiff:J


# direct methods
.method public constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;I)V
    .locals 8
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "_selectedTab"    # I

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2484
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 2485
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2469
    iput v4, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->selectedTab:I

    .line 2470
    iput v4, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->tabCount:I

    .line 2471
    iput v3, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->tabWidth:F

    .line 2472
    iput v3, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->tabX:F

    .line 2473
    iput v3, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->animateTabXTo:F

    .line 2474
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->paint:Landroid/graphics/Paint;

    .line 2475
    iput-wide v6, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->startAnimationTime:J

    .line 2476
    iput-wide v6, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->totalAnimationDiff:J

    .line 2477
    iput v3, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->startAnimationX:F

    .line 2480
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->tabs:Ljava/util/HashMap;

    .line 2481
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->tabInPosition:Ljava/util/HashMap;

    .line 2482
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->positionOfTab:Ljava/util/HashMap;

    .line 2486
    invoke-virtual {p0, v4}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->setOrientation(I)V

    .line 2488
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "ApoTheme"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2489
    .local v1, "themePreferences":Landroid/content/SharedPreferences;
    invoke-static {v1}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getSelectedTabIconColor(Landroid/content/SharedPreferences;)I

    move-result v2

    # setter for: Lorg/telegram/ui/DialogsActivity;->sIconColor:I
    invoke-static {p1, v2}, Lorg/telegram/ui/DialogsActivity;->access$3502(Lorg/telegram/ui/DialogsActivity;I)I

    .line 2490
    invoke-static {v1}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getTabsIconColor(Landroid/content/SharedPreferences;)I

    move-result v2

    # setter for: Lorg/telegram/ui/DialogsActivity;->iconColor:I
    invoke-static {p1, v2}, Lorg/telegram/ui/DialogsActivity;->access$3602(Lorg/telegram/ui/DialogsActivity;I)I

    .line 2492
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "mainconfig"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2493
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "tab_count"

    const/16 v3, 0x8

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->setWeightSum(F)V

    .line 2495
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->paint:Landroid/graphics/Paint;

    # getter for: Lorg/telegram/ui/DialogsActivity;->sIconColor:I
    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$3500(Lorg/telegram/ui/DialogsActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2496
    invoke-virtual {p0, v4}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->setWillNotDraw(Z)V

    .line 2497
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 2499
    iput p3, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->selectedTab:I

    .line 2500
    return-void
.end method

.method static synthetic access$3400(Lorg/telegram/ui/DialogsActivity$SlidingTabView;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity$SlidingTabView;
    .param p1, "x1"    # I

    .prologue
    .line 2468
    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->didSelectTab(I)V

    return-void
.end method

.method static synthetic access$3700(Lorg/telegram/ui/DialogsActivity$SlidingTabView;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity$SlidingTabView;
    .param p1, "x1"    # I

    .prologue
    .line 2468
    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->tabOnClick(I)V

    return-void
.end method

.method static synthetic access$4600(Lorg/telegram/ui/DialogsActivity$SlidingTabView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity$SlidingTabView;

    .prologue
    .line 2468
    iget v0, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->selectedTab:I

    return v0
.end method

.method private animateToTab(I)V
    .locals 2
    .param p1, "tab"    # I

    .prologue
    .line 2706
    int-to-float v0, p1

    iget v1, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->tabWidth:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->animateTabXTo:F

    .line 2707
    iget v0, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->tabX:F

    iput v0, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->startAnimationX:F

    .line 2708
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->totalAnimationDiff:J

    .line 2709
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->startAnimationTime:J

    .line 2710
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->invalidate()V

    .line 2711
    return-void
.end method

.method private didSelectTab(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 2682
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->tabInPosition:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2683
    .local v2, "tab":I
    iget v3, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->selectedTab:I

    if-ne v3, v2, :cond_0

    .line 2695
    :goto_0
    return-void

    .line 2686
    :cond_0
    iput v2, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->selectedTab:I

    .line 2687
    invoke-virtual {p0, v2}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->setTabsLayout(I)V

    .line 2689
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "mainconfig"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2690
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2691
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "selected_tab"

    iget v4, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->selectedTab:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2692
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2694
    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->animateToTab(I)V

    goto :goto_0
.end method

.method private tabOnClick(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v7, 0x0

    .line 2596
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "mainconfig"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2597
    .local v3, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2598
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->tabInPosition:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2599
    .local v4, "tabInPos":I
    const-string/jumbo v5, "selected_tab"

    iget v6, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->selectedTab:I

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 2600
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 2602
    .local v0, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    const/4 v5, 0x3

    new-array v2, v5, [Ljava/lang/CharSequence;

    const-string/jumbo v5, "DisableTab"

    const v6, 0x7f0705a1

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "SetTabAsDefault"

    const v7, 0x7f0705b8

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "MarkChatsAsRead"

    const v7, 0x7f0705ae

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 2607
    .local v2, "items":[Ljava/lang/CharSequence;
    new-instance v5, Lorg/telegram/ui/DialogsActivity$SlidingTabView$2;

    invoke-direct {v5, p0, v4, v1, v3}, Lorg/telegram/ui/DialogsActivity$SlidingTabView$2;-><init>(Lorg/telegram/ui/DialogsActivity$SlidingTabView;ILandroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 2672
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 2679
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    .end local v2    # "items":[Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-void

    .line 2674
    :cond_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->didSelectTab(I)V

    .line 2675
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;
    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2676
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;
    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method


# virtual methods
.method public addImageTab(I)V
    .locals 6
    .param p1, "tab"    # I

    .prologue
    .line 2503
    iget v1, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->tabCount:I

    .line 2504
    .local v1, "position":I
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2505
    .local v2, "tabImageView":Landroid/widget/ImageView;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 2506
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2507
    packed-switch p1, :pswitch_data_0

    .line 2533
    :goto_0
    iget v3, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->selectedTab:I

    if-ne p1, v3, :cond_0

    .line 2534
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->sIconColor:I
    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$3500(Lorg/telegram/ui/DialogsActivity;)I

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/graphics/drawable/Drawable;I)V

    .line 2538
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->tabs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2539
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->tabInPosition:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2540
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->positionOfTab:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2542
    new-instance v3, Lorg/telegram/ui/DialogsActivity$SlidingTabView$1;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/DialogsActivity$SlidingTabView$1;-><init>(Lorg/telegram/ui/DialogsActivity$SlidingTabView;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2549
    invoke-virtual {p0, v2}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->addView(Landroid/view/View;)V

    .line 2550
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2551
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, -0x1

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2552
    const/4 v3, 0x0

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2553
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2554
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2556
    iget v3, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->tabCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->tabCount:I

    .line 2557
    return-void

    .line 2509
    .end local v0    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_0
    const v3, 0x7f020287

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2512
    :pswitch_1
    const v3, 0x7f020289

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2515
    :pswitch_2
    const v3, 0x7f02028f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2518
    :pswitch_3
    const v3, 0x7f02028d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2521
    :pswitch_4
    const v3, 0x7f020293

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2524
    :pswitch_5
    const v3, 0x7f02028b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 2527
    :pswitch_6
    const v3, 0x7f020282

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 2530
    :pswitch_7
    const v3, 0x7f020292

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 2536
    :cond_0
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->iconColor:I
    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$3600(Lorg/telegram/ui/DialogsActivity;)I

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/graphics/drawable/Drawable;I)V

    goto/16 :goto_1

    .line 2507
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getSeletedTab()I
    .locals 2

    .prologue
    .line 2698
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->positionOfTab:Ljava/util/HashMap;

    iget v1, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->selectedTab:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 2702
    iget v0, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->tabCount:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const-wide/16 v4, 0x1

    .line 2722
    iget v0, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->tabX:F

    iget v1, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->animateTabXTo:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 2723
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->startAnimationTime:J

    sub-long v6, v0, v2

    .line 2724
    .local v6, "dt":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->startAnimationTime:J

    .line 2725
    iget-wide v0, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->totalAnimationDiff:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->totalAnimationDiff:J

    .line 2726
    iget-wide v0, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->totalAnimationDiff:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 2727
    iput-wide v4, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->totalAnimationDiff:J

    .line 2728
    iget v0, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->animateTabXTo:F

    iput v0, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->tabX:F

    .line 2735
    .end local v6    # "dt":J
    :cond_0
    :goto_0
    iget v1, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->tabX:F

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->getHeight()I

    move-result v0

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->tabX:F

    iget v3, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->tabWidth:F

    add-float/2addr v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2736
    return-void

    .line 2730
    .restart local v6    # "dt":J
    :cond_1
    iget v0, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->startAnimationX:F

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    iget-wide v2, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->totalAnimationDiff:J

    long-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v1

    iget v2, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->animateTabXTo:F

    iget v3, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->startAnimationX:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->tabX:F

    .line 2731
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->invalidate()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 2715
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2716
    sub-int v0, p4, p2

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->tabCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->tabWidth:F

    .line 2717
    iget v1, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->tabWidth:F

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->positionOfTab:Ljava/util/HashMap;

    iget v2, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->selectedTab:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->tabX:F

    iput v0, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->animateTabXTo:F

    .line 2718
    return-void
.end method

.method public setTabsLayout(I)V
    .locals 5
    .param p1, "tab"    # I

    .prologue
    .line 2560
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->tabs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2561
    .local v0, "myVeryOwnIterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2562
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2563
    .local v1, "pos":I
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->tabs:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->iconColor:I
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$3600(Lorg/telegram/ui/DialogsActivity;)I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    .line 2566
    .end local v1    # "pos":I
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->tabs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->sIconColor:I
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$3500(Lorg/telegram/ui/DialogsActivity;)I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/graphics/drawable/Drawable;I)V

    .line 2567
    packed-switch p1, :pswitch_data_0

    .line 2593
    :goto_1
    return-void

    .line 2569
    :pswitch_0
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$3800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    const-string/jumbo v3, "RobotTab"

    const v4, 0x7f070428

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2572
    :pswitch_1
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$3900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    const-string/jumbo v3, "ChannelTab"

    const v4, 0x7f07014e

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2575
    :pswitch_2
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$4000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    const-string/jumbo v3, "SuperGroupsTab"

    const v4, 0x7f0705bc

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2578
    :pswitch_3
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$4100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    const-string/jumbo v3, "GroupsTab"

    const v4, 0x7f07025f

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2581
    :pswitch_4
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$4200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    const-string/jumbo v3, "ContactTab"

    const v4, 0x7f07017a

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2584
    :pswitch_5
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$4300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    const-string/jumbo v3, "FavoriteTab"

    const v4, 0x7f0701f4

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2587
    :pswitch_6
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$4400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    const-string/jumbo v3, "AppName"

    const v4, 0x7f07009a

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2590
    :pswitch_7
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$SlidingTabView;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$4500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    const-string/jumbo v3, "UnreadTab"

    const v4, 0x7f0704db

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2567
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
