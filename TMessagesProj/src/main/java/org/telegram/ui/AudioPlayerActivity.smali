.class public Lorg/telegram/ui/AudioPlayerActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "AudioPlayerActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;
    }
.end annotation


# instance fields
.field private TAG:I

.field private buttons:[Landroid/widget/ImageView;

.field private durationTextView:Landroid/widget/TextView;

.field private lastMessageObject:Lorg/telegram/messenger/MessageObject;

.field private lastTimeString:Ljava/lang/String;

.field private nextButton:Landroid/widget/ImageView;

.field private placeholder:Landroid/widget/ImageView;

.field private playButton:Landroid/widget/ImageView;

.field private prevButton:Landroid/widget/ImageView;

.field private progressView:Lorg/telegram/ui/Components/LineProgressView;

.field private repeatButton:Landroid/widget/ImageView;

.field private seekBarView:Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;

.field private shuffleButton:Landroid/widget/ImageView;

.field private timeTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 49
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->buttons:[Landroid/widget/ImageView;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/AudioPlayerActivity;F)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/AudioPlayerActivity;
    .param p1, "x1"    # F

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/telegram/ui/AudioPlayerActivity;->onSeekBarDrag(F)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/AudioPlayerActivity;)[Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/AudioPlayerActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->buttons:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/AudioPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/AudioPlayerActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/telegram/ui/AudioPlayerActivity;->updateRepeatButton()V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/AudioPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/AudioPlayerActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/telegram/ui/AudioPlayerActivity;->updateShuffleButton()V

    return-void
.end method

.method private checkIfMusicDownloaded(Lorg/telegram/messenger/MessageObject;)V
    .locals 7
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 389
    const/4 v0, 0x0

    .line 390
    .local v0, "cacheFile":Ljava/io/File;
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 391
    new-instance v0, Ljava/io/File;

    .end local v0    # "cacheFile":Ljava/io/File;
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 392
    .restart local v0    # "cacheFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 393
    const/4 v0, 0x0

    .line 396
    :cond_0
    if-nez v0, :cond_1

    .line 397
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    .line 399
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 400
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, "fileName":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3, v1, p0}, Lorg/telegram/messenger/MediaController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 402
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    .line 403
    .local v2, "progress":Ljava/lang/Float;
    iget-object v4, p0, Lorg/telegram/ui/AudioPlayerActivity;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :goto_0
    invoke-virtual {v4, v3, v5}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    .line 404
    iget-object v3, p0, Lorg/telegram/ui/AudioPlayerActivity;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/LineProgressView;->setVisibility(I)V

    .line 405
    iget-object v3, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarView:Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->setVisibility(I)V

    .line 406
    iget-object v3, p0, Lorg/telegram/ui/AudioPlayerActivity;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 413
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "progress":Ljava/lang/Float;
    :goto_1
    return-void

    .line 403
    .restart local v1    # "fileName":Ljava/lang/String;
    .restart local v2    # "progress":Ljava/lang/Float;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 408
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "progress":Ljava/lang/Float;
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/telegram/messenger/MediaController;->removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 409
    iget-object v3, p0, Lorg/telegram/ui/AudioPlayerActivity;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/LineProgressView;->setVisibility(I)V

    .line 410
    iget-object v3, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarView:Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->setVisibility(I)V

    .line 411
    iget-object v3, p0, Lorg/telegram/ui/AudioPlayerActivity;->playButton:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1
.end method

