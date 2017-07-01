.class public Lorg/telegram/ui/Components/ChatActivityEnterView;
.super Landroid/widget/FrameLayout;
.source "ChatActivityEnterView.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;
.implements Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;,
        Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;,
        Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;,
        Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;,
        Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;
    }
.end annotation


# instance fields
.field private allowGifs:Z

.field private allowShowTopView:Z

.field private allowStickers:Z

.field private asAdminButton:Landroid/widget/ImageView;

.field private attachButton:Landroid/widget/LinearLayout;

.field private audioInterfaceState:I

.field private audioSendButton:Landroid/widget/ImageView;

.field private audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

.field private audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

.field private audioToSendPath:Ljava/lang/String;

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private botButton:Landroid/widget/ImageView;

.field private botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

.field private botCount:I

.field private botKeyboardPopup:Landroid/widget/PopupWindow;

.field private botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

.field private botMessageObject:Lorg/telegram/messenger/MessageObject;

.field private botReplyMarkup:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

.field private canWriteToChannel:Z

.field private cancelBotButton:Landroid/widget/ImageView;

.field private currentPopupContentType:I

.field private currentTopViewAnimation:Landroid/animation/AnimatorSet;

.field private delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

.field private dialog_id:J

.field private distCanMove:F

.field private editingCaption:Z

.field private editingMessageObject:Lorg/telegram/messenger/MessageObject;

.field private editingMessageReqId:I

.field private emojiButton:Landroid/widget/ImageView;

.field private emojiPadding:I

.field private emojiView:Lorg/telegram/ui/Components/EmojiView;

.field private forceShowSendButton:Z

.field private hasBotCommands:Z

.field private ignoreTextChange:Z

.field private innerTextChange:I

.field private isPaused:Z

.field private keyboardHeight:I

.field private keyboardHeightLand:I

.field private keyboardVisible:Z

.field private lastSizeChangeValue1:I

.field private lastSizeChangeValue2:Z

.field private lastTimeString:Ljava/lang/String;

.field private lastTypingTimeSend:J

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

.field private messageWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

.field private messageWebPageSearch:Z

.field private needShowTopView:Z

.field private notifyButton:Landroid/widget/ImageView;

.field private openKeyboardRunnable:Ljava/lang/Runnable;

.field private paintingButton:Landroid/widget/ImageView;

.field private parentActivity:Landroid/app/Activity;

.field private parentFragment:Lorg/telegram/ui/ChatActivity;

.field private pendingLocationButton:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

.field private pendingMessageObject:Lorg/telegram/messenger/MessageObject;

.field private progressDrawable:Lorg/telegram/ui/Components/CloseProgressDrawable2;

.field private recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

.field private recordDot:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;

.field private recordPanel:Landroid/widget/FrameLayout;

.field private recordTimeText:Landroid/widget/TextView;

.field private recordedAudioPanel:Landroid/widget/FrameLayout;

.field private recordedAudioPlayButton:Landroid/widget/ImageView;

.field private recordedAudioSeekBar:Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;

.field private recordedAudioTimeTextView:Landroid/widget/TextView;

.field private recordingAudio:Z

.field private replyingMessageObject:Lorg/telegram/messenger/MessageObject;

.field private runningAnimation:Landroid/animation/AnimatorSet;

.field private runningAnimation2:Landroid/animation/AnimatorSet;

.field private runningAnimationAudio:Landroid/animation/AnimatorSet;

.field private runningAnimationType:I

.field private sendButton:Landroid/widget/ImageView;

.field private sendButtonContainer:Landroid/widget/FrameLayout;

.field private sendByEnter:Z

.field private showKeyboardOnResume:Z

.field private silent:Z

.field private sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field private slideText:Landroid/widget/LinearLayout;

.field private startedDraggingX:F

.field private textFieldContainer:Landroid/widget/LinearLayout;

.field private topView:Landroid/view/View;

.field private topViewShowed:Z

