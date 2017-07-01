.class public Lorg/telegram/ui/Components/PlayerView;
.super Landroid/widget/FrameLayout;
.source "PlayerView.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field private animatorSet:Landroid/animation/AnimatorSet;

.field private fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private lastMessageObject:Lorg/telegram/messenger/MessageObject;

.field private playButton:Landroid/widget/ImageView;

.field private titleTextView:Landroid/widget/TextView;

.field private topPadding:F

.field private visible:Z

.field private yPosition:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentFragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object p2, p0, Lorg/telegram/ui/Components/PlayerView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PlayerView;->visible:Z

    .line 54
    iget-object v0, p0, Lorg/telegram/ui/Components/PlayerView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 56
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/PlayerView;->setTag(Ljava/lang/Object;)V

    .line 57
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 58
    .local v8, "frameLayout":Landroid/widget/FrameLayout;
    const/4 v0, -0x1

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 59
    const/4 v0, -0x1

    const/high16 v1, 0x42100000    # 36.0f

    const/16 v2, 0x33

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lorg/telegram/ui/Components/PlayerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    new-instance v9, Landroid/view/View;

    invoke-direct {v9, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 62
    .local v9, "shadow":Landroid/view/View;
    const v0, 0x7f020129

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 63
    const/4 v0, -0x1

    const/high16 v1, 0x40400000    # 3.0f

    const/16 v2, 0x33

    const/4 v3, 0x0

    const/high16 v4, 0x42100000    # 36.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/Components/PlayerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PlayerView;->playButton:Landroid/widget/ImageView;

    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Components/PlayerView;->playButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 67
    iget-object v10, p0, Lorg/telegram/ui/Components/PlayerView;->playButton:Landroid/widget/ImageView;

    const/16 v0, 0x24

    const/high16 v1, 0x42100000    # 36.0f

    const/16 v2, 0x33

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lorg/telegram/ui/Components/PlayerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Components/PlayerView;->playButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/PlayerView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PlayerView$1;-><init>(Lorg/telegram/ui/Components/PlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PlayerView;->titleTextView:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lorg/telegram/ui/Components/PlayerView;->titleTextView:Landroid/widget/TextView;

    const v1, -0xd0cbc8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/PlayerView;->titleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/PlayerView;->titleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 83
    iget-object v0, p0, Lorg/telegram/ui/Components/PlayerView;->titleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 84
    iget-object v0, p0, Lorg/telegram/ui/Components/PlayerView;->titleTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 85
    iget-object v0, p0, Lorg/telegram/ui/Components/PlayerView;->titleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 86
    iget-object v0, p0, Lorg/telegram/ui/Components/PlayerView;->titleTextView:Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 87
    iget-object v10, p0, Lorg/telegram/ui/Components/PlayerView;->titleTextView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, 0x42100000    # 36.0f

    const/16 v2, 0x33

    const/high16 v3, 0x420c0000    # 35.0f

    const/4 v4, 0x0

    const/high16 v5, 0x42100000    # 36.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lorg/telegram/ui/Components/PlayerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object v0, p0, Lorg/telegram/ui/Components/PlayerView;->titleTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getSuperTypeFace()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 91
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 92
    .local v7, "closeButton":Landroid/widget/ImageView;
    const v0, 0x7f0201df

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 94
    const/16 v0, 0x24

    const/16 v1, 0x24

    const/16 v2, 0x35

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Components/PlayerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    new-instance v0, Lorg/telegram/ui/Components/PlayerView$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PlayerView$2;-><init>(Lorg/telegram/ui/Components/PlayerView;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    new-instance v0, Lorg/telegram/ui/Components/PlayerView$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PlayerView$3;-><init>(Lorg/telegram/ui/Components/PlayerView;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/PlayerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/PlayerView;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PlayerView;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/telegram/ui/Components/PlayerView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/PlayerView;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PlayerView;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/telegram/ui/Components/PlayerView;->animatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/PlayerView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PlayerView;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 38
    iput-object p1, p0, Lorg/telegram/ui/Components/PlayerView;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private checkPlayer(Z)V
    .locals 14
    .param p1, "create"    # Z

    .prologue
    const/high16 v13, 0x42100000    # 36.0f

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 158
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    .line 159
    .local v1, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v4, p0, Lorg/telegram/ui/Components/PlayerView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    .line 160
    .local v0, "fragmentView":Landroid/view/View;
    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    .line 162
    :cond_0
    const/4 p1, 0x1

    .line 165
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-nez v4, :cond_7

    .line 166
    :cond_2
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/ui/Components/PlayerView;->lastMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 167
    iget-boolean v4, p0, Lorg/telegram/ui/Components/PlayerView;->visible:Z

    if-eqz v4, :cond_4

    .line 168
    iput-boolean v9, p0, Lorg/telegram/ui/Components/PlayerView;->visible:Z

    .line 169
    if-eqz p1, :cond_5

    .line 170
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PlayerView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3

    .line 171
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/PlayerView;->setVisibility(I)V

    .line 173
    :cond_3
    invoke-virtual {p0, v11}, Lorg/telegram/ui/Components/PlayerView;->setTopPadding(F)V

    .line 244
    :cond_4
    :goto_0
    return-void

    .line 175
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Components/PlayerView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_6

    .line 176
    iget-object v4, p0, Lorg/telegram/ui/Components/PlayerView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    .line 177
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/ui/Components/PlayerView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 179
    :cond_6
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Components/PlayerView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 180
    iget-object v4, p0, Lorg/telegram/ui/Components/PlayerView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v5, v12, [Landroid/animation/Animator;

    const-string/jumbo v6, "translationY"

    new-array v7, v10, [F

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    aput v8, v7, v9

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v9

    const-string/jumbo v6, "topPadding"

    new-array v7, v10, [F

    aput v11, v7, v9

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 182
    iget-object v4, p0, Lorg/telegram/ui/Components/PlayerView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 183
    iget-object v4, p0, Lorg/telegram/ui/Components/PlayerView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v5, Lorg/telegram/ui/Components/PlayerView$4;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/PlayerView$4;-><init>(Lorg/telegram/ui/Components/PlayerView;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 192
    iget-object v4, p0, Lorg/telegram/ui/Components/PlayerView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 196
    :cond_7
    if-eqz p1, :cond_8

    iget v4, p0, Lorg/telegram/ui/Components/PlayerView;->topPadding:F

    cmpl-float v4, v4, v11

    if-nez v4, :cond_8

    .line 197
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/PlayerView;->setTopPadding(F)V

    .line 198
    invoke-virtual {p0, v11}, Lorg/telegram/ui/Components/PlayerView;->setTranslationY(F)V

    .line 199
    iput v11, p0, Lorg/telegram/ui/Components/PlayerView;->yPosition:F

    .line 201
    :cond_8
    iget-boolean v4, p0, Lorg/telegram/ui/Components/PlayerView;->visible:Z

    if-nez v4, :cond_b

    .line 202
    if-nez p1, :cond_a

    .line 203
    iget-object v4, p0, Lorg/telegram/ui/Components/PlayerView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_9

    .line 204
    iget-object v4, p0, Lorg/telegram/ui/Components/PlayerView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    .line 205
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/ui/Components/PlayerView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 207
    :cond_9
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Components/PlayerView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 208
    iget-object v4, p0, Lorg/telegram/ui/Components/PlayerView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v5, v12, [Landroid/animation/Animator;

    const-string/jumbo v6, "translationY"

    new-array v7, v12, [F

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    aput v8, v7, v9

    aput v11, v7, v10

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v9

    const-string/jumbo v6, "topPadding"

    new-array v7, v10, [F

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v9

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 210
    iget-object v4, p0, Lorg/telegram/ui/Components/PlayerView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 211
    iget-object v4, p0, Lorg/telegram/ui/Components/PlayerView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v5, Lorg/telegram/ui/Components/PlayerView$5;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/PlayerView$5;-><init>(Lorg/telegram/ui/Components/PlayerView;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 219
    iget-object v4, p0, Lorg/telegram/ui/Components/PlayerView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 221
    :cond_a
    iput-boolean v10, p0, Lorg/telegram/ui/Components/PlayerView;->visible:Z

    .line 222
    invoke-virtual {p0, v9}, Lorg/telegram/ui/Components/PlayerView;->setVisibility(I)V

    .line 224
    :cond_b
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MediaController;->isAudioPaused()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 225
    iget-object v4, p0, Lorg/telegram/ui/Components/PlayerView;->playButton:Landroid/widget/ImageView;

    const v5, 0x7f0201e1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 229
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/PlayerView;->lastMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eq v4, v1, :cond_4

    .line 230
    iput-object v1, p0, Lorg/telegram/ui/Components/PlayerView;->lastMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 232
    iget-object v4, p0, Lorg/telegram/ui/Components/PlayerView;->lastMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 233
    new-instance v3, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v4, "%s %s"

    new-array v5, v12, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 234
    .local v3, "stringBuilder":Landroid/text/SpannableStringBuilder;
    iget-object v4, p0, Lorg/telegram/ui/Components/PlayerView;->titleTextView:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 239
    :goto_2
    new-instance v2, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string/jumbo v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    const v5, -0xd0cbc8

    invoke-direct {v2, v4, v9, v5}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;II)V

    .line 240
    .local v2, "span":Lorg/telegram/ui/Components/TypefaceSpan;
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x12

    invoke-virtual {v3, v2, v9, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 241
    iget-object v4, p0, Lorg/telegram/ui/Components/PlayerView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 227
    .end local v2    # "span":Lorg/telegram/ui/Components/TypefaceSpan;
    .end local v3    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_c
    iget-object v4, p0, Lorg/telegram/ui/Components/PlayerView;->playButton:Landroid/widget/ImageView;

    const v5, 0x7f0201e0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 236
    :cond_d
    new-instance v3, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v4, "%s - %s"

    new-array v5, v12, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 237
    .restart local v3    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    iget-object v4, p0, Lorg/telegram/ui/Components/PlayerView;->titleTextView:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_2
.end method


# virtual methods
.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 152
    sget v0, Lorg/telegram/messenger/NotificationCenter;->audioDidStarted:I

    if-eq p1, v0, :cond_0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    if-eq p1, v0, :cond_0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    if-ne p1, v0, :cond_1

    .line 153
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PlayerView;->checkPlayer(Z)V

    .line 155
    :cond_1
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 255
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 256
    .local v0, "restoreToCount":I
    iget v2, p0, Lorg/telegram/ui/Components/PlayerView;->yPosition:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 257
    const/4 v2, 0x0

    iget v3, p0, Lorg/telegram/ui/Components/PlayerView;->yPosition:F

    neg-float v3, v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    const/high16 v5, 0x421c0000    # 39.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 259
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    .line 260
    .local v1, "result":Z
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 261
    return v1
.end method

.method public getTopPadding()F
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/Components/PlayerView;->topPadding:F

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 139
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 140
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 141
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioDidStarted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 142
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PlayerView;->checkPlayer(Z)V

    .line 143
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/PlayerView;->topPadding:F

    .line 131
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 132
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 133
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioDidStarted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 134
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 147
    const/high16 v0, 0x421c0000    # 39.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 148
    return-void
.end method

.method public setTopPadding(F)V
    .locals 3
    .param p1, "value"    # F

    .prologue
    const/4 v2, 0x0

    .line 118
    iput p1, p0, Lorg/telegram/ui/Components/PlayerView;->topPadding:F

    .line 119
    iget-object v1, p0, Lorg/telegram/ui/Components/PlayerView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lorg/telegram/ui/Components/PlayerView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    .line 121
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 122
    iget v1, p0, Lorg/telegram/ui/Components/PlayerView;->topPadding:F

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 125
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setTranslationY(F)V
    .locals 0
    .param p1, "translationY"    # F

    .prologue
    .line 248
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 249
    iput p1, p0, Lorg/telegram/ui/Components/PlayerView;->yPosition:F

    .line 250
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PlayerView;->invalidate()V

    .line 251
    return-void
.end method