.method private onSeekBarDrag(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 353
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/messenger/MediaController;->seekToProgress(Lorg/telegram/messenger/MessageObject;F)Z

    .line 354
    return-void
.end method

.method private updateProgress(Lorg/telegram/messenger/MessageObject;)V
    .locals 5
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 376
    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarView:Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;

    if-eqz v1, :cond_2

    .line 377
    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarView:Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;

    invoke-virtual {v1}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->isDragging()Z

    move-result v1

    if-nez v1, :cond_0

    .line 378
    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarView:Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;

    iget v2, p1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    invoke-virtual {v1, v2}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->setProgress(F)V

    .line 380
    :cond_0
    const-string/jumbo v1, "%d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    div-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    rem-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "timeString":Ljava/lang/String;
    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->lastTimeString:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->lastTimeString:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->lastTimeString:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 382
    :cond_1
    iput-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->lastTimeString:Ljava/lang/String;

    .line 383
    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->timeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    .end local v0    # "timeString":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private updateRepeatButton()V
    .locals 3

    .prologue
    .line 365
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getRepeatMode()I

    move-result v0

    .line 366
    .local v0, "mode":I
    if-nez v0, :cond_1

    .line 367
    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    const v2, 0x7f020233

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 369
    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    const v2, 0x7f020235

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 370
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 371
    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    const v2, 0x7f020234

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateShuffleButton()V
    .locals 2

    .prologue
    .line 357
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isShuffleMusic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->shuffleButton:Landroid/widget/ImageView;

    const v1, 0x7f020237

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 362
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->shuffleButton:Landroid/widget/ImageView;

    const v1, 0x7f020236

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateTitle(Z)V
    .locals 11
    .param p1, "shutdown"    # Z

    .prologue
    const/4 v10, 0x0

    .line 416
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    .line 417
    .local v5, "messageObject":Lorg/telegram/messenger/MessageObject;
    if-nez v5, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v6

    if-nez v6, :cond_4

    .line 418
    :cond_1
    iget-object v6, p0, Lorg/telegram/ui/AudioPlayerActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/AudioPlayerActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/AudioPlayerActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v7, p0, Lorg/telegram/ui/AudioPlayerActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v7, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p0, :cond_3

    .line 419
    invoke-virtual {p0}, Lorg/telegram/ui/AudioPlayerActivity;->finishFragment()V

    .line 467
    :cond_2
    :goto_0
    return-void

    .line 421
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/AudioPlayerActivity;->removeSelfFromStack()V

    goto :goto_0

    .line 424
    :cond_4
    if-eqz v5, :cond_2

    .line 427
    invoke-direct {p0, v5}, Lorg/telegram/ui/AudioPlayerActivity;->checkIfMusicDownloaded(Lorg/telegram/messenger/MessageObject;)V

    .line 428
    invoke-direct {p0, v5}, Lorg/telegram/ui/AudioPlayerActivity;->updateProgress(Lorg/telegram/messenger/MessageObject;)V

    .line 430
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MediaController;->isAudioPaused()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 431
    iget-object v6, p0, Lorg/telegram/ui/AudioPlayerActivity;->playButton:Landroid/widget/ImageView;

    const v7, 0x7f020243

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 435
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v6, :cond_5

    .line 436
    iget-object v6, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v6, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v6

    const v7, -0xdededf

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 438
    iget-object v6, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 439
    iget-object v6, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBar;->getSubtitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v6

    const v7, -0x757576

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 441
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MediaController;->getAudioInfo()Lorg/telegram/messenger/audioinfo/AudioInfo;

    move-result-object v2

    .line 442
    .local v2, "audioInfo":Lorg/telegram/messenger/audioinfo/AudioInfo;
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getCover()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 443
    iget-object v6, p0, Lorg/telegram/ui/AudioPlayerActivity;->placeholder:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getCover()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 444
    iget-object v6, p0, Lorg/telegram/ui/AudioPlayerActivity;->placeholder:Landroid/widget/ImageView;

    invoke-virtual {v6, v10, v10, v10, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 445
    iget-object v6, p0, Lorg/telegram/ui/AudioPlayerActivity;->placeholder:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 452
    :goto_2
    iget-object v6, p0, Lorg/telegram/ui/AudioPlayerActivity;->durationTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_2

    .line 453
    const/4 v4, 0x0

    .line 454
    .local v4, "duration":I
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    .line 455
    .local v3, "document":Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v3, :cond_6

    .line 456
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_3
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_6

    .line 457
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 458
    .local v1, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v6, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v6, :cond_9

    .line 459
    iget v4, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    .line 464
    .end local v0    # "a":I
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_6
    iget-object v7, p0, Lorg/telegram/ui/AudioPlayerActivity;->durationTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_a

    const-string/jumbo v6, "%d:%02d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    div-int/lit8 v9, v4, 0x3c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    const/4 v9, 0x1

    rem-int/lit8 v10, v4, 0x3c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_4
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 433
    .end local v2    # "audioInfo":Lorg/telegram/messenger/audioinfo/AudioInfo;
    .end local v3    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v4    # "duration":I
    :cond_7
    iget-object v6, p0, Lorg/telegram/ui/AudioPlayerActivity;->playButton:Landroid/widget/ImageView;

    const v7, 0x7f020242

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 447
    .restart local v2    # "audioInfo":Lorg/telegram/messenger/audioinfo/AudioInfo;
    :cond_8
    iget-object v6, p0, Lorg/telegram/ui/AudioPlayerActivity;->placeholder:Landroid/widget/ImageView;

    const v7, 0x7f0201f9

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 448
    iget-object v6, p0, Lorg/telegram/ui/AudioPlayerActivity;->placeholder:Landroid/widget/ImageView;

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v6, v10, v10, v10, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 449
    iget-object v6, p0, Lorg/telegram/ui/AudioPlayerActivity;->placeholder:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_2

    .line 456
    .restart local v0    # "a":I
    .restart local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .restart local v3    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .restart local v4    # "duration":I
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 464
    .end local v0    # "a":I
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_a
    const-string/jumbo v6, "-:--"

    goto :goto_4
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 173
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 174
    .local v8, "frameLayout":Landroid/widget/FrameLayout;
    const v0, -0xf0f10

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 175
    new-instance v0, Lorg/telegram/ui/AudioPlayerActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/AudioPlayerActivity$1;-><init>(Lorg/telegram/ui/AudioPlayerActivity;)V

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 181
    iput-object v8, p0, Lorg/telegram/ui/AudioPlayerActivity;->fragmentView:Landroid/view/View;

    .line 183
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 184
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f02022a

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v1, 0x2f000000

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(I)V

    .line 186
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->showActionModeTop()V

    .line 189
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/AudioPlayerActivity$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/AudioPlayerActivity$2;-><init>(Lorg/telegram/ui/AudioPlayerActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 198
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->placeholder:Landroid/widget/ImageView;

    .line 199
    iget-object v11, p0, Lorg/telegram/ui/AudioPlayerActivity;->placeholder:Landroid/widget/ImageView;

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0x33

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x42840000    # 66.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v11, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    new-instance v10, Landroid/view/View;

    invoke-direct {v10, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 202
    .local v10, "shadow":Landroid/view/View;
    const v0, 0x7f02012a

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 203
    const/4 v0, -0x1

    const/high16 v1, 0x40400000    # 3.0f

    const/16 v2, 0x53

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v10, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    new-instance v9, Landroid/widget/FrameLayout;

    invoke-direct {v9, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 206
    .local v9, "seekBarContainer":Landroid/widget/FrameLayout;
    const v0, -0x1a000001

    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 207
    const/4 v0, -0x1

    const/high16 v1, 0x41f00000    # 30.0f

    const/16 v2, 0x53

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x42840000    # 66.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->timeTextView:Landroid/widget/TextView;

    .line 210
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->timeTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 211
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->timeTextView:Landroid/widget/TextView;

    const v1, -0xe65818

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->timeTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 213
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->timeTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "0:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->timeTextView:Landroid/widget/TextView;

    const/16 v1, 0x2c

    const/4 v2, -0x1

    const/16 v3, 0x33

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->durationTextView:Landroid/widget/TextView;

    .line 217
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->durationTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 218
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->durationTextView:Landroid/widget/TextView;

    const v1, -0x757576

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 219
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->durationTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 220
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->durationTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "3:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->durationTextView:Landroid/widget/TextView;

    const/16 v1, 0x2c

    const/4 v2, -0x1

    const/16 v3, 0x35

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    new-instance v0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;-><init>(Lorg/telegram/ui/AudioPlayerActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarView:Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;

    .line 224
    iget-object v11, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarView:Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0x33

    const/high16 v3, 0x42000000    # 32.0f

    const/4 v4, 0x0

    const/high16 v5, 0x42000000    # 32.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v11, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    new-instance v0, Lorg/telegram/ui/Components/LineProgressView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/LineProgressView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    .line 227
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LineProgressView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const/high16 v1, 0x19000000

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LineProgressView;->setBackgroundColor(I)V

    .line 229
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const v1, -0xdc5011

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LineProgressView;->setProgressColor(I)V

    .line 230
    iget-object v11, p0, Lorg/telegram/ui/AudioPlayerActivity;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const/4 v0, -0x1

    const/high16 v1, 0x40000000    # 2.0f

    const/16 v2, 0x13

    const/high16 v3, 0x42300000    # 44.0f

    const/4 v4, 0x0

    const/high16 v5, 0x42300000    # 44.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v11, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    new-instance v7, Lorg/telegram/ui/AudioPlayerActivity$3;

    invoke-direct {v7, p0, p1}, Lorg/telegram/ui/AudioPlayerActivity$3;-><init>(Lorg/telegram/ui/AudioPlayerActivity;Landroid/content/Context;)V

    .line 243
    .local v7, "bottomView":Landroid/widget/FrameLayout;
    const/4 v0, -0x1

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 244
    const/4 v0, -0x1

    const/16 v1, 0x42

    const/16 v2, 0x53

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v7, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->buttons:[Landroid/widget/ImageView;

    const/4 v1, 0x0

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    .line 247
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 248
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    const/16 v1, 0x30

    const/16 v2, 0x30

    const/16 v3, 0x33

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/AudioPlayerActivity$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/AudioPlayerActivity$4;-><init>(Lorg/telegram/ui/AudioPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->buttons:[Landroid/widget/ImageView;

    const/4 v1, 0x1

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/AudioPlayerActivity;->prevButton:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->prevButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 259
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->prevButton:Landroid/widget/ImageView;

    const v1, 0x7f020244

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 260
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->prevButton:Landroid/widget/ImageView;

    const/16 v1, 0x30

    const/16 v2, 0x30

    const/16 v3, 0x33

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->prevButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/AudioPlayerActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/AudioPlayerActivity$5;-><init>(Lorg/telegram/ui/AudioPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->buttons:[Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/AudioPlayerActivity;->playButton:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    .line 269
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->playButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 270
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->playButton:Landroid/widget/ImageView;

    const v1, 0x7f020243

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 271
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->playButton:Landroid/widget/ImageView;

    const/16 v1, 0x30

    const/16 v2, 0x30

    const/16 v3, 0x33

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->playButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/AudioPlayerActivity$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/AudioPlayerActivity$6;-><init>(Lorg/telegram/ui/AudioPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->buttons:[Landroid/widget/ImageView;

    const/4 v1, 0x3

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/AudioPlayerActivity;->nextButton:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->nextButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 288
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->nextButton:Landroid/widget/ImageView;

    const v1, 0x7f020241

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 289
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->nextButton:Landroid/widget/ImageView;

    const/16 v1, 0x30

    const/16 v2, 0x30

    const/16 v3, 0x33

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->nextButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/AudioPlayerActivity$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/AudioPlayerActivity$7;-><init>(Lorg/telegram/ui/AudioPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->buttons:[Landroid/widget/ImageView;

    const/4 v1, 0x4

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/AudioPlayerActivity;->shuffleButton:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    .line 298
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->shuffleButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->shuffleButton:Landroid/widget/ImageView;

    const/16 v1, 0x30

    const/16 v2, 0x30

    const/16 v3, 0x33

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->shuffleButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/AudioPlayerActivity$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/AudioPlayerActivity$8;-><init>(Lorg/telegram/ui/AudioPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/AudioPlayerActivity;->updateTitle(Z)V

    .line 309
    invoke-direct {p0}, Lorg/telegram/ui/AudioPlayerActivity;->updateRepeatButton()V

    .line 310
    invoke-direct {p0}, Lorg/telegram/ui/AudioPlayerActivity;->updateShuffleButton()V

    .line 312
    return-object v8
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 317
    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioDidStarted:I

    if-eq p1, v1, :cond_0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    if-eq p1, v1, :cond_0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    if-ne p1, v1, :cond_3

    .line 318
    :cond_0
    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    if-ne p1, v1, :cond_2

    aget-object v1, p2, v2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-direct {p0, v1}, Lorg/telegram/ui/AudioPlayerActivity;->updateTitle(Z)V

    .line 325
    :cond_1
    :goto_1
    return-void

    .line 318
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 319
    :cond_3
    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    if-ne p1, v1, :cond_1

    .line 320
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 321
    .local v0, "messageObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    invoke-direct {p0, v0}, Lorg/telegram/ui/AudioPlayerActivity;->updateProgress(Lorg/telegram/messenger/MessageObject;)V

    goto :goto_1
.end method

.method public getObserverTag()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->TAG:I

    return v0
.end method

.method public onFailedDownload(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 330
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .prologue
    .line 153
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->generateObserverTag()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->TAG:I

    .line 154
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 155
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 156
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioDidStarted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 157
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 158
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 163
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 164
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 165
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioDidStarted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 166
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 167
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/MediaController;->removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 168
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 169
    return-void
.end method

.method public onProgressDownload(Ljava/lang/String;F)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "progress"    # F

    .prologue
    .line 339
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    .line 340
    return-void
.end method

.method public onProgressUpload(Ljava/lang/String;FZ)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "progress"    # F
    .param p3, "isEncrypted"    # Z

    .prologue
    .line 345
    return-void
.end method

.method public onSuccessDownload(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 335
    return-void
.end method