.field private waitingForKeyboardOpen:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;Z)V
    .locals 25
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "parent"    # Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
    .param p3, "fragment"    # Lorg/telegram/ui/ChatActivity;
    .param p4, "isChat"    # Z

    .prologue
    .line 530
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 338
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I

    .line 343
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPaused:Z

    .line 365
    const/high16 v2, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->startedDraggingX:F

    .line 366
    const/high16 v2, 0x42a00000    # 80.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->distCanMove:F

    .line 383
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageWebPageSearch:Z

    .line 399
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$1;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboardRunnable:Ljava/lang/Runnable;

    .line 531
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 532
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFocusable(Z)V

    .line 533
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFocusableInTouchMode(Z)V

    .line 534
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setWillNotDraw(Z)V

    .line 536
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->recordStarted:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 537
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->recordStartError:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 538
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->recordStopped:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 539
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->recordProgressChanged:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 540
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 541
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioDidSent:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 542
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 543
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioRouteChanged:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 544
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 545
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 546
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;

    .line 547
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    .line 548
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 549
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    .line 550
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "mainconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 551
    .local v16, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "send_by_enter"

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendByEnter:Z

    .line 553
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->textFieldContainer:Landroid/widget/LinearLayout;

    .line 555
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->textFieldContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->textFieldContainer:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x33

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 558
    new-instance v10, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 559
    .local v10, "frameLayout":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->textFieldContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 561
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    const v3, 0x7f020168

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 564
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "ApoTheme"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 565
    .local v21, "themePreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "theme_chat_editor_icolor"

    const v3, -0x4d4d4e

    move-object/from16 v0, v21

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 566
    .local v12, "iColor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    invoke-static {v2, v12}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/widget/ImageView;I)V

    .line 568
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 570
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    const v3, -0x29292a

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createBarSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 573
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    const/16 v2, 0x30

    const/high16 v3, 0x42400000    # 48.0f

    const/16 v4, 0x53

    const/high16 v5, 0x40400000    # 3.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v10, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$2;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 586
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    .line 587
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateFieldHint()V

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->setImeOptions(I)V

    .line 589
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->getInputType()I

    move-result v3

    or-int/lit16 v3, v3, 0x4000

    const/high16 v4, 0x20000

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->setInputType(I)V

    .line 590
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->setSingleLine(Z)V

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->setMaxLines(I)V

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    const/4 v3, 0x1

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->setTextSize(IF)V

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->setGravity(I)V

    .line 594
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    const/4 v3, 0x0

    const/high16 v4, 0x41300000    # 11.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->setPadding(IIII)V

    .line 595
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 598
    const-string/jumbo v2, "theme_chat_editor_tcolor"

    const/high16 v3, -0x1000000

    move-object/from16 v0, v21

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 599
    .local v19, "textColor":I
    const v2, 0x3ecccccd    # 0.4f

    move/from16 v0, v19

    invoke-static {v0, v2}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->adjustAlpha(IF)I

    move-result v11

    .line 600
    .local v11, "hintTextColor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->setTextColor(I)V

    .line 601
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v2, v11}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->setHintTextColor(I)V

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    move-object/from16 v23, v0

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x50

    const/high16 v5, 0x42500000    # 52.0f

    const/4 v6, 0x0

    if-eqz p4, :cond_4

    const/high16 v7, 0x42c80000    # 100.0f

    :goto_0
    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v10, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 605
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$3;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$4;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 652
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$5;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 713
    :try_start_0
    const-class v2, Landroid/widget/TextView;

    const-string/jumbo v3, "mCursorDrawableRes"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    .line 714
    .local v15, "mCursorDrawableRes":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 715
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    const v3, 0x7f020105

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    .end local v15    # "mCursorDrawableRes":Ljava/lang/reflect/Field;
    :goto_1
    if-eqz p4, :cond_3

    .line 721
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/LinearLayout;

    .line 722
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 723
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 724
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/LinearLayout;

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 725
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/LinearLayout;

    const/4 v3, -0x2

    const/16 v4, 0x30

    const/16 v5, 0x55

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 727
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    .line 728
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    const v3, 0x7f020084

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 730
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    invoke-static {v2, v12}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/widget/ImageView;I)V

    .line 732
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 733
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 734
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 735
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    const v3, -0x29292a

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createBarSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 737
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    const/16 v4, 0x30

    const/16 v5, 0x30

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 738
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$6;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 760
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    .line 761
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->silent:Z

    if-eqz v2, :cond_5

    const v2, 0x7f0201fe

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 763
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    invoke-static {v2, v12}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/widget/ImageView;I)V

    .line 765
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 766
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->canWriteToChannel:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 767
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    .line 768
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    const v3, -0x29292a

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createBarSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 770
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    const/16 v4, 0x30

    const/16 v5, 0x30

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 771
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$7;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 789
    :cond_3
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->paintingButton:Landroid/widget/ImageView;

    .line 790
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->paintingButton:Landroid/widget/ImageView;

    const v3, 0x7f020096

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 791
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->paintingButton:Landroid/widget/ImageView;

    invoke-static {v2, v12}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/widget/ImageView;I)V

    .line 792
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->paintingButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 793
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->paintingButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 794
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->paintingButton:Landroid/widget/ImageView;

    const/16 v4, 0x30

    const/16 v5, 0x30

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 795
    move-object/from16 v9, p3

    .line 796
    .local v9, "chA":Lorg/telegram/ui/ChatActivity;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->paintingButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView$8;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/ui/ChatActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 804
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    .line 805
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    if-nez v2, :cond_7

    const/16 v2, 0x8

    :goto_4
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 806
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 807
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 808
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 809
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 810
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    const/16 v4, 0x30

    const/16 v5, 0x50

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 812
    new-instance v13, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 813
    .local v13, "imageView":Landroid/widget/ImageView;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 814
    const v2, 0x7f020139

    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 815
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    const/16 v3, 0x30

    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v13, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 816
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$9;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$9;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 831
    new-instance v22, Landroid/view/View;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 832
    .local v22, "view":Landroid/view/View;
    const v2, 0x7f020251

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    const/4 v2, -0x1

    const/high16 v3, 0x42000000    # 32.0f

    const/16 v4, 0x13

    const/high16 v5, 0x42400000    # 48.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 835
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioSeekBar:Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioSeekBar:Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;

    move-object/from16 v24, v0

    const/4 v2, -0x1

    const/high16 v3, 0x42000000    # 32.0f

    const/16 v4, 0x13

    const/high16 v5, 0x42b80000    # 92.0f

    const/4 v6, 0x0

    const/high16 v7, 0x42500000    # 52.0f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 838
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPlayButton:Landroid/widget/ImageView;

    .line 839
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPlayButton:Landroid/widget/ImageView;

    const v3, 0x7f02025f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 840
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPlayButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPlayButton:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v2, 0x30

    const/high16 v3, 0x42400000    # 48.0f

    const/16 v4, 0x53

    const/high16 v5, 0x42400000    # 48.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 842
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPlayButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$10;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 858
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioTimeTextView:Landroid/widget/TextView;

    .line 859
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioTimeTextView:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 860
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioTimeTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 861
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioTimeTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "0:13"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioTimeTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x15

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x41500000    # 13.0f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 864
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordPanel:Landroid/widget/FrameLayout;

    .line 865
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordPanel:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 866
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordPanel:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 867
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordPanel:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    const/16 v4, 0x30

    const/16 v5, 0x50

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 869
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;

    .line 870
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordPanel:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x11

    const/high16 v5, 0x41f00000    # 30.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 873
    new-instance v13, Landroid/widget/ImageView;

    .end local v13    # "imageView":Landroid/widget/ImageView;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 874
    .restart local v13    # "imageView":Landroid/widget/ImageView;
    const v2, 0x7f020272

    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v13, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 877
    new-instance v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 878
    .local v20, "textView":Landroid/widget/TextView;
    const-string/jumbo v2, "SlideToCancel"

    const v3, 0x7f07048a

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 879
    const v2, -0x666667

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 880
    const/4 v2, 0x1

    const/high16 v3, 0x41400000    # 12.0f

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/16 v4, 0x10

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 883
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 884
    .local v14, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 885
    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 886
    const/4 v2, -0x1

    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 887
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordPanel:Landroid/widget/FrameLayout;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x10

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v14, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 889
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordDot:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordDot:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;

    move-object/from16 v23, v0

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v14, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 892
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordTimeText:Landroid/widget/TextView;

    .line 893
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordTimeText:Landroid/widget/TextView;

    const-string/jumbo v3, "00:00"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 894
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordTimeText:Landroid/widget/TextView;

    const v3, -0xb2b3b5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 895
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordTimeText:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordTimeText:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/16 v4, 0x10

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v14, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 898
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButtonContainer:Landroid/widget/FrameLayout;

    .line 899
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->textFieldContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButtonContainer:Landroid/widget/FrameLayout;

    const/16 v4, 0x30

    const/16 v5, 0x30

    const/16 v6, 0x50

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 901
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    .line 902
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 903
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    const v3, 0x7f0201dd

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 905
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    invoke-static {v2, v12}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/widget/ImageView;I)V

    .line 906
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 908
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 909
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 910
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButtonContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    const/16 v4, 0x30

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 911
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$11;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1023
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    .line 1024
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->setVisibility(I)V

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-object/from16 v24, v0

    const/16 v2, 0x7c

    const/high16 v3, 0x42f80000    # 124.0f

    const/16 v4, 0x55

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x3df00000    # -36.0f

    const/high16 v8, -0x3de80000    # -38.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1027
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    .line 1028
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1029
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1031
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/CloseProgressDrawable2;

    invoke-direct {v3}, Lorg/telegram/ui/Components/CloseProgressDrawable2;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->progressDrawable:Lorg/telegram/ui/Components/CloseProgressDrawable2;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1032
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 1033
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1034
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1035
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1036
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButtonContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/16 v4, 0x30

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1037
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$12;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1050
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    .line 1051
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1052
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1053
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const v3, 0x7f02016d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1055
    const-string/jumbo v2, "theme_chat_editor_sicolor"

    const v3, -0x9c4f15

    move-object/from16 v0, v21

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 1056
    .local v17, "sIconColor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    move/from16 v0, v17

    invoke-static {v2, v0}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/widget/ImageView;I)V

    .line 1058
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 1059
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1060
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1062
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButtonContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/16 v4, 0x30

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1063
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$13;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$13;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1070
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "emoji"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 1071
    .local v18, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "kbd_height"

    const/high16 v3, 0x43480000    # 200.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeight:I

    .line 1072
    const-string/jumbo v2, "kbd_height_land3"

    const/high16 v3, 0x43480000    # 200.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeightLand:I

    .line 1074
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkSendButton(Z)V

    .line 1076
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->UpdateColors()V

    .line 1077
    return-void

    .line 604
    .end local v9    # "chA":Lorg/telegram/ui/ChatActivity;
    .end local v13    # "imageView":Landroid/widget/ImageView;
    .end local v14    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v17    # "sIconColor":I
    .end local v18    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v20    # "textView":Landroid/widget/TextView;
    .end local v22    # "view":Landroid/view/View;
    :cond_4
    const/high16 v7, 0x40000000    # 2.0f

    goto/16 :goto_0

    .line 761
    :cond_5
    const v2, 0x7f0201ff

    goto/16 :goto_2

    .line 766
    :cond_6
    const/16 v2, 0x8

    goto/16 :goto_3

    .line 805
    .restart local v9    # "chA":Lorg/telegram/ui/ChatActivity;
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 716
    .end local v9    # "chA":Lorg/telegram/ui/ChatActivity;
    :catch_0
    move-exception v2

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ChatActivityEnterView;II)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->showPopup(II)V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ChatActivityEnterView;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    return-wide v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendByEnter:Z

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendMessage()V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/ChatActivityEnterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->innerTextChange:I

    return v0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # I

    .prologue
    .line 97
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->innerTextChange:I

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkSendButton(Z)V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    return-object v0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageWebPageSearch:Z

    return p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->ignoreTextChange:Z

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->canWriteToChannel:Z

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboardInternal()V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/ChatActivityEnterView;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lastTypingTimeSend:J

    return-wide v0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/Components/ChatActivityEnterView;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # J

    .prologue
    .line 97
    iput-wide p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lastTypingTimeSend:J

    return-wide p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botReplyMarkup:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->hasBotCommands:Z

    return v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->silent:Z

    return v0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->silent:Z

    return p1
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateFieldHint()V

    return-void
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hideRecordedAudioPanel()V

    return-void
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/tgnet/TLRPC$TL_document;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPlayButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/ChatActivityEnterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->startedDraggingX:F

    return v0
.end method

