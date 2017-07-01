.class public Lorg/telegram/ui/Components/PopupAudioView;
.super Lorg/telegram/ui/Cells/BaseCell;
.source "PopupAudioView.java"

# interfaces
.implements Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;
.implements Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;


# static fields
.field private static backgroundMediaDrawableIn:Landroid/graphics/drawable/Drawable;

.field private static statesDrawable:[[Landroid/graphics/drawable/Drawable;

.field private static timePaint:Landroid/text/TextPaint;


# instance fields
.field private TAG:I

.field private buttonPressed:I

.field private buttonState:I

.field private buttonX:I

.field private buttonY:I

.field protected currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private lastTimeString:Ljava/lang/String;

.field private progressView:Lorg/telegram/ui/Components/ProgressView;

.field private seekBar:Lorg/telegram/ui/Components/SeekBar;

.field private seekBarX:I

.field private seekBarY:I

.field private timeLayout:Landroid/text/StaticLayout;

.field timeWidth:I

.field private timeX:I

.field private wasLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const/16 v0, 0x8

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Landroid/graphics/drawable/Drawable;

    sput-object v0, Lorg/telegram/ui/Components/PopupAudioView;->statesDrawable:[[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/BaseCell;-><init>(Landroid/content/Context;)V

    .line 35
    iput-boolean v3, p0, Lorg/telegram/ui/Components/PopupAudioView;->wasLayout:Z

    .line 48
    iput v3, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    .line 51
    iput v3, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonPressed:I

    .line 55
    iput v3, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeWidth:I

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->lastTimeString:Ljava/lang/String;

    .line 62
    sget-object v0, Lorg/telegram/ui/Components/PopupAudioView;->backgroundMediaDrawableIn:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/PopupAudioView;->backgroundMediaDrawableIn:Landroid/graphics/drawable/Drawable;

    .line 64
    sget-object v0, Lorg/telegram/ui/Components/PopupAudioView;->statesDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02023d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    .line 65
    sget-object v0, Lorg/telegram/ui/Components/PopupAudioView;->statesDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02023e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v4

    .line 66
    sget-object v0, Lorg/telegram/ui/Components/PopupAudioView;->statesDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020208

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    .line 67
    sget-object v0, Lorg/telegram/ui/Components/PopupAudioView;->statesDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020209

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v4

    .line 68
    sget-object v0, Lorg/telegram/ui/Components/PopupAudioView;->statesDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020113

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    .line 69
    sget-object v0, Lorg/telegram/ui/Components/PopupAudioView;->statesDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020114

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v4

    .line 70
    sget-object v0, Lorg/telegram/ui/Components/PopupAudioView;->statesDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v6

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020110

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    .line 71
    sget-object v0, Lorg/telegram/ui/Components/PopupAudioView;->statesDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v6

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020111

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v4

    .line 73
    sget-object v0, Lorg/telegram/ui/Components/PopupAudioView;->statesDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020239

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    .line 74
    sget-object v0, Lorg/telegram/ui/Components/PopupAudioView;->statesDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02023a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v4

    .line 75
    sget-object v0, Lorg/telegram/ui/Components/PopupAudioView;->statesDrawable:[[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020205

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    .line 76
    sget-object v0, Lorg/telegram/ui/Components/PopupAudioView;->statesDrawable:[[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020206

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v4

    .line 77
    sget-object v0, Lorg/telegram/ui/Components/PopupAudioView;->statesDrawable:[[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02010a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    .line 78
    sget-object v0, Lorg/telegram/ui/Components/PopupAudioView;->statesDrawable:[[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02010b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v4

    .line 79
    sget-object v0, Lorg/telegram/ui/Components/PopupAudioView;->statesDrawable:[[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020107

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    .line 80
    sget-object v0, Lorg/telegram/ui/Components/PopupAudioView;->statesDrawable:[[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020108

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v4

    .line 82
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v4}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Components/PopupAudioView;->timePaint:Landroid/text/TextPaint;

    .line 83
    sget-object v0, Lorg/telegram/ui/Components/PopupAudioView;->timePaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 86
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->generateObserverTag()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->TAG:I

    .line 88
    new-instance v0, Lorg/telegram/ui/Components/SeekBar;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    .line 89
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/SeekBar;->setDelegate(Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;)V

    .line 90
    new-instance v0, Lorg/telegram/ui/Components/ProgressView;

    invoke-direct {v0}, Lorg/telegram/ui/Components/ProgressView;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->progressView:Lorg/telegram/ui/Components/ProgressView;

    .line 91
    return-void
.end method

.method private didPressedButton()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 232
    iget v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    if-nez v1, :cond_2

    .line 233
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    .line 234
    .local v0, "result":Z
    iget-object v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isContentUnread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v1, :cond_0

    .line 236
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->markMessageContentAsRead(Lorg/telegram/messenger/MessageObject;)V

    .line 237
    iget-object v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->setContentIsRead()V

    .line 240
    :cond_0
    if-eqz v0, :cond_1

    .line 241
    iput v3, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    .line 242
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->invalidate()V

    .line 259
    .end local v0    # "result":Z
    :cond_1
    :goto_0
    return-void

    .line 244
    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    if-ne v1, v3, :cond_3

    .line 245
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaController;->pauseAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    .line 246
    .restart local v0    # "result":Z
    if-eqz v0, :cond_1

    .line 247
    iput v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    .line 248
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->invalidate()V

    goto :goto_0

    .line 250
    .end local v0    # "result":Z
    :cond_3
    iget v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    if-ne v1, v5, :cond_4

    .line 251
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    .line 252
    iput v6, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    .line 253
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->invalidate()V

    goto :goto_0

    .line 254
    :cond_4
    iget v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    if-ne v1, v6, :cond_1

    .line 255
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 256
    iput v5, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    .line 257
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public downloadAudioIfNeed()V
    .locals 4

    .prologue
    .line 291
    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 292
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    .line 293
    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    .line 294
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->invalidate()V

    .line 296
    :cond_0
    return-void
.end method

.method public final getMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getObserverTag()I
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->TAG:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 185
    invoke-super {p0}, Lorg/telegram/ui/Cells/BaseCell;->onDetachedFromWindow()V

    .line 186
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/MediaController;->removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 187
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 142
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->wasLayout:Z

    if-nez v0, :cond_2

    .line 147
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->requestLayout()V

    goto :goto_0

    .line 151
    :cond_2
    sget-object v1, Lorg/telegram/ui/Components/PopupAudioView;->backgroundMediaDrawableIn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->getMeasuredHeight()I

    move-result v5

    move-object v0, p0

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/PopupAudioView;->setDrawableBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 152
    sget-object v0, Lorg/telegram/ui/Components/PopupAudioView;->backgroundMediaDrawableIn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 154
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 159
    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 160
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBarX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBarY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 161
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SeekBar;->draw(Landroid/graphics/Canvas;)V

    .line 166
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 168
    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    add-int/lit8 v8, v0, 0x4

    .line 169
    .local v8, "state":I
    sget-object v0, Lorg/telegram/ui/Components/PopupAudioView;->timePaint:Landroid/text/TextPaint;

    const v1, -0x5e554d

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 170
    sget-object v0, Lorg/telegram/ui/Components/PopupAudioView;->statesDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v8

    iget v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonPressed:I

    aget-object v6, v0, v1

    .line 171
    .local v6, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    const/high16 v0, 0x42100000    # 36.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    .line 172
    .local v7, "side":I
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    sub-int v0, v7, v0

    div-int/lit8 v9, v0, 0x2

    .line 173
    .local v9, "x":I
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sub-int v0, v7, v0

    div-int/lit8 v10, v0, 0x2

    .line 174
    .local v10, "y":I
    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonX:I

    add-int/2addr v0, v9

    iget v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonY:I

    add-int/2addr v1, v10

    invoke-virtual {p0, v6, v0, v1}, Lorg/telegram/ui/Components/PopupAudioView;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 175
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 177
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 178
    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeX:I

    int-to-float v0, v0

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 179
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 180
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 163
    .end local v6    # "buttonDrawable":Landroid/graphics/drawable/Drawable;
    .end local v7    # "side":I
    .end local v8    # "state":I
    .end local v9    # "x":I
    .end local v10    # "y":I
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBarX:I

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBarY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 164
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->progressView:Lorg/telegram/ui/Components/ProgressView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ProgressView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public onFailedDownload(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 330
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->updateButtonState()V

    .line 331
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/high16 v4, 0x41f00000    # 30.0f

    const/high16 v3, 0x41200000    # 10.0f

    .line 118
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_1

    .line 119
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Cells/BaseCell;->onLayout(ZIIII)V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const/high16 v0, 0x42580000    # 54.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBarX:I

    .line 124
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonX:I

    .line 125
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeWidth:I

    sub-int/2addr v0, v1

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeX:I

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->getMeasuredWidth()I

    move-result v1

    const/high16 v2, 0x428c0000    # 70.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeWidth:I

    sub-int/2addr v1, v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/SeekBar;->setSize(II)V

    .line 128
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->progressView:Lorg/telegram/ui/Components/ProgressView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->getMeasuredWidth()I

    move-result v1

    const/high16 v2, 0x42bc0000    # 94.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeWidth:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/ProgressView;->width:I

    .line 129
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->progressView:Lorg/telegram/ui/Components/ProgressView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/ProgressView;->height:I

    .line 130
    const/high16 v0, 0x41500000    # 13.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBarY:I

    .line 131
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonY:I

    .line 133
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->updateProgress()V

    .line 135
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->wasLayout:Z

    if-nez v0, :cond_0

    .line 136
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->wasLayout:Z

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 112
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 113
    .local v0, "width":I
    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/PopupAudioView;->setMeasuredDimension(II)V

    .line 114
    return-void
.end method

.method public onProgressDownload(Ljava/lang/String;F)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "progress"    # F

    .prologue
    .line 340
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->progressView:Lorg/telegram/ui/Components/ProgressView;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/ProgressView;->setProgress(F)V

    .line 341
    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 342
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->updateButtonState()V

    .line 344
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->invalidate()V

    .line 345
    return-void
.end method

.method public onProgressUpload(Ljava/lang/String;FZ)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "progress"    # F
    .param p3, "isEncrypted"    # Z

    .prologue
    .line 350
    return-void
.end method

.method public onSeekBarDrag(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 359
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iput p1, v0, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 363
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/messenger/MediaController;->seekToProgress(Lorg/telegram/messenger/MessageObject;F)Z

    goto :goto_0
.end method

.method public onSuccessDownload(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 335
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->updateButtonState()V

    .line 336
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 192
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 193
    .local v3, "y":F
    iget-object v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBarX:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBarY:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/ui/Components/SeekBar;->onTouch(IFF)Z

    move-result v0

    .line 194
    .local v0, "result":Z
    if-eqz v0, :cond_2

    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    .line 196
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v10}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 198
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->invalidate()V

    .line 228
    :cond_1
    :goto_0
    return v0

    .line 200
    :cond_2
    const/high16 v4, 0x42100000    # 36.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 201
    .local v1, "side":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    .line 202
    iget v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonX:I

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_3

    iget v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonX:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_3

    iget v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonY:I

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_3

    iget v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonY:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_3

    .line 203
    iput v10, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonPressed:I

    .line 204
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->invalidate()V

    .line 205
    const/4 v0, 0x1

    .line 223
    :cond_3
    :goto_1
    if-nez v0, :cond_1

    .line 224
    invoke-super {p0, p1}, Lorg/telegram/ui/Cells/BaseCell;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 207
    :cond_4
    iget v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonPressed:I

    if-ne v4, v10, :cond_3

    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v10, :cond_5

    .line 209
    iput v9, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonPressed:I

    .line 210
    invoke-virtual {p0, v9}, Lorg/telegram/ui/Components/PopupAudioView;->playSoundEffect(I)V

    .line 211
    invoke-direct {p0}, Lorg/telegram/ui/Components/PopupAudioView;->didPressedButton()V

    .line 212
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->invalidate()V

    goto :goto_1

    .line 213
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 214
    iput v9, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonPressed:I

    .line 215
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->invalidate()V

    goto :goto_1

    .line 216
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 217
    iget v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonX:I

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_7

    iget v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonX:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_7

    iget v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonY:I

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_7

    iget v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonY:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-lez v4, :cond_3

    .line 218
    :cond_7
    iput v9, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonPressed:I

    .line 219
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->invalidate()V

    goto :goto_1
.end method

.method public setMessageObject(Lorg/telegram/messenger/MessageObject;)V
    .locals 4
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eq v0, p1, :cond_0

    .line 95
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    const v1, -0x1b1510

    const v2, -0x8d4a18

    const v3, -0x432118

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/SeekBar;->setColors(III)V

    .line 96
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->progressView:Lorg/telegram/ui/Components/ProgressView;

    const v1, -0x261d15

    const v2, -0x793a08

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ProgressView;->setProgressColors(II)V

    .line 98
    iput-object p1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->wasLayout:Z

    .line 101
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->requestLayout()V

    .line 103
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->updateButtonState()V

    .line 104
    return-void
.end method

.method public updateButtonState()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 299
    iget-object v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, "fileName":Ljava/lang/String;
    iget-object v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    .line 301
    .local v0, "cacheFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 302
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-virtual {v4, p0}, Lorg/telegram/messenger/MediaController;->removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 303
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MediaController;->isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    .line 304
    .local v2, "playing":Z
    if-eqz v2, :cond_0

    if-eqz v2, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MediaController;->isAudioPaused()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 305
    :cond_0
    const/4 v4, 0x0

    iput v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    .line 309
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->progressView:Lorg/telegram/ui/Components/ProgressView;

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/ProgressView;->setProgress(F)V

    .line 325
    .end local v2    # "playing":Z
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->updateProgress()V

    .line 326
    return-void

    .line 307
    .restart local v2    # "playing":Z
    :cond_1
    const/4 v4, 0x1

    iput v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    goto :goto_0

    .line 311
    .end local v2    # "playing":Z
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-virtual {v4, v1, p0}, Lorg/telegram/messenger/MediaController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 312
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 313
    const/4 v4, 0x2

    iput v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    .line 314
    iget-object v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->progressView:Lorg/telegram/ui/Components/ProgressView;

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/ProgressView;->setProgress(F)V

    goto :goto_1

    .line 316
    :cond_3
    const/4 v4, 0x3

    iput v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    .line 317
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    .line 318
    .local v3, "progress":Ljava/lang/Float;
    if-eqz v3, :cond_4

    .line 319
    iget-object v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->progressView:Lorg/telegram/ui/Components/ProgressView;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ProgressView;->setProgress(F)V

    goto :goto_1

    .line 321
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->progressView:Lorg/telegram/ui/Components/ProgressView;

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/ProgressView;->setProgress(F)V

    goto :goto_1
.end method

.method public updateProgress()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 262
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SeekBar;->isDragging()Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    iget-object v2, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/SeekBar;->setProgress(F)V

    .line 270
    :cond_1
    const/4 v10, 0x0

    .line 271
    .local v10, "duration":I
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MediaController;->isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 272
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_2

    .line 273
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 274
    .local v9, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v0, v9, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v0, :cond_5

    .line 275
    iget v10, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    .line 282
    .end local v8    # "a":I
    .end local v9    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_2
    :goto_2
    const-string/jumbo v0, "%02d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    div-int/lit8 v3, v10, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x1

    rem-int/lit8 v4, v10, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "timeString":Ljava/lang/String;
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->lastTimeString:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->lastTimeString:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->lastTimeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 284
    :cond_3
    sget-object v0, Lorg/telegram/ui/Components/PopupAudioView;->timePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeWidth:I

    .line 285
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v2, Lorg/telegram/ui/Components/PopupAudioView;->timePaint:Landroid/text/TextPaint;

    iget v3, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeWidth:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeLayout:Landroid/text/StaticLayout;

    .line 287
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->invalidate()V

    goto/16 :goto_0

    .line 272
    .end local v1    # "timeString":Ljava/lang/String;
    .restart local v8    # "a":I
    .restart local v9    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 280
    .end local v8    # "a":I
    .end local v9    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v10, v0, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    goto :goto_2
.end method
