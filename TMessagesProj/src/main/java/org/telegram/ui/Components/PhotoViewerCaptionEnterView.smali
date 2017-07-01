.class public Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
.super Landroid/widget/FrameLayout;
.source "PhotoViewerCaptionEnterView.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$SizeNotifierFrameLayoutPhotoDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;
    }
.end annotation


# instance fields
.field private audioInterfaceState:I

.field private currentActionMode:Landroid/view/ActionMode;

.field private delegate:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;

.field private emojiButton:Landroid/widget/ImageView;

.field private emojiPadding:I

.field private emojiView:Lorg/telegram/ui/Components/EmojiView;

.field private innerTextChange:Z

.field private keyboardHeight:I

.field private keyboardHeightLand:I

.field private keyboardVisible:Z

.field private lastSizeChangeValue1:I

.field private lastSizeChangeValue2:Z

.field private messageEditText:Landroid/widget/EditText;

.field private runningAnimation:Landroid/animation/AnimatorSet;

.field private runningAnimation2:Landroid/animation/AnimatorSet;

.field private runningAnimationAudio:Landroid/animation/ObjectAnimator;

.field private runningAnimationType:I

.field private sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

.field private windowView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;Landroid/view/View;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;
    .param p3, "window"    # Landroid/view/View;

    .prologue
    const/high16 v1, -0x40000000    # -2.0f

    const/4 v0, -0x1

    const/4 v11, 0x1

    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 81
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 82
    const/high16 v2, 0x7f000000

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setBackgroundColor(I)V

    .line 83
    invoke-virtual {p0, v11}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setFocusable(Z)V

    .line 84
    invoke-virtual {p0, v11}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setFocusableInTouchMode(Z)V

    .line 85
    iput-object p3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->windowView:Landroid/view/View;

    .line 87
    iput-object p2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    .line 89
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 90
    .local v9, "textFieldContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 91
    const/16 v2, 0x33

    const/high16 v3, 0x40000000    # 2.0f

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v9, v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 94
    .local v7, "frameLayout":Landroid/widget/FrameLayout;
    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v10, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v9, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiButton:Landroid/widget/ImageView;

    .line 97
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiButton:Landroid/widget/ImageView;

    const v3, 0x7f02016f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 99
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiButton:Landroid/widget/ImageView;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v2, v3, v5, v10, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 100
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiButton:Landroid/widget/ImageView;

    const/16 v3, 0x30

    const/16 v5, 0x30

    const/16 v6, 0x53

    invoke-static {v3, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$1;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    new-instance v2, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    .line 123
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 124
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    new-instance v3, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 152
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    new-instance v3, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$4;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$4;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setCustomInsertionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 180
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    const-string/jumbo v3, "AddCaption"

    const v5, 0x7f07006e

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-static {}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getSuperTypeFace()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 183
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 184
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getInputType()I

    move-result v3

    or-int/lit16 v3, v3, 0x4000

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 185
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 186
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v10}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 187
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v2, v11, v3}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 188
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 189
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    const/high16 v3, 0x41300000    # 11.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v2, v10, v3, v10, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 190
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 192
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 193
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    const v3, -0x4d000001

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 194
    new-array v8, v11, [Landroid/text/InputFilter;

    .line 195
    .local v8, "inputFilters":[Landroid/text/InputFilter;
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xc8

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v8, v10

    .line 196
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 197
    iget-object v10, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    const/16 v2, 0x53

    const/high16 v3, 0x42500000    # 52.0f

    const/high16 v5, 0x40c00000    # 6.0f

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v10, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$5;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 214
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$6;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$7;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 274
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    .param p1, "x1"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->showPopup(I)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->openKeyboardInternal()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->currentActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 45
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->currentActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Landroid/view/ActionMode;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->fixActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    .prologue
    .line 45
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    .prologue
    .line 45
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->innerTextChange:Z

    return v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->innerTextChange:Z

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->delegate:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private fixActionMode(Landroid/view/ActionMode;)V
    .locals 14
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 288
    :try_start_0
    const-string/jumbo v12, "com.android.internal.view.FloatingActionMode"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 289
    .local v0, "classActionMode":Ljava/lang/Class;
    const-string/jumbo v12, "mFloatingToolbar"

    invoke-virtual {v0, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 290
    .local v5, "fieldToolbar":Ljava/lang/reflect/Field;
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 291
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 293
    .local v11, "toolbar":Ljava/lang/Object;
    const-string/jumbo v12, "com.android.internal.widget.FloatingToolbar"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 294
    .local v1, "classToolbar":Ljava/lang/Class;
    const-string/jumbo v12, "mPopup"

    invoke-virtual {v1, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 295
    .local v6, "fieldToolbarPopup":Ljava/lang/reflect/Field;
    const-string/jumbo v12, "mWidthChanged"

    invoke-virtual {v1, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 296
    .local v8, "fieldToolbarWidth":Ljava/lang/reflect/Field;
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 297
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 298
    invoke-virtual {v6, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 300
    .local v10, "popup":Ljava/lang/Object;
    const-string/jumbo v12, "com.android.internal.widget.FloatingToolbar$FloatingToolbarPopup"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 301
    .local v2, "classToolbarPopup":Ljava/lang/Class;
    const-string/jumbo v12, "mParent"

    invoke-virtual {v2, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 302
    .local v7, "fieldToolbarPopupParent":Ljava/lang/reflect/Field;
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 304
    invoke-virtual {v7, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 305
    .local v3, "currentView":Landroid/view/View;
    iget-object v12, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->windowView:Landroid/view/View;

    if-eq v3, v12, :cond_0

    .line 306
    iget-object v12, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->windowView:Landroid/view/View;

    invoke-virtual {v7, v10, v12}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 308
    const-string/jumbo v12, "updateViewLocationInWindow"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v0, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 309
    .local v9, "method":Ljava/lang/reflect/Method;
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 310
    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v9, p1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    .end local v0    # "classActionMode":Ljava/lang/Class;
    .end local v1    # "classToolbar":Ljava/lang/Class;
    .end local v2    # "classToolbarPopup":Ljava/lang/Class;
    .end local v3    # "currentView":Landroid/view/View;
    .end local v5    # "fieldToolbar":Ljava/lang/reflect/Field;
    .end local v6    # "fieldToolbarPopup":Ljava/lang/reflect/Field;
    .end local v7    # "fieldToolbarPopupParent":Ljava/lang/reflect/Field;
    .end local v8    # "fieldToolbarWidth":Ljava/lang/reflect/Field;
    .end local v9    # "method":Ljava/lang/reflect/Method;
    .end local v10    # "popup":Ljava/lang/Object;
    .end local v11    # "toolbar":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v4

    .line 313
    .local v4, "e":Ljava/lang/Throwable;
    const-string/jumbo v12, "tmessages"

    invoke-static {v12, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private onWindowSizeChanged()V
    .locals 2

    .prologue
    .line 318
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->getHeight()I

    move-result v0

    .line 319
    .local v0, "size":I
    iget-boolean v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    if-nez v1, :cond_0

    .line 320
    iget v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiPadding:I

    sub-int/2addr v0, v1

    .line 322
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->delegate:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;

    if-eqz v1, :cond_1

    .line 323
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->delegate:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;

    invoke-interface {v1, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;->onWindowSizeChanged(I)V

    .line 325
    :cond_1
    return-void
.end method

.method private openKeyboardInternal()V
    .locals 1

    .prologue
    .line 527
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->showPopup(I)V

    .line 528
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 529
    return-void

    .line 527
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private showPopup(I)V
    .locals 7
    .param p1, "show"    # I

    .prologue
    const/high16 v6, 0x43480000    # 200.0f

    const/4 v5, 0x0

    .line 420
    const/4 v2, 0x1

    if-ne p1, v2, :cond_5

    .line 421
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-nez v2, :cond_0

    .line 422
    new-instance v2, Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v5, v5, v3}, Lorg/telegram/ui/Components/EmojiView;-><init>(ZZLandroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    .line 423
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    new-instance v3, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$9;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$9;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmojiView;->setListener(Lorg/telegram/ui/Components/EmojiView$Listener;)V

    .line 479
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->addView(Landroid/view/View;)V

    .line 482
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 484
    iget v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeight:I

    if-gtz v2, :cond_1

    .line 485
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "emoji"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "kbd_height"

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeight:I

    .line 487
    :cond_1
    iget v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeightLand:I

    if-gtz v2, :cond_2

    .line 488
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "emoji"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "kbd_height_land3"

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeightLand:I

    .line 490
    :cond_2
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-le v2, v3, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeightLand:I

    .line 492
    .local v0, "currentHeight":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 493
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 494
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 495
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/EmojiView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 497
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    if-eqz v2, :cond_3

    .line 498
    iput v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiPadding:I

    .line 499
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->requestLayout()V

    .line 500
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiButton:Landroid/widget/ImageView;

    const v3, 0x7f020161

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 501
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onWindowSizeChanged()V

    .line 518
    .end local v0    # "currentHeight":I
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    :goto_1
    return-void

    .line 490
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeight:I

    goto :goto_0

    .line 504
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    .line 505
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiButton:Landroid/widget/ImageView;

    const v3, 0x7f02016f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 507
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v2, :cond_7

    .line 508
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 510
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    if-eqz v2, :cond_3

    .line 511
    if-nez p1, :cond_8

    .line 512
    iput v5, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiPadding:I

    .line 514
    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->requestLayout()V

    .line 515
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onWindowSizeChanged()V

    goto :goto_1
.end method


# virtual methods
.method public closeKeyboard()V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 542
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 602
    sget v0, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    if-ne p1, v0, :cond_0

    .line 603
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->invalidateViews()V

    .line 607
    :cond_0
    return-void
.end method

.method public getCursorPosition()I
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 361
    const/4 v0, 0x0

    .line 363
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    goto :goto_0
.end method

.method public getEmojiPadding()I
    .locals 1

    .prologue
    .line 412
    iget v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiPadding:I

    return v0
.end method

.method public getFieldCharSequence()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public hideActionMode()Z
    .locals 2

    .prologue
    .line 277
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->currentActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->currentActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->currentActionMode:Landroid/view/ActionMode;

    .line 280
    const/4 v0, 0x1

    .line 282
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hidePopup()V
    .locals 1

    .prologue
    .line 521
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->showPopup(I)V

    .line 524
    :cond_0
    return-void
.end method

.method public isKeyboardVisible()Z
    .locals 1

    .prologue
    .line 545
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPopupShowing()Z
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPopupView(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 416
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 328
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 329
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$SizeNotifierFrameLayoutPhotoDelegate;)V

    .line 330
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 333
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->hidePopup()V

    .line 334
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->closeKeyboard()V

    .line 337
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    .line 338
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 339
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$SizeNotifierFrameLayoutPhotoDelegate;)V

    .line 342
    :cond_1
    return-void
.end method

.method public onSizeChanged(IZ)V
    .locals 7
    .param p1, "height"    # I
    .param p2, "isWidthGreater"    # Z

    .prologue
    const/4 v4, 0x0

    .line 550
    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    if-le p1, v3, :cond_0

    iget-boolean v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    if-eqz v3, :cond_0

    .line 551
    if-eqz p2, :cond_3

    .line 552
    iput p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeightLand:I

    .line 553
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "emoji"

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v5, "kbd_height_land3"

    iget v6, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeightLand:I

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 560
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 562
    if-eqz p2, :cond_4

    .line 563
    iget v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeightLand:I

    .line 568
    .local v1, "newHeight":I
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmojiView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 569
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    if-ne v3, v5, :cond_1

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v3, v1, :cond_2

    .line 570
    :cond_1
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 571
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 572
    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/EmojiView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    if-eqz v3, :cond_2

    .line 574
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiPadding:I

    .line 575
    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->requestLayout()V

    .line 576
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onWindowSizeChanged()V

    .line 581
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "newHeight":I
    :cond_2
    iget v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->lastSizeChangeValue1:I

    if-ne v3, p1, :cond_5

    iget-boolean v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->lastSizeChangeValue2:Z

    if-ne v3, p2, :cond_5

    .line 582
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onWindowSizeChanged()V

    .line 598
    :goto_2
    return-void

    .line 555
    :cond_3
    iput p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeight:I

    .line 556
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "emoji"

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v5, "kbd_height"

    iget v6, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeight:I

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 565
    :cond_4
    iget v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeight:I

    .restart local v1    # "newHeight":I
    goto :goto_1

    .line 585
    .end local v1    # "newHeight":I
    :cond_5
    iput p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->lastSizeChangeValue1:I

    .line 586
    iput-boolean p2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->lastSizeChangeValue2:Z

    .line 588
    iget-boolean v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    .line 589
    .local v2, "oldValue":Z
    if-lez p1, :cond_8

    const/4 v3, 0x1

    :goto_3
    iput-boolean v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    .line 590
    iget-boolean v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 591
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->showPopup(I)V

    .line 593
    :cond_6
    iget v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiPadding:I

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    if-eq v3, v2, :cond_7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v3

    if-nez v3, :cond_7

    .line 594
    iput v4, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiPadding:I

    .line 595
    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->requestLayout()V

    .line 597
    :cond_7
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onWindowSizeChanged()V

    goto :goto_2

    :cond_8
    move v3, v4

    .line 589
    goto :goto_3
.end method

.method public openKeyboard()V
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 533
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 534
    return-void
.end method

.method public replaceWithText(IILjava/lang/String;)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "len"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 368
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 369
    .local v0, "builder":Ljava/lang/StringBuilder;
    add-int v2, p1, p2

    invoke-virtual {v0, p1, v2, p3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 371
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p1

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 372
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 379
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :goto_0
    return-void

    .line 374
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 376
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 377
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setDelegate(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;

    .prologue
    .line 345
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->delegate:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;

    .line 346
    return-void
.end method

.method public setFieldFocused(Z)V
    .locals 4
    .param p1, "focus"    # Z

    .prologue
    .line 382
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    if-eqz p1, :cond_2

    .line 386
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$8;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 401
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    if-nez v0, :cond_0

    .line 402
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0
.end method

.method public setFieldText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 349
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 354
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->delegate:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->delegate:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;->onTextChanged(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