.method static synthetic access$3202(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # F

    .prologue
    .line 97
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->startedDraggingX:F

    return p1
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateAudioRecordIntefrace()V

    return-void
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordingAudio:Z

    return v0
.end method

.method static synthetic access$3602(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordingAudio:Z

    return p1
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->distCanMove:F

    return v0
.end method

.method static synthetic access$3702(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # F

    .prologue
    .line 97
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->distCanMove:F

    return p1
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->waitingForKeyboardOpen:Z

    return v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordPanel:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$4102(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 97
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->forceShowSendButton:Z

    return v0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->resizeForTopView(Z)V

    return-void
.end method

.method static synthetic access$4602(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # I

    .prologue
    .line 97
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageReqId:I

    return p1
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$4802(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 97
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    return v0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$5002(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 97
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5302(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # I

    .prologue
    .line 97
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationType:I

    return p1
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$5402(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 97
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$5602(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 97
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->pendingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object p1
.end method

.method static synthetic access$5702(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .prologue
    .line 97
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->pendingLocationButton:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    return-object p1
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboardRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->removeGifFromInputField()V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method private checkSendButton(Z)V
    .locals 14
    .param p1, "animated"    # Z

    .prologue
    const/4 v13, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const v11, 0x3dcccccd    # 0.1f

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1488
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_1

    .line 1720
    :cond_0
    :goto_0
    return-void

    .line 1491
    :cond_1
    iget-boolean v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPaused:Z

    if-eqz v6, :cond_2

    .line 1492
    const/4 p1, 0x0

    .line 1494
    :cond_2
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTrimmedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1495
    .local v1, "message":Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-gtz v6, :cond_3

    iget-boolean v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->forceShowSendButton:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v6, :cond_13

    .line 1496
    :cond_3
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->caption:Ljava/lang/String;
    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->access$4700(Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_c

    move v2, v4

    .line 1497
    .local v2, "showBotButton":Z
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->caption:Ljava/lang/String;
    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->access$4700(Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_d

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_d

    move v3, v4

    .line 1498
    .local v3, "showSendButton":Z
    :goto_2
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_4

    if-nez v2, :cond_4

    if-eqz v3, :cond_0

    .line 1499
    :cond_4
    if-eqz p1, :cond_10

    .line 1500
    iget v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationType:I

    if-ne v6, v4, :cond_5

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->caption:Ljava/lang/String;
    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->access$4700(Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    :cond_5
    iget v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->caption:Ljava/lang/String;
    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->access$4700(Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1503
    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_7

    .line 1504
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1505
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    .line 1507
    :cond_7
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_8

    .line 1508
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1509
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    .line 1512
    :cond_8
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_9

    .line 1513
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    .line 1514
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/animation/Animator;

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/LinearLayout;

    const-string/jumbo v9, "alpha"

    new-array v10, v4, [F

    aput v13, v10, v5

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v7, v5

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/LinearLayout;

    const-string/jumbo v9, "scaleX"

    new-array v10, v4, [F

    aput v13, v10, v5

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1518
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1519
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    new-instance v7, Lorg/telegram/ui/Components/ChatActivityEnterView$18;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$18;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1534
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 1535
    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateFieldRight(I)V

    .line 1536
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    if-eqz v6, :cond_9

    .line 1537
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    invoke-interface {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onAttachButtonHidden()V

    .line 1541
    :cond_9
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    .line 1543
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1544
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_a

    .line 1545
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    const-string/jumbo v7, "scaleX"

    new-array v8, v4, [F

    aput v11, v8, v5

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1546
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    const-string/jumbo v7, "scaleY"

    new-array v8, v4, [F

    aput v11, v8, v5

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1547
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    const-string/jumbo v7, "alpha"

    new-array v8, v4, [F

    aput v13, v8, v5

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1549
    :cond_a
    if-eqz v2, :cond_e

    .line 1550
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const-string/jumbo v7, "scaleX"

    new-array v8, v4, [F

    aput v11, v8, v5

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1551
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const-string/jumbo v7, "scaleY"

    new-array v8, v4, [F

    aput v11, v8, v5

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1552
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const-string/jumbo v7, "alpha"

    new-array v8, v4, [F

    aput v13, v8, v5

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1558
    :cond_b
    :goto_3
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->caption:Ljava/lang/String;
    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->access$4700(Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 1559
    const/4 v6, 0x3

    iput v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationType:I

    .line 1560
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const-string/jumbo v7, "scaleX"

    new-array v8, v4, [F

    aput v12, v8, v5

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1561
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const-string/jumbo v7, "scaleY"

    new-array v8, v4, [F

    aput v12, v8, v5

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1562
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const-string/jumbo v7, "alpha"

    new-array v4, v4, [F

    aput v12, v4, v5

    invoke-static {v6, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1563
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1572
    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1573
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x96

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1574
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    new-instance v5, Lorg/telegram/ui/Components/ChatActivityEnterView$19;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$19;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1598
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .end local v0    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v2    # "showBotButton":Z
    .end local v3    # "showSendButton":Z
    :cond_c
    move v2, v5

    .line 1496
    goto/16 :goto_1

    .restart local v2    # "showBotButton":Z
    :cond_d
    move v3, v5

    .line 1497
    goto/16 :goto_2

    .line 1553
    .restart local v0    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .restart local v3    # "showSendButton":Z
    :cond_e
    if-eqz v3, :cond_b

    .line 1554
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const-string/jumbo v7, "scaleX"

    new-array v8, v4, [F

    aput v11, v8, v5

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1555
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const-string/jumbo v7, "scaleY"

    new-array v8, v4, [F

    aput v11, v8, v5

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1556
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const-string/jumbo v7, "alpha"

    new-array v8, v4, [F

    aput v13, v8, v5

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1565
    :cond_f
    iput v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationType:I

    .line 1566
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const-string/jumbo v7, "scaleX"

    new-array v8, v4, [F

    aput v12, v8, v5

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1567
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const-string/jumbo v7, "scaleY"

    new-array v8, v4, [F

    aput v12, v8, v5

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1568
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const-string/jumbo v7, "alpha"

    new-array v4, v4, [F

    aput v12, v4, v5

    invoke-static {v6, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1569
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 1600
    .end local v0    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_10
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1601
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1602
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1603
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->caption:Ljava/lang/String;
    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->access$4700(Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 1604
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1605
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1606
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1607
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1608
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1609
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1610
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1611
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1622
    :goto_5
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1623
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 1624
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1625
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    if-eqz v4, :cond_11

    .line 1626
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    invoke-interface {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onAttachButtonHidden()V

    .line 1628
    :cond_11
    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateFieldRight(I)V

    goto/16 :goto_0

    .line 1613
    :cond_12
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1614
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1615
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1616
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1617
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1618
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1619
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1620
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 1632
    .end local v2    # "showBotButton":Z
    .end local v3    # "showSendButton":Z
    :cond_13
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_14

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 1633
    :cond_14
    if-eqz p1, :cond_19

    .line 1634
    iget v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationType:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    .line 1638
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_15

    .line 1639
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1640
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    .line 1642
    :cond_15
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_16

    .line 1643
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1644
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    .line 1647
    :cond_16
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_17

    .line 1648
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1649
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    .line 1650
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/animation/Animator;

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/LinearLayout;

    const-string/jumbo v9, "alpha"

    new-array v10, v4, [F

    aput v12, v10, v5

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v7, v5

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/LinearLayout;

    const-string/jumbo v9, "scaleX"

    new-array v10, v4, [F

    aput v12, v10, v5

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1654
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1655
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 1656
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateFieldRight(I)V

    .line 1657
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    invoke-interface {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onAttachButtonShow()V

    .line 1660
    :cond_17
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1661
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    .line 1662
    const/4 v6, 0x2

    iput v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationType:I

    .line 1664
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1665
    .restart local v0    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    const-string/jumbo v7, "scaleX"

    new-array v8, v4, [F

    aput v12, v8, v5

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1666
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    const-string/jumbo v7, "scaleY"

    new-array v8, v4, [F

    aput v12, v8, v5

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1667
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    const-string/jumbo v7, "alpha"

    new-array v8, v4, [F

    aput v12, v8, v5

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1668
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_18

    .line 1669
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const-string/jumbo v7, "scaleX"

    new-array v8, v4, [F

    aput v11, v8, v5

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1670
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const-string/jumbo v7, "scaleY"

    new-array v8, v4, [F

    aput v11, v8, v5

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1671
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const-string/jumbo v7, "alpha"

    new-array v4, v4, [F

    aput v13, v4, v5

    invoke-static {v6, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1678
    :goto_6
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1679
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x96

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1680
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    new-instance v5, Lorg/telegram/ui/Components/ChatActivityEnterView$20;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$20;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1699
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 1673
    :cond_18
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const-string/jumbo v7, "scaleX"

    new-array v8, v4, [F

    aput v11, v8, v5

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1674
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const-string/jumbo v7, "scaleY"

    new-array v8, v4, [F

    aput v11, v8, v5

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1675
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const-string/jumbo v7, "alpha"

    new-array v4, v4, [F

    aput v13, v4, v5

    invoke-static {v6, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1701
    .end local v0    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_19
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1702
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1703
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1704
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1705
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1706
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1707
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1708
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1709
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1710
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1711
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1712
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1713
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 1714
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    invoke-interface {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onAttachButtonShow()V

    .line 1715
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1716
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateFieldRight(I)V

    goto/16 :goto_0
.end method

.method private createEmojiView()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 2247
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    .line 2426
    :goto_0
    return-void

    .line 2250
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/EmojiView;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowStickers:Z

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowGifs:Z

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/EmojiView;-><init>(ZZLandroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    .line 2251
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 2252
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    new-instance v1, Lorg/telegram/ui/Components/ChatActivityEnterView$27;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$27;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setListener(Lorg/telegram/ui/Components/EmojiView$Listener;)V

    .line 2424
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 2425
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private hideRecordedAudioPanel()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 1398
    iput-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendPath:Ljava/lang/String;

    .line 1399
    iput-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 1400
    iput-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1401
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1402
    .local v0, "AnimatorSet":Landroid/animation/AnimatorSet;
    new-array v1, v4, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "alpha"

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1405
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1406
    new-instance v1, Lorg/telegram/ui/Components/ChatActivityEnterView$16;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$16;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1413
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1414
    return-void
.end method

.method private onWindowSizeChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1252
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getHeight()I

    move-result v0

    .line 1253
    .local v0, "size":I
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    if-nez v1, :cond_0

    .line 1254
    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiPadding:I

    sub-int/2addr v0, v1

    .line 1256
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    if-eqz v1, :cond_1

    .line 1257
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    invoke-interface {v1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onWindowSizeChanged(I)V

    .line 1259
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1260
    const/high16 v1, 0x42900000    # 72.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_3

    .line 1261
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowShowTopView:Z

    if-eqz v1, :cond_2

    .line 1262
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowShowTopView:Z

    .line 1263
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->needShowTopView:Z

    if-eqz v1, :cond_2

    .line 1264
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1265
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->resizeForTopView(Z)V

    .line 1266
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1280
    :cond_2
    :goto_0
    return-void

    .line 1270
    :cond_3
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowShowTopView:Z

    if-nez v1, :cond_2

    .line 1271
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowShowTopView:Z

    .line 1272
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->needShowTopView:Z

    if-eqz v1, :cond_2

    .line 1273
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1274
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->resizeForTopView(Z)V

    .line 1275
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method private openKeyboardInternal()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2538
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPaused:Z

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->showPopup(II)V

    .line 2539
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->requestFocus()Z

    .line 2540
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 2541
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPaused:Z

    if-eqz v0, :cond_3

    .line 2542
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->showKeyboardOnResume:Z

    .line 2548
    :cond_1
    :goto_1
    return-void

    .line 2538
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 2543
    :cond_3
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    if-nez v0, :cond_1

    .line 2544
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->waitingForKeyboardOpen:Z

    .line 2545
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboardRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2546
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboardRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1
.end method

.method private removeGifFromInputField()V
    .locals 2

    .prologue
    .line 2530
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-nez v0, :cond_0

    .line 2531
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "@gif "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2532
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->setText(Ljava/lang/CharSequence;)V

    .line 2535
    :cond_0
    return-void
.end method

.method private resizeForTopView(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 1283
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->textFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1284
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1285
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->textFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1286
    return-void

    .line 1284
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendMessage()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v2, 0x0

    .line 1417
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_3

    .line 1420
    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    long-to-int v0, v0

    if-gez v0, :cond_2

    .line 1421
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    long-to-int v1, v4

    neg-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v10

    .line 1422
    .local v10, "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v10, :cond_1

    iget v0, v10, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->groupBigSize:I

    if-le v0, v1, :cond_1

    .line 1423
    const-string/jumbo v9, "bigchat_message"

    .line 1430
    .end local v10    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    .local v9, "action":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9, v0}, Lorg/telegram/messenger/MessagesController;->isFeatureEnabled(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1459
    .end local v9    # "action":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 1425
    .restart local v10    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_1
    const-string/jumbo v9, "chat_message"

    .restart local v9    # "action":Ljava/lang/String;
    goto :goto_0

    .line 1428
    .end local v9    # "action":Ljava/lang/String;
    .end local v10    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_2
    const-string/jumbo v9, "pm_message"

    .restart local v9    # "action":Ljava/lang/String;
    goto :goto_0

    .line 1434
    .end local v9    # "action":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v0, :cond_6

    .line 1435
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v12

    .line 1436
    .local v12, "playing":Lorg/telegram/messenger/MessageObject;
    if-eqz v12, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v12, v0, :cond_4

    .line 1437
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0, v13, v13}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 1439
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendPath:Ljava/lang/String;

    iget-wide v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object v7, v2

    move-object v8, v2

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    .line 1440
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    if-eqz v0, :cond_5

    .line 1441
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    invoke-interface {v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageSend(Ljava/lang/CharSequence;)V

    .line 1443
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hideRecordedAudioPanel()V

    .line 1444
    invoke-direct {p0, v13}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkSendButton(Z)V

    goto :goto_1

    .line 1447
    .end local v12    # "playing":Lorg/telegram/messenger/MessageObject;
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v11

    .line 1448
    .local v11, "message":Ljava/lang/CharSequence;
    invoke-virtual {p0, v11}, Lorg/telegram/ui/Components/ChatActivityEnterView;->processSendingText(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1449
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->setText(Ljava/lang/CharSequence;)V

    .line 1450
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lastTypingTimeSend:J

    .line 1451
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    if-eqz v0, :cond_0

    .line 1452
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    invoke-interface {v0, v11}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageSend(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1454
    :cond_7
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->forceShowSendButton:Z

    if-eqz v0, :cond_0

    .line 1455
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    if-eqz v0, :cond_0

    .line 1456
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    invoke-interface {v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageSend(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private showPopup(II)V
    .locals 10
    .param p1, "show"    # I
    .param p2, "contentType"    # I

    .prologue
    const v9, 0x7f020168

    const/high16 v8, 0x43480000    # 200.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v4, 0x8

    .line 2442
    if-ne p1, v7, :cond_e

    .line 2443
    if-nez p2, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-nez v3, :cond_2

    .line 2444
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;

    if-nez v3, :cond_1

    .line 2516
    :cond_0
    :goto_0
    return-void

    .line 2447
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->createEmojiView()V

    .line 2450
    :cond_2
    const/4 v1, 0x0

    .line 2451
    .local v1, "currentView":Landroid/view/View;
    if-nez p2, :cond_a

    .line 2452
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 2453
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BotKeyboardView;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_3

    .line 2454
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/BotKeyboardView;->setVisibility(I)V

    .line 2456
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    .line 2464
    :cond_4
    :goto_1
    iput p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I

    .line 2466
    iget v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeight:I

    if-gtz v3, :cond_5

    .line 2467
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "emoji"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "kbd_height"

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeight:I

    .line 2469
    :cond_5
    iget v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeightLand:I

    if-gtz v3, :cond_6

    .line 2470
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "emoji"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "kbd_height_land3"

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeightLand:I

    .line 2472
    :cond_6
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-le v3, v4, :cond_c

    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeightLand:I

    .line 2473
    .local v0, "currentHeight":I
    :goto_2
    if-ne p2, v7, :cond_7

    .line 2474
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BotKeyboardView;->getKeyboardHeight()I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2476
    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    if-eqz v3, :cond_8

    .line 2477
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/BotKeyboardView;->setPanelHeight(I)V

    .line 2480
    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 2481
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2482
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2483
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2484
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 2485
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v3, :cond_0

    .line 2486
    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiPadding:I

    .line 2487
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->requestLayout()V

    .line 2488
    if-nez p2, :cond_d

    .line 2489
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    const v4, 0x7f020167

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2493
    :cond_9
    :goto_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateBotButton()V

    .line 2494
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onWindowSizeChanged()V

    goto/16 :goto_0

    .line 2457
    .end local v0    # "currentHeight":I
    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_a
    if-ne p2, v7, :cond_4

    .line 2458
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmojiView;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_b

    .line 2459
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 2461
    :cond_b
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/BotKeyboardView;->setVisibility(I)V

    .line 2462
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    goto/16 :goto_1

    .line 2472
    :cond_c
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeight:I

    goto :goto_2

    .line 2490
    .restart local v0    # "currentHeight":I
    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_d
    if-ne p2, v7, :cond_9

    .line 2491
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 2497
    .end local v0    # "currentHeight":I
    .end local v1    # "currentView":Landroid/view/View;
    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_e
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_f

    .line 2498
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2500
    :cond_f
    const/4 v3, -0x1

    iput v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I

    .line 2501
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v3, :cond_10

    .line 2502
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 2504
    :cond_10
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    if-eqz v3, :cond_11

    .line 2505
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/BotKeyboardView;->setVisibility(I)V

    .line 2507
    :cond_11
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v3, :cond_13

    .line 2508
    if-nez p1, :cond_12

    .line 2509
    iput v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiPadding:I

    .line 2511
    :cond_12
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->requestLayout()V

    .line 2512
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onWindowSizeChanged()V

    .line 2514
    :cond_13
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateBotButton()V

    goto/16 :goto_0
.end method

.method private updateAudioRecordIntefrace()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1752
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordingAudio:Z

    if-eqz v3, :cond_4

    .line 1753
    iget v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioInterfaceState:I

    if-ne v3, v10, :cond_1

    .line 1840
    :cond_0
    :goto_0
    return-void

    .line 1756
    :cond_1
    iput v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioInterfaceState:I

    .line 1758
    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_2

    .line 1759
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 1760
    .local v2, "pm":Landroid/os/PowerManager;
    const v3, 0x20000006

    const-string/jumbo v4, "audio record lock"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1761
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1766
    .end local v2    # "pm":Landroid/os/PowerManager;
    :cond_2
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;)V

    .line 1768
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1769
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->setVisibility(I)V

    .line 1770
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->setAmplitude(D)V

    .line 1771
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordTimeText:Landroid/widget/TextView;

    const-string/jumbo v4, "00:00"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1772
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordDot:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->resetAlpha()V

    .line 1773
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lastTimeString:Ljava/lang/String;

    .line 1775
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1776
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1777
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1778
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1779
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordPanel:Landroid/widget/FrameLayout;

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setX(F)V

    .line 1780
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    invoke-virtual {v3, v11}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->setTranslationX(F)V

    .line 1781
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_3

    .line 1782
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1784
    :cond_3
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    .line 1785
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordPanel:Landroid/widget/FrameLayout;

    const-string/jumbo v6, "translationX"

    new-array v7, v10, [F

    aput v11, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v9

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    const-string/jumbo v6, "scale"

    new-array v7, v10, [F

    aput v12, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v10

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "alpha"

    new-array v7, v10, [F

    aput v11, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v13

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1788
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1789
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    new-instance v4, Lorg/telegram/ui/Components/ChatActivityEnterView$21;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$21;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1798
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1799
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 1763
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :catch_0
    move-exception v0

    .line 1764
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1801
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_5

    .line 1803
    :try_start_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1804
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1809
    :cond_5
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->unlockOrientation(Landroid/app/Activity;)V

    .line 1810
    iget v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioInterfaceState:I

    if-eqz v3, :cond_0

    .line 1813
    iput v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioInterfaceState:I

    .line 1815
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_6

    .line 1816
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1818
    :cond_6
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    .line 1819
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordPanel:Landroid/widget/FrameLayout;

    const-string/jumbo v6, "translationX"

    new-array v7, v10, [F

    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v9

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    const-string/jumbo v6, "scale"

    new-array v7, v10, [F

    aput v11, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v10

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "alpha"

    new-array v7, v10, [F

    aput v12, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v13

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1822
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1823
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    new-instance v4, Lorg/telegram/ui/Components/ChatActivityEnterView$22;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$22;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1837
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1838
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 1805
    :catch_1
    move-exception v0

    .line 1806
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private updateBotButton()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 2057
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    if-nez v2, :cond_0

    .line 2082
    :goto_0
    return-void

    .line 2060
    :cond_0
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->hasBotCommands:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botReplyMarkup:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    if-eqz v2, :cond_7

    .line 2061
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 2062
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2065
    :cond_2
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "ApoTheme"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2066
    .local v1, "themePreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "theme_chat_editor_icolor"

    const v3, -0x4d4d4e

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2067
    .local v0, "iColor":I
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botReplyMarkup:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    if-eqz v2, :cond_6

    .line 2068
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 2069
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    const v3, 0x7f020167

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2076
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    invoke-static {v2, v0}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/widget/ImageView;I)V

    .line 2080
    .end local v0    # "iColor":I
    .end local v1    # "themePreferences":Landroid/content/SharedPreferences;
    :goto_2
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateFieldRight(I)V

    .line 2081
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_8

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_8

    :cond_4
    const/high16 v2, 0x42400000    # 48.0f

    :goto_3
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setPivotX(F)V

    goto :goto_0

    .line 2071
    .restart local v0    # "iColor":I
    .restart local v1    # "themePreferences":Landroid/content/SharedPreferences;
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    const v3, 0x7f020084

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 2074
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    const v3, 0x7f020083

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 2078
    .end local v0    # "iColor":I
    .end local v1    # "themePreferences":Landroid/content/SharedPreferences;
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 2081
    :cond_8
    const/high16 v2, 0x42c00000    # 96.0f

    goto :goto_3
.end method

.method private updateFieldHint()V
    .locals 7

    .prologue
    const v6, 0x7f0704d0

    .line 1352
    const/4 v1, 0x0

    .line 1353
    .local v1, "isChannel":Z
    iget-wide v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    long-to-int v2, v2

    if-gez v2, :cond_0

    .line 1354
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    long-to-int v3, v4

    neg-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 1355
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 1357
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_0
    :goto_0
    if-eqz v1, :cond_5

    .line 1358
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_3

    .line 1359
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingCaption:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "Caption"

    const v4, 0x7f0700f4

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->setHint(Ljava/lang/CharSequence;)V

    .line 1370
    :goto_2
    return-void

    .line 1355
    .restart local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1359
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_2
    const-string/jumbo v2, "TypeMessage"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1361
    :cond_3
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->silent:Z

    if-eqz v2, :cond_4

    .line 1362
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    const-string/jumbo v3, "ChannelSilentBroadcast"

    const v4, 0x7f07014d

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1364
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    const-string/jumbo v3, "ChannelBroadcast"

    const v4, 0x7f07010d

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1368
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    const-string/jumbo v3, "TypeMessage"

    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private updateFieldRight(I)V
    .locals 5
    .param p1, "attachVisible"    # I

    .prologue
    const/high16 v4, 0x43140000    # 148.0f

    const/high16 v3, 0x42c80000    # 100.0f

    const/high16 v2, 0x40000000    # 2.0f

    .line 1723
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_1

    .line 1749
    :cond_0
    :goto_0
    return-void

    .line 1726
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1727
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    .line 1728
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 1730
    :cond_3
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1748
    :cond_4
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1733
    :cond_5
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 1735
    :cond_6
    const/4 v1, 0x2

    if-ne p1, v1, :cond_a

    .line 1736
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 1737
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_9

    .line 1739
    :cond_8
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 1742
    :cond_9
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 1746
    :cond_a
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1
.end method


# virtual methods
.method public UpdateColors()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2822
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "ApoTheme"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 2823
    .local v4, "themePreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "theme_chat_editor_color"

    const/4 v6, -0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2824
    .local v0, "color":I
    const-string/jumbo v5, "theme_chat_editor_gradient"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2825
    .local v1, "flag":I
    const-string/jumbo v5, "theme_chat_editor_gcolor"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2826
    .local v2, "gColor":I
    if-eqz v1, :cond_0

    .line 2827
    invoke-static {v1}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getGradientOrientation(I)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v5

    invoke-static {v0, v2, v5}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setGradiant(IILandroid/graphics/drawable/GradientDrawable$Orientation;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    .line 2828
    .local v3, "gradient":Landroid/graphics/drawable/GradientDrawable;
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->textFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2834
    .end local v3    # "gradient":Landroid/graphics/drawable/GradientDrawable;
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v5, v0}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/graphics/drawable/Drawable;I)V

    .line 2836
    return-void

    .line 2831
    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->textFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public addRecentGif(Lorg/telegram/messenger/MediaController$SearchImage;)V
    .locals 1
    .param p1, "searchImage"    # Lorg/telegram/messenger/MediaController$SearchImage;

    .prologue
    .line 2583
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-nez v0, :cond_0

    .line 2587
    :goto_0
    return-void

    .line 2586
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmojiView;->addRecentGif(Lorg/telegram/messenger/MediaController$SearchImage;)V

    goto :goto_0
.end method

.method public addStickerToRecent(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 1
    .param p1, "sticker"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 2437
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->createEmojiView()V

    .line 2438
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmojiView;->addRecentSticker(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 2439
    return-void
.end method

.method public addToAttachLayout(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v5, 0x30

    .line 2038
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/LinearLayout;

    if-nez v3, :cond_0

    .line 2053
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-void

    .line 2041
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2042
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 2043
    .local v2, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2045
    .end local v2    # "viewGroup":Landroid/view/ViewGroup;
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_2

    .line 2046
    const v3, -0x29292a

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createBarSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2048
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/LinearLayout;

    invoke-static {v5, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2050
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "ApoTheme"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2051
    .local v1, "themePreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "theme_chat_editor_icolor"

    const v4, -0x4d4d4e

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2052
    .local v0, "iColor":I
    check-cast p1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/widget/ImageView;I)V

    goto :goto_0
.end method

.method public addTopView(Landroid/view/View;I)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "height"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 1124
    if-nez p1, :cond_0

    .line 1132
    :goto_0
    return-void

    .line 1127
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    .line 1128
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1129
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1130
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    const/4 v0, -0x1

    int-to-float v1, p2

    const/16 v2, 0x33

    const/high16 v4, 0x40000000    # 2.0f

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v8, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1131
    iput-boolean v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->needShowTopView:Z

    goto :goto_0
.end method

.method public closeKeyboard()V
    .locals 1

    .prologue
    .line 2571
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 2572
    return-void
.end method

.method public didPressedBotButton(Lorg/telegram/tgnet/TLRPC$KeyboardButton;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;)V
    .locals 15
    .param p1, "button"    # Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    .param p2, "replyMessageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p3, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 2156
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 2236
    :cond_0
    :goto_0
    return-void

    .line 2159
    :cond_1
    move-object/from16 v0, p1

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButton;

    if-eqz v2, :cond_2

    .line 2160
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->text:Ljava/lang/String;

    iget-wide v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v11}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto :goto_0

    .line 2161
    :cond_2
    move-object/from16 v0, p1

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUrl;

    if-eqz v2, :cond_3

    .line 2162
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ChatActivity;->showOpenUrlAlert(Ljava/lang/String;)V

    goto :goto_0

    .line 2163
    :cond_3
    move-object/from16 v0, p1

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestPhone;

    if-eqz v2, :cond_4

    .line 2164
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ChatActivity;->shareMyContact(Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    .line 2165
    :cond_4
    move-object/from16 v0, p1

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestGeoLocation;

    if-eqz v2, :cond_5

    .line 2166
    new-instance v13, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;

    invoke-direct {v13, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2167
    .local v13, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v2, "ShareYouLocationTitle"

    const v3, 0x7f070479

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2168
    const-string/jumbo v2, "ShareYouLocationInfo"

    const v3, 0x7f070477

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2169
    const-string/jumbo v2, "OK"

    const v3, 0x7f07039f

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$25;

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-direct {v3, p0, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$25;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V

    invoke-virtual {v13, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2181
    const-string/jumbo v2, "Cancel"

    const v3, 0x7f0700f2

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2182
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 2183
    .end local v13    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_5
    move-object/from16 v0, p1

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCallback;

    if-eqz v2, :cond_6

    .line 2184
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v1, v3}, Lorg/telegram/messenger/SendMessagesHelper;->sendCallback(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_0

    .line 2185
    :cond_6
    move-object/from16 v0, p1

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline;

    if-eqz v2, :cond_0

    .line 2186
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v2, p1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ChatActivity;->processSwitchButton(Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2189
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 2190
    .local v12, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "onlySelect"

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2191
    const-string/jumbo v2, "dialogsType"

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2192
    new-instance v14, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {v14, v12}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 2193
    .local v14, "fragment":Lorg/telegram/ui/DialogsActivity;
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$26;

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-direct {v2, p0, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$26;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V

    invoke-virtual {v14, v2}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 2234
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2, v14}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 26
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 2667
    sget v18, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 2668
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 2669
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/Components/EmojiView;->invalidateViews()V

    .line 2671
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 2672
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/Components/BotKeyboardView;->invalidateViews()V

    .line 2777
    :cond_1
    :goto_0
    return-void

    .line 2674
    :cond_2
    sget v18, Lorg/telegram/messenger/NotificationCenter;->recordProgressChanged:I

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 2675
    const/16 v18, 0x0

    aget-object v18, p2, v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 2676
    .local v16, "t":J
    const-wide/16 v18, 0x3e8

    div-long v18, v16, v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 2677
    .local v15, "time":Ljava/lang/Long;
    const-wide/16 v18, 0x3e8

    rem-long v18, v16, v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    div-int/lit8 v12, v18, 0xa

    .line 2678
    .local v12, "ms":I
    const-string/jumbo v18, "%02d:%02d.%02d"

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    const-wide/16 v24, 0x3c

    div-long v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    const-wide/16 v24, 0x3c

    rem-long v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 2679
    .local v14, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lastTimeString:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lastTimeString:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 2680
    :cond_3
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const-wide/16 v20, 0x5

    rem-long v18, v18, v20

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-nez v18, :cond_4

    .line 2681
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    move-wide/from16 v20, v0

    const/16 v19, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    move/from16 v3, v19

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->sendTyping(JII)V

    .line 2683
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordTimeText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 2684
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordTimeText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2687
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 2688
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-object/from16 v19, v0

    const/16 v18, 0x1

    aget-object v18, p2, v18

    check-cast v18, Ljava/lang/Double;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->setAmplitude(D)V

    goto/16 :goto_0

    .line 2690
    .end local v12    # "ms":I
    .end local v14    # "str":Ljava/lang/String;
    .end local v15    # "time":Ljava/lang/Long;
    .end local v16    # "t":J
    :cond_6
    sget v18, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 2691
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->isFocused()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 2692
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    goto/16 :goto_0

    .line 2694
    :cond_7
    sget v18, Lorg/telegram/messenger/NotificationCenter;->recordStartError:I

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    sget v18, Lorg/telegram/messenger/NotificationCenter;->recordStopped:I

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 2695
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordingAudio:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 2696
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    move-wide/from16 v20, v0

    const/16 v19, 0x2

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    move/from16 v3, v19

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->sendTyping(JII)V

    .line 2697
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordingAudio:Z

    .line 2698
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateAudioRecordIntefrace()V

    goto/16 :goto_0

    .line 2700
    :cond_9
    sget v18, Lorg/telegram/messenger/NotificationCenter;->recordStarted:I

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 2701
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordingAudio:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 2702
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordingAudio:Z

    .line 2703
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateAudioRecordIntefrace()V

    goto/16 :goto_0

    .line 2705
    :cond_a
    sget v18, Lorg/telegram/messenger/NotificationCenter;->audioDidSent:I

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 2706
    const/16 v18, 0x0

    aget-object v18, p2, v18

    check-cast v18, Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 2707
    const/16 v18, 0x1

    aget-object v18, p2, v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendPath:Ljava/lang/String;

    .line 2708
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11

    .line 2709
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 2713
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 2714
    .local v10, "message":Lorg/telegram/tgnet/TLRPC$TL_message;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v10, Lorg/telegram/tgnet/TLRPC$TL_message;->out:Z

    .line 2715
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v10, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    .line 2716
    new-instance v18, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    move-object/from16 v0, v18

    iput-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 2717
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v18, v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v19

    move/from16 v0, v19

    iput v0, v10, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 2718
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v10, Lorg/telegram/tgnet/TLRPC$TL_message;->date:I

    .line 2719
    const-string/jumbo v18, "-1"

    move-object/from16 v0, v18

    iput-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    .line 2720
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendPath:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_message;->attachPath:Ljava/lang/String;

    .line 2721
    new-instance v18, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    move-object/from16 v0, v18

    iput-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 2722
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 2723
    iget v0, v10, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    move/from16 v18, v0

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0x300

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v10, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 2724
    new-instance v18, Lorg/telegram/messenger/MessageObject;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v10, v1, v2}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2726
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-virtual/range {v18 .. v19}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2727
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2728
    const/4 v8, 0x0

    .line 2729
    .local v8, "duration":I
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_b

    .line 2730
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 2731
    .local v7, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v0, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    move/from16 v18, v0

    if-eqz v18, :cond_f

    .line 2732
    iget v8, v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    .line 2737
    .end local v7    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_b
    const/4 v6, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_e

    .line 2738
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 2739
    .restart local v7    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v0, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    move/from16 v18, v0

    if-eqz v18, :cond_10

    .line 2740
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->waveform:[B

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->waveform:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-nez v18, :cond_d

    .line 2741
    :cond_c
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendPath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/messenger/MediaController;->getWaveform(Ljava/lang/String;)[B

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->waveform:[B

    .line 2743
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioSeekBar:Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;

    move-object/from16 v18, v0

    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->waveform:[B

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->setWaveform([B)V

    .line 2747
    .end local v7    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioTimeTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const-string/jumbo v19, "%d:%02d"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    div-int/lit8 v22, v8, 0x3c

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    rem-int/lit8 v22, v8, 0x3c

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2748
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->closeKeyboard()V

    .line 2749
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hidePopup(Z)V

    .line 2750
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkSendButton(Z)V

    goto/16 :goto_0

    .line 2729
    .restart local v7    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 2737
    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 2752
    .end local v6    # "a":I
    .end local v7    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v8    # "duration":I
    .end local v10    # "message":Lorg/telegram/tgnet/TLRPC$TL_message;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 2753
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageSend(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2756
    :cond_12
    sget v18, Lorg/telegram/messenger/NotificationCenter;->audioRouteChanged:I

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    .line 2757
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 2758
    const/16 v18, 0x0

    aget-object v18, p2, v18

    check-cast v18, Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 2759
    .local v9, "frontSpeaker":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    if-eqz v9, :cond_13

    const/16 v18, 0x0

    :goto_3
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    goto/16 :goto_0

    :cond_13
    const/high16 v18, -0x80000000

    goto :goto_3

    .line 2761
    .end local v9    # "frontSpeaker":Z
    :cond_14
    sget v18, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    .line 2762
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/messenger/MediaController;->isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 2763
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPlayButton:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const v19, 0x7f02025f

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2764
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioSeekBar:Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->setProgress(F)V

    goto/16 :goto_0

    .line 2766
    :cond_15
    sget v18, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 2767
    const/16 v18, 0x0

    aget-object v11, p2, v18

    check-cast v11, Ljava/lang/Integer;

    .line 2768
    .local v11, "mid":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/messenger/MediaController;->isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 2769
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v13

    .line 2770
    .local v13, "player":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v18, v0

    iget v0, v13, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 2771
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v18, v0

    iget v0, v13, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    .line 2772
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioSeekBar:Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->isDragging()Z

    move-result v18

    if-nez v18, :cond_1

    .line 2773
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioSeekBar:Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->setProgress(F)V

    goto/16 :goto_0
.end method

.method public doneEditingMessage()V
    .locals 7

    .prologue
    .line 1462
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    .line 1463
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageEditEnd(Z)V

    .line 1464
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageWebPageSearch:Z

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/query/MessagesQuery;->getEntities(Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Components/ChatActivityEnterView$17;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$17;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SendMessagesHelper;->editMessage(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;Ljava/lang/Runnable;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageReqId:I

    .line 1472
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    const/4 v4, 0x0

    .line 1081
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    if-ne p2, v1, :cond_0

    .line 1082
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1083
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v4, v4, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1085
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 1086
    .local v0, "result":Z
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    if-ne p2, v1, :cond_1

    .line 1087
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1089
    :cond_1
    return v0
.end method

.method public getCursorPosition()I
    .locals 1

    .prologue
    .line 1973
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    if-nez v0, :cond_0

    .line 1974
    const/4 v0, 0x0

    .line 1976
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->getSelectionStart()I

    move-result v0

    goto :goto_0
.end method

.method public getEditingMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    .prologue
    .line 2555
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getEmojiHeight()I
    .locals 2

    .prologue
    .line 2658
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_0

    .line 2659
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeightLand:I

    .line 2661
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeight:I

    goto :goto_0
.end method

.method public getEmojiPadding()I
    .locals 1

    .prologue
    .line 2654
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiPadding:I

    return v0
.end method

.method public getFieldText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2031
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2032
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2034
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAudioToSend()Z
    .locals 1

    .prologue
    .line 2563
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 1102
    const/4 v0, 0x0

    return v0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 2027
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hidePopup(Z)V
    .locals 7
    .param p1, "byBackButton"    # Z

    .prologue
    const/4 v6, 0x0

    .line 2519
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2520
    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_0

    .line 2521
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "mainconfig"

    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2522
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hidekeyboard_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2524
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    invoke-direct {p0, v6, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->showPopup(II)V

    .line 2525
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->removeGifFromInputField()V

    .line 2527
    :cond_1
    return-void
.end method

.method public hideSendButton()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 2793
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2794
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2795
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2796
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2797
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2798
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 2799
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 2800
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2801
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2802
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2803
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2804
    return-void
.end method

.method public hideTopView(Z)V
    .locals 7
    .param p1, "animated"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1207
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topViewShowed:Z

    if-nez v0, :cond_1

    .line 1245
    :cond_0
    :goto_0
    return-void

    .line 1211
    :cond_1
    iput-boolean v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topViewShowed:Z

    .line 1212
    iput-boolean v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->needShowTopView:Z

    .line 1213
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowShowTopView:Z

    if-eqz v0, :cond_0

    .line 1214
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 1215
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1216
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    .line 1218
    :cond_2
    if-eqz p1, :cond_3

    .line 1219
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    .line 1220
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    new-array v1, v4, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    const-string/jumbo v3, "translationY"

    new-array v4, v4, [F

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1221
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/ChatActivityEnterView$15;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$15;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1238
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1239
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 1241
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1242
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method public isEditingCaption()Z
    .locals 1

    .prologue
    .line 2559
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingCaption:Z

    return v0
.end method

.method public isEditingMessage()Z
    .locals 1

    .prologue
    .line 2551
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyboardVisible()Z
    .locals 1

    .prologue
    .line 2579
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    return v0
.end method

.method public isMessageWebPageSearchEnabled()Z
    .locals 1

    .prologue
    .line 1394
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageWebPageSearch:Z

    return v0
.end method

.method public isPopupShowing()Z
    .locals 1

    .prologue
    .line 2575
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BotKeyboardView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPopupView(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2239
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecordCircle(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2243
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTopViewVisible()Z
    .locals 1

    .prologue
    .line 1248
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1289
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->recordStarted:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1290
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->recordStartError:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1291
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->recordStopped:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1292
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->recordProgressChanged:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1293
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1294
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->audioDidSent:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1295
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1296
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->audioRouteChanged:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1297
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1298
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1299
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v1, :cond_0

    .line 1300
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView;->onDestroy()V

    .line 1302
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    .line 1304
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1305
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1310
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v1, :cond_2

    .line 1311
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    .line 1313
    :cond_2
    return-void

    .line 1306
    :catch_0
    move-exception v0

    .line 1307
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 1094
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    float-to-int v0, v2

    .line 1096
    .local v0, "top":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1097
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1098
    return-void

    .end local v0    # "top":I
    :cond_0
    move v0, v1

    .line 1094
    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPaused:Z

    .line 1317
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->closeKeyboard()V

    .line 1318
    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v3, 0x0

    .line 2780
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 2781
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->pendingLocationButton:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    if-eqz v0, :cond_1

    .line 2782
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 2783
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->pendingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->pendingLocationButton:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/SendMessagesHelper;->sendCurrentLocation(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V

    .line 2785
    :cond_0
    iput-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->pendingLocationButton:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .line 2786
    iput-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->pendingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2789
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1321
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPaused:Z

    .line 1322
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->showKeyboardOnResume:Z

    if-eqz v0, :cond_0

    .line 1323
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->showKeyboardOnResume:Z

    .line 1324
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->requestFocus()Z

    .line 1325
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 1326
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    if-nez v0, :cond_0

    .line 1327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->waitingForKeyboardOpen:Z

    .line 1328
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboardRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1329
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboardRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1332
    :cond_0
    return-void
.end method

.method public onSizeChanged(IZ)V
    .locals 9
    .param p1, "height"    # I
    .param p2, "isWidthGreater"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2591
    const/high16 v6, 0x42480000    # 50.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    if-le p1, v6, :cond_0

    iget-boolean v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    if-eqz v6, :cond_0

    .line 2592
    if-eqz p2, :cond_6

    .line 2593
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeightLand:I

    .line 2594
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v7, "emoji"

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string/jumbo v7, "kbd_height_land3"

    iget v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeightLand:I

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2601
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2602
    if-eqz p2, :cond_7

    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeightLand:I

    .line 2603
    .local v2, "newHeight":I
    :goto_1
    iget v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I

    if-ne v6, v4, :cond_1

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/BotKeyboardView;->isFullSize()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2604
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/BotKeyboardView;->getKeyboardHeight()I

    move-result v6

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2607
    :cond_1
    const/4 v0, 0x0

    .line 2608
    .local v0, "currentView":Landroid/view/View;
    iget v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I

    if-nez v6, :cond_8

    .line 2609
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    .line 2613
    :cond_2
    :goto_2
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    if-eqz v6, :cond_3

    .line 2614
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/BotKeyboardView;->setPanelHeight(I)V

    .line 2617
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 2618
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v6, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    if-ne v6, v7, :cond_4

    iget v6, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v6, v2, :cond_5

    .line 2619
    :cond_4
    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2620
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2621
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2622
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v6, :cond_5

    .line 2623
    iget v6, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiPadding:I

    .line 2624
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->requestLayout()V

    .line 2625
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onWindowSizeChanged()V

    .line 2630
    .end local v0    # "currentView":Landroid/view/View;
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "newHeight":I
    :cond_5
    iget v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lastSizeChangeValue1:I

    if-ne v6, p1, :cond_9

    iget-boolean v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lastSizeChangeValue2:Z

    if-ne v6, p2, :cond_9

    .line 2631
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onWindowSizeChanged()V

    .line 2651
    :goto_3
    return-void

    .line 2596
    :cond_6
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeight:I

    .line 2597
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v7, "emoji"

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string/jumbo v7, "kbd_height"

    iget v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeight:I

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 2602
    :cond_7
    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeight:I

    goto :goto_1

    .line 2610
    .restart local v0    # "currentView":Landroid/view/View;
    .restart local v2    # "newHeight":I
    :cond_8
    iget v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I

    if-ne v6, v4, :cond_2

    .line 2611
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    goto :goto_2

    .line 2634
    .end local v0    # "currentView":Landroid/view/View;
    .end local v2    # "newHeight":I
    :cond_9
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lastSizeChangeValue1:I

    .line 2635
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lastSizeChangeValue2:Z

    .line 2637
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    .line 2638
    .local v3, "oldValue":Z
    if-lez p1, :cond_d

    :goto_4
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    .line 2639
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    if-eqz v4, :cond_a

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2640
    iget v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I

    invoke-direct {p0, v5, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->showPopup(II)V

    .line 2642
    :cond_a
    iget v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiPadding:I

    if-eqz v4, :cond_b

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    if-nez v4, :cond_b

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    if-eq v4, v3, :cond_b

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v4

    if-nez v4, :cond_b

    .line 2643
    iput v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiPadding:I

    .line 2644
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->requestLayout()V

    .line 2646
    :cond_b
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    if-eqz v4, :cond_c

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->waitingForKeyboardOpen:Z

    if-eqz v4, :cond_c

    .line 2647
    iput-boolean v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->waitingForKeyboardOpen:Z

    .line 2648
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboardRunnable:Ljava/lang/Runnable;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2650
    :cond_c
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onWindowSizeChanged()V

    goto :goto_3

    :cond_d
    move v4, v5

    .line 2638
    goto :goto_4
.end method

.method public onStickerSelected(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 4
    .param p1, "sticker"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 2430
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, p1, v2, v3, v1}, Lorg/telegram/messenger/SendMessagesHelper;->sendSticker(Lorg/telegram/tgnet/TLRPC$Document;JLorg/telegram/messenger/MessageObject;)V

    .line 2431
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    if-eqz v0, :cond_0

    .line 2432
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageSend(Ljava/lang/CharSequence;)V

    .line 2434
    :cond_0
    return-void
.end method

.method public openKeyboard()V
    .locals 1

    .prologue
    .line 2567
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 2568
    return-void
.end method

.method public processSendingText(Ljava/lang/CharSequence;)Z
    .locals 13
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v8, 0x0

    .line 1475
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->getTrimmedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1476
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1477
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x45800000    # 4096.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v11, v0

    .line 1478
    .local v11, "count":I
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_0
    if-ge v10, v11, :cond_0

    .line 1479
    mul-int/lit16 v0, v10, 0x1000

    add-int/lit8 v1, v10, 0x1

    mul-int/lit16 v1, v1, 0x1000

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    .line 1480
    .local v12, "mess":Ljava/lang/CharSequence;
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-boolean v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageWebPageSearch:Z

    invoke-static {v12}, Lorg/telegram/messenger/query/MessagesQuery;->getEntities(Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v7

    move-object v9, v8

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    .line 1478
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1482
    .end local v12    # "mess":Ljava/lang/CharSequence;
    :cond_0
    const/4 v0, 0x1

    .line 1484
    .end local v10    # "a":I
    .end local v11    # "count":I
    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public replaceWithText(IILjava/lang/CharSequence;)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "len"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1981
    :try_start_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1982
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    add-int v2, p1, p2

    invoke-virtual {v0, p1, v2, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1983
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->setText(Ljava/lang/CharSequence;)V

    .line 1984
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1988
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    :goto_0
    return-void

    .line 1985
    :catch_0
    move-exception v1

    .line 1986
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setAllowStickersAndGifs(ZZ)V
    .locals 2
    .param p1, "value"    # Z
    .param p2, "value2"    # Z

    .prologue
    .line 1140
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowStickers:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowGifs:Z

    if-eq v0, p2, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_2

    .line 1141
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1142
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hidePopup(Z)V

    .line 1144
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->removeView(Landroid/view/View;)V

    .line 1145
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    .line 1147
    :cond_2
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowStickers:Z

    .line 1148
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowGifs:Z

    .line 1149
    return-void
.end method

.method public setBotsCount(IZ)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "hasCommands"    # Z

    .prologue
    .line 2085
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botCount:I

    .line 2086
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->hasBotCommands:Z

    if-eq v0, p2, :cond_0

    .line 2087
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->hasBotCommands:Z

    .line 2088
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateBotButton()V

    .line 2090
    :cond_0
    return-void
.end method

.method public setButtons(Lorg/telegram/messenger/MessageObject;)V
    .locals 1
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 2093
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setButtons(Lorg/telegram/messenger/MessageObject;Z)V

    .line 2094
    return-void
.end method

.method public setButtons(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 8
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "openKeyboard"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2097
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v2, v6, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eq v2, p1, :cond_1

    .line 2098
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2153
    :cond_0
    :goto_0
    return-void

    .line 2101
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eq v2, p1, :cond_0

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v2, :cond_3

    if-eqz p1, :cond_0

    .line 2104
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    if-nez v2, :cond_4

    .line 2105
    new-instance v2, Lorg/telegram/ui/Components/BotKeyboardView;

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v6}, Lorg/telegram/ui/Components/BotKeyboardView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    .line 2106
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/BotKeyboardView;->setVisibility(I)V

    .line 2107
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    new-instance v6, Lorg/telegram/ui/Components/ChatActivityEnterView$24;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$24;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/BotKeyboardView;->setDelegate(Lorg/telegram/ui/Components/BotKeyboardView$BotKeyboardViewDelegate;)V

    .line 2125
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->addView(Landroid/view/View;)V

    .line 2127
    :cond_4
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2128
    if-eqz p1, :cond_8

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    if-eqz v2, :cond_8

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    :goto_1
    iput-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botReplyMarkup:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    .line 2130
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    if-le v2, v7, :cond_9

    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeightLand:I

    :goto_2
    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/BotKeyboardView;->setPanelHeight(I)V

    .line 2131
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botReplyMarkup:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    if-eqz v6, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botReplyMarkup:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    :cond_5
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BotKeyboardView;->setButtons(Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;)V

    .line 2132
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botReplyMarkup:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    if-eqz v2, :cond_b

    .line 2133
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "mainconfig"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2134
    .local v1, "preferences":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hidekeyboard_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-ne v2, v3, :cond_a

    move v0, v4

    .line 2135
    .local v0, "keyboardHidden":Z
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botReplyMarkup:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->single_use:Z

    if-eqz v2, :cond_6

    .line 2136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "answered_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 2140
    :cond_6
    if-nez v0, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->length()I

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v2

    if-nez v2, :cond_7

    .line 2141
    invoke-direct {p0, v4, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->showPopup(II)V

    .line 2152
    .end local v0    # "keyboardHidden":Z
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_7
    :goto_4
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateBotButton()V

    goto/16 :goto_0

    :cond_8
    move-object v2, v3

    .line 2128
    goto/16 :goto_1

    .line 2130
    :cond_9
    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeight:I

    goto/16 :goto_2

    .restart local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_a
    move v0, v5

    .line 2134
    goto :goto_3

    .line 2144
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_b
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I

    if-ne v2, v4, :cond_7

    .line 2145
    if-eqz p2, :cond_c

    .line 2146
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboardInternal()V

    goto :goto_4

    .line 2148
    :cond_c
    invoke-direct {p0, v5, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->showPopup(II)V

    goto :goto_4
.end method

.method public setCaption(Ljava/lang/String;)V
    .locals 1
    .param p1, "caption"    # Ljava/lang/String;

    .prologue
    .line 1117
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    if-eqz v0, :cond_0

    .line 1118
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->setCaption(Ljava/lang/String;)V

    .line 1119
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkSendButton(Z)V

    .line 1121
    :cond_0
    return-void
.end method

.method public setCommand(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ZZ)V
    .locals 12
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "longPress"    # Z
    .param p4, "username"    # Z

    .prologue
    .line 1847
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1876
    :cond_0
    :goto_0
    return-void

    .line 1850
    :cond_1
    if-eqz p3, :cond_6

    .line 1851
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1852
    .local v10, "text":Ljava/lang/String;
    if-eqz p1, :cond_4

    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    long-to-int v0, v0

    if-gez v0, :cond_4

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    .line 1853
    .local v11, "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    if-eqz p4, :cond_5

    :cond_2
    if-eqz v11, :cond_5

    iget-boolean v0, v11, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "@"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%s@%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    iget-object v5, v11, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "^/[a-zA-Z@\\d_]{1,255}(\\s|$)"

    const-string/jumbo v2, ""

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1858
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->ignoreTextChange:Z

    .line 1859
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->setText(Ljava/lang/CharSequence;)V

    .line 1860
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->setSelection(I)V

    .line 1861
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->ignoreTextChange:Z

    .line 1862
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    if-eqz v0, :cond_3

    .line 1863
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onTextChanged(Ljava/lang/CharSequence;Z)V

    .line 1865
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1866
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboard()V

    goto/16 :goto_0

    .line 1852
    .end local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 1856
    .restart local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "^/[a-zA-Z@\\d_]{1,255}(\\s|$)"

    const-string/jumbo v2, ""

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 1869
    .end local v10    # "text":Ljava/lang/String;
    .end local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_6
    if-eqz p1, :cond_8

    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    long-to-int v0, v0

    if-gez v0, :cond_8

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    .line 1870
    .restart local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_3
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    if-eqz p4, :cond_9

    :cond_7
    if-eqz v11, :cond_9

    iget-boolean v0, v11, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v0, :cond_9

    const-string/jumbo v0, "@"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1871
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%s@%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    iget-object v5, v11, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 1869
    .end local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_8
    const/4 v11, 0x0

    goto :goto_3

    .line 1873
    .restart local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_9
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_0
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    .prologue
    .line 1843
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    .line 1844
    return-void
.end method

.method public setDialogId(J)V
    .locals 9
    .param p1, "id"    # J

    .prologue
    const/4 v2, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1335
    iput-wide p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    .line 1336
    iget-wide v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    long-to-int v1, v6

    if-gez v1, :cond_4

    .line 1337
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    long-to-int v5, v6

    neg-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 1338
    .local v0, "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "Notifications"

    invoke-virtual {v1, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "silent_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->silent:Z

    .line 1339
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    if-eqz v1, :cond_5

    :cond_0
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v1, :cond_5

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->canWriteToChannel:Z

    .line 1340
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 1341
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->canWriteToChannel:Z

    if-eqz v1, :cond_6

    move v1, v3

    :goto_1
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1342
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->silent:Z

    if-eqz v1, :cond_7

    const v1, 0x7f0201fe

    :goto_2
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1343
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-ne v1, v4, :cond_8

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-ne v1, v4, :cond_8

    :cond_2
    const/high16 v1, 0x42400000    # 48.0f

    :goto_3
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 1345
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    .line 1346
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_9

    :goto_4
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateFieldRight(I)V

    .line 1349
    .end local v0    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_4
    return-void

    .restart local v0    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_5
    move v1, v3

    .line 1339
    goto :goto_0

    :cond_6
    move v1, v4

    .line 1341
    goto :goto_1

    .line 1342
    :cond_7
    const v1, 0x7f0201ff

    goto :goto_2

    .line 1343
    :cond_8
    const/high16 v1, 0x42c00000    # 96.0f

    goto :goto_3

    :cond_9
    move v2, v3

    .line 1346
    goto :goto_4
.end method

.method public setEditingMessageObject(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 13
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "caption"    # Z

    .prologue
    const/4 v12, 0x1

    const v9, 0x3dcccccd    # 0.1f

    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 1879
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    if-nez v6, :cond_0

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v6, p1, :cond_1

    .line 1950
    :cond_0
    :goto_0
    return-void

    .line 1882
    :cond_1
    iget v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageReqId:I

    if-eqz v6, :cond_2

    .line 1883
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    iget v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageReqId:I

    invoke-virtual {v6, v7, v12}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 1884
    iput v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageReqId:I

    .line 1886
    :cond_2
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1887
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingCaption:Z

    .line 1888
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_8

    .line 1889
    new-array v3, v12, [Landroid/text/InputFilter;

    .line 1890
    .local v3, "inputFilters":[Landroid/text/InputFilter;
    if-eqz p2, :cond_4

    .line 1891
    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0xc8

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v3, v10

    .line 1892
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v6, :cond_3

    .line 1893
    new-instance v6, Landroid/text/SpannableStringBuilder;

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v7

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v6, v7, v8, v10}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    .line 1916
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v6, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->setFilters([Landroid/text/InputFilter;)V

    .line 1917
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboard()V

    .line 1918
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 1919
    .local v4, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1920
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1921
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1922
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1923
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1924
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1925
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1949
    .end local v3    # "inputFilters":[Landroid/text/InputFilter;
    .end local v4    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateFieldHint()V

    goto/16 :goto_0

    .line 1895
    .restart local v3    # "inputFilters":[Landroid/text/InputFilter;
    :cond_3
    const-string/jumbo v6, ""

    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1898
    :cond_4
    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0x1000

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v3, v10

    .line 1899
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_7

    .line 1900
    new-instance v5, Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1901
    .local v5, "stringBuilder":Landroid/text/SpannableStringBuilder;
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-static {v6}, Lorg/telegram/messenger/query/MessagesQuery;->getEntities(Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1902
    .local v1, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    if-eqz v1, :cond_6

    .line 1903
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_6

    .line 1904
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;

    .line 1905
    .local v2, "entity":Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;
    iget v6, v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->offset:I

    iget v7, v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->length:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v6, v7, :cond_5

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    iget v7, v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->offset:I

    iget v8, v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->length:I

    add-int/2addr v7, v8

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_5

    .line 1906
    iget v6, v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->length:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->length:I

    .line 1908
    :cond_5
    new-instance v6, Lorg/telegram/ui/Components/URLSpanUserMention;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$InputUser;->user_id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/telegram/ui/Components/URLSpanUserMention;-><init>(Ljava/lang/String;)V

    iget v7, v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->offset:I

    iget v8, v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->offset:I

    iget v9, v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->length:I

    add-int/2addr v8, v9

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1903
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1911
    .end local v0    # "a":I
    .end local v2    # "entity":Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;
    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v5, v6, v7, v10}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1913
    .end local v1    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    .end local v5    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_7
    const-string/jumbo v6, ""

    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1927
    .end local v3    # "inputFilters":[Landroid/text/InputFilter;
    :cond_8
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    new-array v7, v10, [Landroid/text/InputFilter;

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->setFilters([Landroid/text/InputFilter;)V

    .line 1928
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    invoke-interface {v6, v10}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageEditEnd(Z)V

    .line 1929
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1930
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1931
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1932
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 1933
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1934
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1935
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1936
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1937
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1938
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1939
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1940
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1941
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1942
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1943
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1944
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1945
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->setText(Ljava/lang/CharSequence;)V

    .line 1946
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    invoke-interface {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onAttachButtonShow()V

    .line 1947
    invoke-direct {p0, v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateFieldRight(I)V

    goto/16 :goto_2
.end method

.method public setFieldFocused()V
    .locals 2

    .prologue
    .line 1991
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    if-eqz v1, :cond_0

    .line 1993
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1998
    :cond_0
    :goto_0
    return-void

    .line 1994
    :catch_0
    move-exception v0

    .line 1995
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setFieldFocused(Z)V
    .locals 4
    .param p1, "focus"    # Z

    .prologue
    .line 2001
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    if-nez v0, :cond_1

    .line 2024
    :cond_0
    :goto_0
    return-void

    .line 2004
    :cond_1
    if-eqz p1, :cond_2

    .line 2005
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2006
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    new-instance v1, Lorg/telegram/ui/Components/ChatActivityEnterView$23;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$23;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2020
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    if-nez v0, :cond_0

    .line 2021
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->clearFocus()V

    goto :goto_0
.end method

.method public setFieldText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    .line 1953
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    if-nez v0, :cond_1

    .line 1963
    :cond_0
    :goto_0
    return-void

    .line 1956
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->ignoreTextChange:Z

    .line 1957
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->setText(Ljava/lang/CharSequence;)V

    .line 1958
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->setSelection(I)V

    .line 1959
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->ignoreTextChange:Z

    .line 1960
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    if-eqz v0, :cond_0

    .line 1961
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onTextChanged(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method public setForceShowSendButton(ZZ)V
    .locals 0
    .param p1, "value"    # Z
    .param p2, "animated"    # Z

    .prologue
    .line 1135
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->forceShowSendButton:Z

    .line 1136
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkSendButton(Z)V

    .line 1137
    return-void
.end method

.method public setOpenGifsTabFirst()V
    .locals 1

    .prologue
    .line 1152
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->createEmojiView()V

    .line 1153
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->loadGifRecent()V

    .line 1154
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->switchToGifRecent()V

    .line 1155
    return-void
.end method

.method public setReplyingMessageObject(Lorg/telegram/messenger/MessageObject;)V
    .locals 3
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const/4 v2, 0x0

    .line 1373
    if-eqz p1, :cond_1

    .line 1374
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eq v0, v1, :cond_0

    .line 1375
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1377
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1378
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setButtons(Lorg/telegram/messenger/MessageObject;Z)V

    .line 1386
    :goto_0
    return-void

    .line 1379
    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v0, v1, :cond_2

    .line 1380
    iput-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1381
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setButtons(Lorg/telegram/messenger/MessageObject;Z)V

    .line 1382
    iput-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botMessageObject:Lorg/telegram/messenger/MessageObject;

    goto :goto_0

    .line 1384
    :cond_2
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 2
    .param p1, "start"    # I

    .prologue
    .line 1966
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    if-nez v0, :cond_0

    .line 1970
    :goto_0
    return-void

    .line 1969
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->length()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->setSelection(II)V

    goto :goto_0
.end method

.method public setWebPage(Lorg/telegram/tgnet/TLRPC$WebPage;Z)V
    .locals 0
    .param p1, "webPage"    # Lorg/telegram/tgnet/TLRPC$WebPage;
    .param p2, "searchWebPages"    # Z

    .prologue
    .line 1389
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 1390
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageWebPageSearch:Z

    .line 1391
    return-void
.end method

.method public showContextProgress(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 1106
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->progressDrawable:Lorg/telegram/ui/Components/CloseProgressDrawable2;

    if-nez v0, :cond_0

    .line 1114
    :goto_0
    return-void

    .line 1109
    :cond_0
    if-eqz p1, :cond_1

    .line 1110
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->progressDrawable:Lorg/telegram/ui/Components/CloseProgressDrawable2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->startAnimation()V

    goto :goto_0

    .line 1112
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->progressDrawable:Lorg/telegram/ui/Components/CloseProgressDrawable2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->stopAnimation()V

    goto :goto_0
.end method

.method public showSendButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2807
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2808
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2809
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$EditTextCaption;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2810
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2811
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2812
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 2813
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 2814
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2815
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2816
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2817
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2818
    return-void
.end method

.method public showTopView(ZZ)V
    .locals 7
    .param p1, "animated"    # Z
    .param p2, "openKeyboard"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1158
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topViewShowed:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1204
    :cond_0
    :goto_0
    return-void

    .line 1161
    :cond_1
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->needShowTopView:Z

    .line 1162
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topViewShowed:Z

    .line 1163
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowShowTopView:Z

    if-eqz v0, :cond_0

    .line 1164
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1165
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 1166
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1167
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    .line 1169
    :cond_2
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->resizeForTopView(Z)V

    .line 1170
    if-eqz p1, :cond_6

    .line 1171
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1172
    :cond_3
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    .line 1173
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    new-array v1, v4, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    const-string/jumbo v3, "translationY"

    new-array v4, v4, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1174
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/ChatActivityEnterView$14;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView$14;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1192
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1193
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 1195
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 1196
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->forceShowSendButton:Z

    if-eqz v0, :cond_5

    if-eqz p2, :cond_0

    .line 1197
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboard()V

    goto :goto_0

    .line 1201
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method
