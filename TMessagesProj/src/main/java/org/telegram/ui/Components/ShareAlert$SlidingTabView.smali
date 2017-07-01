.class Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;
.super Landroid/widget/LinearLayout;
.source "ShareAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ShareAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlidingTabView"
.end annotation


# instance fields
.field private animateTabXTo:F

.field private iconColor:I

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

.field private sIconColor:I

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

.field final synthetic this$0:Lorg/telegram/ui/Components/ShareAlert;

.field private totalAnimationDiff:J


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1090
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    .line 1091
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1072
    const/4 v0, 0x6

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->selectedTab:I

    .line 1073
    iput v2, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->tabCount:I

    .line 1074
    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->tabWidth:F

    .line 1075
    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->tabX:F

    .line 1076
    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->animateTabXTo:F

    .line 1077
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->paint:Landroid/graphics/Paint;

    .line 1078
    iput-wide v4, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->startAnimationTime:J

    .line 1079
    iput-wide v4, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->totalAnimationDiff:J

    .line 1080
    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->startAnimationX:F

    .line 1086
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->tabs:Ljava/util/HashMap;

    .line 1087
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->tabInPosition:Ljava/util/HashMap;

    .line 1088
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->positionOfTab:Ljava/util/HashMap;

    .line 1092
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->setOrientation(I)V

    .line 1093
    const v0, -0x111112

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->setBackgroundColor(I)V

    .line 1094
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->setWeightSum(F)V

    .line 1096
    invoke-static {}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getThemeColor()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->sIconColor:I

    .line 1097
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->sIconColor:I

    const v1, 0x3ecccccd    # 0.4f

    invoke-static {v0, v1}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->adjustAlpha(IF)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->iconColor:I

    .line 1099
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->sIconColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1100
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->setWillNotDraw(Z)V

    .line 1101
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 1102
    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;
    .param p1, "x1"    # I

    .prologue
    .line 1070
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->didSelectTab(I)V

    return-void
.end method

.method private animateToTab(I)V
    .locals 2
    .param p1, "tab"    # I

    .prologue
    .line 1186
    int-to-float v0, p1

    iget v1, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->tabWidth:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->animateTabXTo:F

    .line 1187
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->tabX:F

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->startAnimationX:F

    .line 1188
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->totalAnimationDiff:J

    .line 1189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->startAnimationTime:J

    .line 1190
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->invalidate()V

    .line 1191
    return-void
.end method

.method private didSelectTab(I)V
    .locals 5
    .param p1, "tab"    # I

    .prologue
    .line 1170
    iget v2, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->selectedTab:I

    if-ne v2, p1, :cond_1

    .line 1183
    :cond_0
    :goto_0
    return-void

    .line 1173
    :cond_1
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->selectedTab:I

    .line 1174
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->animateToTab(I)V

    .line 1176
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "mainconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1177
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1178
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "share_alert_selected_tab"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1179
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1180
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$600(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1181
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$600(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method


# virtual methods
.method public addImageTab(I)V
    .locals 6
    .param p1, "tab"    # I

    .prologue
    .line 1105
    iget v1, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->tabCount:I

    .line 1106
    .local v1, "position":I
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1107
    .local v2, "tabImageView":Landroid/widget/ImageView;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 1108
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1109
    packed-switch p1, :pswitch_data_0

    .line 1132
    :goto_0
    iget v3, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->selectedTab:I

    if-ne p1, v3, :cond_0

    .line 1133
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->sIconColor:I

    invoke-static {v3, v4}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/graphics/drawable/Drawable;I)V

    .line 1137
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->tabs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->tabInPosition:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->positionOfTab:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView$1;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView$1;-><init>(Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1149
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->addView(Landroid/view/View;)V

    .line 1150
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1151
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, -0x1

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1152
    const/4 v3, 0x0

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1153
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1154
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1156
    iget v3, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->tabCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->tabCount:I

    .line 1157
    return-void

    .line 1111
    .end local v0    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_0
    const v3, 0x7f020288

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1114
    :pswitch_1
    const v3, 0x7f02028a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1117
    :pswitch_2
    const v3, 0x7f020290

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1120
    :pswitch_3
    const v3, 0x7f02028e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1123
    :pswitch_4
    const v3, 0x7f020294

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1126
    :pswitch_5
    const v3, 0x7f02028c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1129
    :pswitch_6
    const v3, 0x7f020283

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 1135
    :cond_0
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->iconColor:I

    invoke-static {v3, v4}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/graphics/drawable/Drawable;I)V

    goto/16 :goto_1

    .line 1109
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
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const-wide/16 v4, 0xc8

    .line 1202
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->tabX:F

    iget v1, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->animateTabXTo:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->startAnimationTime:J

    sub-long v6, v0, v2

    .line 1204
    .local v6, "dt":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->startAnimationTime:J

    .line 1205
    iget-wide v0, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->totalAnimationDiff:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->totalAnimationDiff:J

    .line 1206
    iget-wide v0, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->totalAnimationDiff:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 1207
    iput-wide v4, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->totalAnimationDiff:J

    .line 1208
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->animateTabXTo:F

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->tabX:F

    .line 1215
    .end local v6    # "dt":J
    :cond_0
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->tabX:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->getHeight()I

    move-result v0

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->tabX:F

    iget v3, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->tabWidth:F

    add-float/2addr v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1216
    return-void

    .line 1210
    .restart local v6    # "dt":J
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->startAnimationX:F

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    iget-wide v2, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->totalAnimationDiff:J

    long-to-float v2, v2

    const/high16 v3, 0x43480000    # 200.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->animateTabXTo:F

    iget v3, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->startAnimationX:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->tabX:F

    .line 1211
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->invalidate()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1195
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 1196
    sub-int v0, p4, p2

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->tabCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->tabWidth:F

    .line 1197
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->tabWidth:F

    iget v1, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->selectedTab:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->tabX:F

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->animateTabXTo:F

    .line 1198
    return-void
.end method

.method public setTabsLayout(I)V
    .locals 4
    .param p1, "tab"    # I

    .prologue
    .line 1160
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->tabs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1161
    .local v0, "myVeryOwnIterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1162
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1163
    .local v1, "pos":I
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->tabs:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->iconColor:I

    invoke-static {v2, v3}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    .line 1166
    .end local v1    # "pos":I
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->tabs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Components/ShareAlert$SlidingTabView;->sIconColor:I

    invoke-static {v2, v3}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/graphics/drawable/Drawable;I)V

    .line 1167
    return-void
.end method
