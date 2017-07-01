.class public Lorg/telegram/messenger/MediaController;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/MediaController$VideoConvertRunnable;,
        Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;,
        Lorg/telegram/messenger/MediaController$GalleryObserverExternal;,
        Lorg/telegram/messenger/MediaController$GalleryObserverInternal;,
        Lorg/telegram/messenger/MediaController$ExternalObserver;,
        Lorg/telegram/messenger/MediaController$InternalObserver;,
        Lorg/telegram/messenger/MediaController$SearchImage;,
        Lorg/telegram/messenger/MediaController$PhotoEntry;,
        Lorg/telegram/messenger/MediaController$AlbumEntry;,
        Lorg/telegram/messenger/MediaController$AudioEntry;,
        Lorg/telegram/messenger/MediaController$AudioBuffer;,
        Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;
    }
.end annotation


# static fields
.field private static final AUDIO_FOCUSED:I = 0x2

.field private static final AUDIO_NO_FOCUS_CAN_DUCK:I = 0x1

.field private static final AUDIO_NO_FOCUS_NO_DUCK:I = 0x0

.field public static final AUTODOWNLOAD_MASK_AUDIO:I = 0x2

.field public static final AUTODOWNLOAD_MASK_DOCUMENT:I = 0x8

.field public static final AUTODOWNLOAD_MASK_GIF:I = 0x20

.field public static final AUTODOWNLOAD_MASK_MUSIC:I = 0x10

.field public static final AUTODOWNLOAD_MASK_PHOTO:I = 0x1

.field public static final AUTODOWNLOAD_MASK_VIDEO:I = 0x4

.field private static volatile Instance:Lorg/telegram/messenger/MediaController; = null

.field public static final MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final PROCESSOR_TYPE_INTEL:I = 0x2

.field private static final PROCESSOR_TYPE_MTK:I = 0x3

.field private static final PROCESSOR_TYPE_OTHER:I = 0x0

.field private static final PROCESSOR_TYPE_QCOM:I = 0x1

.field private static final PROCESSOR_TYPE_SEC:I = 0x4

.field private static final PROCESSOR_TYPE_TI:I = 0x5

.field private static final VOLUME_DUCK:F = 0.2f

.field private static final VOLUME_NORMAL:F = 1.0f

.field public static allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

.field private static final projectionPhotos:[Ljava/lang/String;

.field private static final projectionVideo:[Ljava/lang/String;

.field public static readArgs:[I


# instance fields
.field private accelerometerSensor:Landroid/hardware/Sensor;

.field private accelerometerVertical:Z

.field private addLaterArray:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private allowStartRecord:Z

.field private audioDownloadQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private audioFocus:I

.field private audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

.field private audioPlayer:Landroid/media/MediaPlayer;

.field private audioRecorder:Landroid/media/AudioRecord;

.field private audioTrackPlayer:Landroid/media/AudioTrack;

.field private autoplayGifs:Z

.field private buffersWrited:I

.field private callInProgress:Z

.field private cancelCurrentVideoConversion:Z

.field private countLess:I

.field private currentPlaylistNum:I

.field private currentTotalPcmDuration:J

.field private customTabs:Z

.field private decodingFinished:Z

.field private deleteLaterArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private directShare:Z

.field private documentDownloadQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private downloadQueueKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private downloadingCurrentMessage:Z

.field private externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

.field private fileBuffer:Ljava/nio/ByteBuffer;

.field private fileDecodingQueue:Lorg/telegram/messenger/DispatchQueue;

.field private fileEncodingQueue:Lorg/telegram/messenger/DispatchQueue;

.field private forceLoopCurrentPlaylist:Z

.field private freePlayerBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$AudioBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private generatingWaveform:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private gifDownloadQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private gravity:[F

.field private gravityFast:[F

.field private gravitySensor:Landroid/hardware/Sensor;

.field private hasAudioFocus:I

.field private ignoreFirstProgress:I

.field private ignoreOnPause:Z

.field private ignoreProximity:Z

.field private inputFieldHasText:Z

.field private internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

.field private isPaused:Z

.field private lastCheckMask:I

.field private lastMediaCheckTime:J

.field private lastPlayPcm:J

.field private lastProgress:I

.field private lastProximityValue:F

.field private lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

.field private lastSecretChatEnterTime:J

.field private lastSecretChatLeaveTime:J

.field private lastSecretChatVisibleMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private lastTag:I

.field private lastTimestamp:J

.field private linearAcceleration:[F

.field private linearSensor:Landroid/hardware/Sensor;

.field private listenerInProgress:Z

.field private loadingFileMessagesObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private loadingFileObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mediaProjections:[Ljava/lang/String;

.field public mobileDataDownloadMask:I

.field private musicDownloadQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private observersByTag:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private photoDownloadQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private playMusicAgain:Z

.field private playerBufferSize:I

.field private final playerObjectSync:Ljava/lang/Object;

.field private playerQueue:Lorg/telegram/messenger/DispatchQueue;

.field private final playerSync:Ljava/lang/Object;

.field private playingMessageObject:Lorg/telegram/messenger/MessageObject;

.field private playlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private previousAccValue:F

.field private progressTimer:Ljava/util/Timer;

.field private final progressTimerSync:Ljava/lang/Object;

.field private proximityHasDifferentValues:Z

.field private proximitySensor:Landroid/hardware/Sensor;

.field private proximityTouched:Z

.field private proximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private raiseChat:Lorg/telegram/ui/ChatActivity;

.field private raiseToEarRecord:Z

.field private raiseToSpeak:Z

.field private raisedToBack:I

.field private raisedToTop:I

.field private recordBufferSize:I

.field private recordBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private recordDialogId:J

.field private recordQueue:Lorg/telegram/messenger/DispatchQueue;

.field private recordReplyingMessageObject:Lorg/telegram/messenger/MessageObject;

.field private recordRunnable:Ljava/lang/Runnable;

.field private recordSamples:[S

.field private recordStartRunnable:Ljava/lang/Runnable;

.field private recordStartTime:J

.field private recordTimeCount:J

.field private recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

.field private recordingAudioFile:Ljava/io/File;

.field private refreshGalleryRunnable:Ljava/lang/Runnable;

.field private repeatMode:I

.field private resumeAudioOnFocusGain:Z

.field public roamingDownloadMask:I

.field private samplesCount:J

.field private saveToGallery:Z

.field private sendAfterDone:I

.field private sensorManager:Landroid/hardware/SensorManager;

.field private sensorsStarted:Z

.field private shuffleMusic:Z

.field private shuffledPlaylist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private startObserverToken:I

.field private stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

.field private final sync:Ljava/lang/Object;

.field private timeSinceRaise:J

.field private typingTimes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private useFrontSpeaker:Z

.field private usedPlayerBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$AudioBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private videoConvertFirstWrite:Z

.field private videoConvertQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private final videoConvertSync:Ljava/lang/Object;

.field private videoDownloadQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private final videoQueueSync:Ljava/lang/Object;

.field private voiceMessagesPlaylist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private voiceMessagesPlaylistMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private voiceMessagesPlaylistUnread:Z

.field public wifiDownloadMask:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 93
    new-array v0, v3, [I

    sput-object v0, Lorg/telegram/messenger/MediaController;->readArgs:[I

    .line 116
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "bucket_id"

    aput-object v1, v0, v5

    const-string/jumbo v1, "bucket_display_name"

    aput-object v1, v0, v6

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v3

    const-string/jumbo v1, "datetaken"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "orientation"

    aput-object v2, v0, v1

    sput-object v0, Lorg/telegram/messenger/MediaController;->projectionPhotos:[Ljava/lang/String;

    .line 125
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "bucket_id"

    aput-object v1, v0, v5

    const-string/jumbo v1, "bucket_display_name"

    aput-object v1, v0, v6

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v3

    const-string/jumbo v1, "datetaken"

    aput-object v1, v0, v7

    sput-object v0, Lorg/telegram/messenger/MediaController;->projectionVideo:[Ljava/lang/String;

    .line 546
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/MediaController;->Instance:Lorg/telegram/messenger/MediaController;

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    .prologue
    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    .line 210
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->typingTimes:Ljava/util/HashMap;

    .line 226
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lorg/telegram/messenger/MediaController;->lastTimestamp:J

    .line 229
    const/high16 v9, -0x3d380000    # -100.0f

    iput v9, p0, Lorg/telegram/messenger/MediaController;->lastProximityValue:F

    .line 236
    const/4 v9, 0x3

    new-array v9, v9, [F

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    .line 237
    const/4 v9, 0x3

    new-array v9, v9, [F

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    .line 238
    const/4 v9, 0x3

    new-array v9, v9, [F

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    .line 242
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    .line 251
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    .line 252
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->videoQueueSync:Ljava/lang/Object;

    .line 253
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->cancelCurrentVideoConversion:Z

    .line 254
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->videoConvertFirstWrite:Z

    .line 255
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    .line 267
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    .line 268
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    .line 269
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    .line 270
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->lastCheckMask:I

    .line 271
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    .line 272
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    .line 273
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    .line 274
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    .line 275
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    .line 276
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    .line 277
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->downloadQueueKeys:Ljava/util/HashMap;

    .line 279
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    .line 280
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->autoplayGifs:Z

    .line 281
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    .line 282
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->customTabs:Z

    .line 283
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->directShare:Z

    .line 290
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    .line 291
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->loadingFileMessagesObservers:Ljava/util/HashMap;

    .line 292
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    .line 293
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    .line 294
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->addLaterArray:Ljava/util/HashMap;

    .line 295
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->deleteLaterArray:Ljava/util/ArrayList;

    .line 296
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->lastTag:I

    .line 298
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 299
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    .line 300
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    .line 301
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    .line 303
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    .line 304
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->decodingFinished:Z

    .line 307
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I

    .line 308
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;

    .line 309
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->progressTimerSync:Ljava/lang/Object;

    .line 311
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    .line 312
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    .line 319
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    .line 320
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 321
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    .line 328
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->usedPlayerBuffers:Ljava/util/ArrayList;

    .line 329
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->freePlayerBuffers:Ljava/util/ArrayList;

    .line 330
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->playerSync:Ljava/lang/Object;

    .line 331
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->playerObjectSync:Ljava/lang/Object;

    .line 332
    const/16 v9, 0x400

    new-array v9, v9, [S

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->recordSamples:[S

    .line 335
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->sync:Ljava/lang/Object;

    .line 337
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->recordBuffers:Ljava/util/ArrayList;

    .line 345
    new-instance v9, Lorg/telegram/messenger/MediaController$1;

    invoke-direct {v9, p0}, Lorg/telegram/messenger/MediaController$1;-><init>(Lorg/telegram/messenger/MediaController;)V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->recordRunnable:Ljava/lang/Runnable;

    .line 508
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

    .line 509
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

    .line 510
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatEnterTime:J

    .line 511
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatLeaveTime:J

    .line 512
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lorg/telegram/messenger/MediaController;->lastMediaCheckTime:J

    .line 513
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 514
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatVisibleMessages:Ljava/util/ArrayList;

    .line 515
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->startObserverToken:I

    .line 516
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    .line 544
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->mediaProjections:[Ljava/lang/String;

    .line 563
    const/16 v9, 0x3e80

    const/16 v10, 0x10

    const/4 v11, 0x2

    :try_start_0
    invoke-static {v9, v10, v11}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MediaController;->recordBufferSize:I

    .line 564
    iget v9, p0, Lorg/telegram/messenger/MediaController;->recordBufferSize:I

    if-gtz v9, :cond_0

    .line 565
    const/16 v9, 0x500

    iput v9, p0, Lorg/telegram/messenger/MediaController;->recordBufferSize:I

    .line 567
    :cond_0
    const v9, 0xbb80

    const/4 v10, 0x4

    const/4 v11, 0x2

    invoke-static {v9, v10, v11}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    .line 568
    iget v9, p0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    if-gtz v9, :cond_1

    .line 569
    const/16 v9, 0xf00

    iput v9, p0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    .line 571
    :cond_1
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    const/4 v9, 0x5

    if-ge v0, v9, :cond_2

    .line 572
    const/16 v9, 0x1000

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 573
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 574
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->recordBuffers:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 576
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    :cond_2
    const/4 v0, 0x0

    :goto_1
    const/4 v9, 0x3

    if-ge v0, v9, :cond_3

    .line 577
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->freePlayerBuffers:Ljava/util/ArrayList;

    new-instance v10, Lorg/telegram/messenger/MediaController$AudioBuffer;

    iget v11, p0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    invoke-direct {v10, p0, v11}, Lorg/telegram/messenger/MediaController$AudioBuffer;-><init>(Lorg/telegram/messenger/MediaController;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 579
    .end local v0    # "a":I
    :catch_0
    move-exception v2

    .line 580
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "tmessages"

    invoke-static {v9, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 583
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "sensor"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/SensorManager;

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    .line 584
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    .line 585
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v10, 0x9

    invoke-virtual {v9, v10}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    .line 586
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-nez v9, :cond_5

    .line 587
    :cond_4
    const-string/jumbo v9, "tmessages"

    const-string/jumbo v10, "gravity or linear sensor not found"

    invoke-static {v9, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    .line 589
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    .line 590
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    .line 592
    :cond_5
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    .line 593
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "power"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 594
    .local v7, "powerManager":Landroid/os/PowerManager;
    const/16 v9, 0x20

    const-string/jumbo v10, "proximity"

    invoke-virtual {v7, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 598
    .end local v7    # "powerManager":Landroid/os/PowerManager;
    :goto_2
    const/16 v9, 0x780

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->fileBuffer:Ljava/nio/ByteBuffer;

    .line 599
    new-instance v9, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v10, "recordQueue"

    invoke-direct {v9, v10}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 600
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/DispatchQueue;->setPriority(I)V

    .line 601
    new-instance v9, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v10, "fileEncodingQueue"

    invoke-direct {v9, v10}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->fileEncodingQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 602
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->fileEncodingQueue:Lorg/telegram/messenger/DispatchQueue;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/DispatchQueue;->setPriority(I)V

    .line 603
    new-instance v9, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v10, "playerQueue"

    invoke-direct {v9, v10}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->playerQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 604
    new-instance v9, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v10, "fileDecodingQueue"

    invoke-direct {v9, v10}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->fileDecodingQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 606
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "mainconfig"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 607
    .local v8, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v9, "mobileDataDownloadMask"

    const/16 v10, 0x33

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    .line 608
    const-string/jumbo v9, "wifiDownloadMask"

    const/16 v10, 0x33

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    .line 609
    const-string/jumbo v9, "roamingDownloadMask"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    .line 610
    const-string/jumbo v9, "save_gallery"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    .line 611
    const-string/jumbo v9, "autoplay_gif"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->autoplayGifs:Z

    .line 612
    const-string/jumbo v9, "raise_to_speak"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    .line 613
    const-string/jumbo v9, "custom_tabs"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->customTabs:Z

    .line 614
    const-string/jumbo v9, "direct_share"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->directShare:Z

    .line 615
    const-string/jumbo v9, "shuffleMusic"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    .line 616
    const-string/jumbo v9, "repeatMode"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    .line 618
    new-instance v9, Lorg/telegram/messenger/MediaController$2;

    invoke-direct {v9, p0}, Lorg/telegram/messenger/MediaController$2;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 632
    new-instance v5, Lorg/telegram/messenger/MediaController$3;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/MediaController$3;-><init>(Lorg/telegram/messenger/MediaController;)V

    .line 638
    .local v5, "networkStateReceiver":Landroid/content/BroadcastReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v9, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 639
    .local v3, "filter":Landroid/content/IntentFilter;
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v9, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 641
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 642
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->checkAutodownloadSettings()V

    .line 645
    :cond_6
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-lt v9, v10, :cond_8

    .line 646
    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "_data"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "_display_name"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "bucket_display_name"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string/jumbo v11, "datetaken"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string/jumbo v11, "title"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string/jumbo v11, "width"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string/jumbo v11, "height"

    aput-object v11, v9, v10

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->mediaProjections:[Ljava/lang/String;

    .line 666
    :goto_3
    :try_start_2
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    new-instance v12, Lorg/telegram/messenger/MediaController$GalleryObserverExternal;

    invoke-direct {v12, p0}, Lorg/telegram/messenger/MediaController$GalleryObserverExternal;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 671
    :goto_4
    :try_start_3
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    new-instance v12, Lorg/telegram/messenger/MediaController$GalleryObserverInternal;

    invoke-direct {v12, p0}, Lorg/telegram/messenger/MediaController$GalleryObserverInternal;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 677
    :goto_5
    :try_start_4
    new-instance v6, Lorg/telegram/messenger/MediaController$4;

    invoke-direct {v6, p0}, Lorg/telegram/messenger/MediaController$4;-><init>(Lorg/telegram/messenger/MediaController;)V

    .line 694
    .local v6, "phoneStateListener":Landroid/telephony/PhoneStateListener;
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 695
    .local v4, "mgr":Landroid/telephony/TelephonyManager;
    if-eqz v4, :cond_7

    .line 696
    const/16 v9, 0x20

    invoke-virtual {v4, v6, v9}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 701
    .end local v4    # "mgr":Landroid/telephony/TelephonyManager;
    .end local v6    # "phoneStateListener":Landroid/telephony/PhoneStateListener;
    :cond_7
    :goto_6
    return-void

    .line 595
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v5    # "networkStateReceiver":Landroid/content/BroadcastReceiver;
    .end local v8    # "preferences":Landroid/content/SharedPreferences;
    :catch_1
    move-exception v2

    .line 596
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "tmessages"

    invoke-static {v9, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 656
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    .restart local v5    # "networkStateReceiver":Landroid/content/BroadcastReceiver;
    .restart local v8    # "preferences":Landroid/content/SharedPreferences;
    :cond_8
    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "_data"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "_display_name"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "bucket_display_name"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string/jumbo v11, "datetaken"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string/jumbo v11, "title"

    aput-object v11, v9, v10

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->mediaProjections:[Ljava/lang/String;

    goto :goto_3

    .line 667
    :catch_2
    move-exception v2

    .line 668
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "tmessages"

    invoke-static {v9, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 672
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 673
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "tmessages"

    invoke-static {v9, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 698
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 699
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "tmessages"

    invoke-static {v9, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method static synthetic access$000(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioRecord;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/messenger/MediaController;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Landroid/media/AudioRecord;

    .prologue
    .line 79
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordBuffers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/MediaController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/MediaController;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->recordStartTime:J

    return-wide v0
.end method

.method static synthetic access$1102(Lorg/telegram/messenger/MediaController;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # J

    .prologue
    .line 79
    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->recordStartTime:J

    return-wide p1
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/MediaController;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget v0, p0, Lorg/telegram/messenger/MediaController;->sendAfterDone:I

    return v0
.end method

.method static synthetic access$1202(Lorg/telegram/messenger/MediaController;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # I

    .prologue
    .line 79
    iput p1, p0, Lorg/telegram/messenger/MediaController;->sendAfterDone:I

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/MediaController;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->stopRecordingInternal(I)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/MediaController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->refreshGalleryRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1402(Lorg/telegram/messenger/MediaController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 79
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->refreshGalleryRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/MediaController;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget v0, p0, Lorg/telegram/messenger/MediaController;->startObserverToken:I

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MediaController$InternalObserver;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

    return-object v0
.end method

.method static synthetic access$1602(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MediaController$InternalObserver;)Lorg/telegram/messenger/MediaController$InternalObserver;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Lorg/telegram/messenger/MediaController$InternalObserver;

    .prologue
    .line 79
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

    return-object p1
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MediaController$ExternalObserver;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

    return-object v0
.end method

.method static synthetic access$1702(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MediaController$ExternalObserver;)Lorg/telegram/messenger/MediaController$ExternalObserver;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Lorg/telegram/messenger/MediaController$ExternalObserver;

    .prologue
    .line 79
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

    return-object p1
.end method

.method static synthetic access$1800(Lorg/telegram/messenger/MediaController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1802(Lorg/telegram/messenger/MediaController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 79
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1900(Lorg/telegram/messenger/MediaController;)Lorg/telegram/tgnet/TLRPC$TL_document;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    return-object v0
.end method

.method static synthetic access$1902(Lorg/telegram/messenger/MediaController;Lorg/telegram/tgnet/TLRPC$TL_document;)Lorg/telegram/tgnet/TLRPC$TL_document;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$TL_document;

    .prologue
    .line 79
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/messenger/MediaController;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget v0, p0, Lorg/telegram/messenger/MediaController;->recordBufferSize:I

    return v0
.end method

.method static synthetic access$2002(Lorg/telegram/messenger/MediaController;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->callInProgress:Z

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->sync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/telegram/messenger/MediaController;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioTrack;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/messenger/MediaController;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    return v0
.end method

.method static synthetic access$2500(Lorg/telegram/messenger/MediaController;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget v0, p0, Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I

    return v0
.end method

.method static synthetic access$2502(Lorg/telegram/messenger/MediaController;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # I

    .prologue
    .line 79
    iput p1, p0, Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I

    return p1
.end method

.method static synthetic access$2510(Lorg/telegram/messenger/MediaController;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget v0, p0, Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I

    return v0
.end method

.method static synthetic access$2600(Lorg/telegram/messenger/MediaController;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget v0, p0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    return v0
.end method

.method static synthetic access$2602(Lorg/telegram/messenger/MediaController;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # I

    .prologue
    .line 79
    iput p1, p0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    return p1
.end method

.method static synthetic access$2700(Lorg/telegram/messenger/MediaController;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->lastPlayPcm:J

    return-wide v0
.end method

.method static synthetic access$2702(Lorg/telegram/messenger/MediaController;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # J

    .prologue
    .line 79
    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->lastPlayPcm:J

    return-wide p1
.end method

.method static synthetic access$2800(Lorg/telegram/messenger/MediaController;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->currentTotalPcmDuration:J

    return-wide v0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/MediaController;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->samplesCount:J

    return-wide v0
.end method

.method static synthetic access$3000(Lorg/telegram/messenger/MediaController;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->checkScreenshots(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$302(Lorg/telegram/messenger/MediaController;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # J

    .prologue
    .line 79
    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->samplesCount:J

    return-wide p1
.end method

.method static synthetic access$3100(Lorg/telegram/messenger/MediaController;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->decodingFinished:Z

    return v0
.end method

.method static synthetic access$3102(Lorg/telegram/messenger/MediaController;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->decodingFinished:Z

    return p1
.end method

.method static synthetic access$3200(Lorg/telegram/messenger/MediaController;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->checkPlayerQueue()V

    return-void
.end method

.method static synthetic access$3300(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playerSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3400(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->freePlayerBuffers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->usedPlayerBuffers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/telegram/messenger/MediaController;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget v0, p0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    return v0
.end method

.method static synthetic access$3700(Lorg/telegram/messenger/MediaController;Ljava/nio/ByteBuffer;I[I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;
    .param p2, "x2"    # I
    .param p3, "x3"    # [I

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MediaController;->readOpusFile(Ljava/nio/ByteBuffer;I[I)V

    return-void
.end method

.method static synthetic access$3800(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playerObjectSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3900(Lorg/telegram/messenger/MediaController;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget v0, p0, Lorg/telegram/messenger/MediaController;->buffersWrited:I

    return v0
.end method

.method static synthetic access$3908(Lorg/telegram/messenger/MediaController;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget v0, p0, Lorg/telegram/messenger/MediaController;->buffersWrited:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->buffersWrited:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/MediaController;)[S
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordSamples:[S

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/messenger/MediaController;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->checkDecoderQueue()V

    return-void
.end method

.method static synthetic access$4100(Lorg/telegram/messenger/MediaController;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$4200(Lorg/telegram/messenger/MediaController;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$4300(Lorg/telegram/messenger/MediaController;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$4400(Lorg/telegram/messenger/MediaController;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$4500(Lorg/telegram/messenger/MediaController;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$4600(Lorg/telegram/messenger/MediaController;F)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # F

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->seekOpusFile(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lorg/telegram/messenger/MediaController;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->openOpusFile(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4900(Lorg/telegram/messenger/MediaController;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->playNextMessage(Z)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/messenger/MediaController;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->fileBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$5000(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MessageObject;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$5100(Lorg/telegram/messenger/MediaController;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$5102(Lorg/telegram/messenger/MediaController;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 79
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$5200(Lorg/telegram/messenger/MediaController;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->startRecord(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lorg/telegram/messenger/MediaController;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->recordDialogId:J

    return-wide v0
.end method

.method static synthetic access$5302(Lorg/telegram/messenger/MediaController;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # J

    .prologue
    .line 79
    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->recordDialogId:J

    return-wide p1
.end method

.method static synthetic access$5400(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MessageObject;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordReplyingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$5402(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 79
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->recordReplyingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object p1
.end method

.method static synthetic access$5500(Lorg/telegram/messenger/MediaController;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopRecord()V

    return-void
.end method

.method static synthetic access$5600(Lorg/telegram/messenger/MediaController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$5700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lorg/telegram/messenger/MediaController;->projectionPhotos:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5800()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lorg/telegram/messenger/MediaController;->projectionVideo:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5900(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/MediaController;Ljava/nio/ByteBuffer;I)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;
    .param p2, "x2"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MediaController;->writeFrame(Ljava/nio/ByteBuffer;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$6002(Lorg/telegram/messenger/MediaController;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->cancelCurrentVideoConversion:Z

    return p1
.end method

.method static synthetic access$6100(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6200(Lorg/telegram/messenger/MediaController;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->startVideoConvertFromQueue()V

    return-void
.end method

.method static synthetic access$6300(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->convertVideo(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/messenger/MediaController;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->recordTimeCount:J

    return-wide v0
.end method

.method static synthetic access$702(Lorg/telegram/messenger/MediaController;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # J

    .prologue
    .line 79
    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->recordTimeCount:J

    return-wide p1
.end method

.method static synthetic access$714(Lorg/telegram/messenger/MediaController;J)J
    .locals 3
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # J

    .prologue
    .line 79
    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->recordTimeCount:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/telegram/messenger/MediaController;->recordTimeCount:J

    return-wide v0
.end method

.method static synthetic access$800(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/DispatchQueue;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/DispatchQueue;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->fileEncodingQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object v0
.end method

.method private buildShuffledPlayList()V
    .locals 7

    .prologue
    .line 2017
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2033
    :cond_0
    return-void

    .line 2020
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2021
    .local v1, "all":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2023
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    iget v6, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 2024
    .local v4, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget v5, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2025
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2027
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2028
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2029
    sget-object v5, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    .line 2030
    .local v3, "index":I
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2031
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2028
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private checkAudioFocus(Lorg/telegram/messenger/MessageObject;)V
    .locals 7
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 2204
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2205
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v2, :cond_1

    .line 2206
    const/4 v0, 0x3

    .line 2213
    .local v0, "neededAudioFocus":I
    :goto_0
    iget v2, p0, Lorg/telegram/messenger/MediaController;->hasAudioFocus:I

    if-eq v2, v0, :cond_0

    .line 2214
    iput v0, p0, Lorg/telegram/messenger/MediaController;->hasAudioFocus:I

    .line 2216
    if-ne v0, v3, :cond_3

    .line 2217
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .line 2221
    .local v1, "result":I
    :goto_1
    if-ne v1, v4, :cond_0

    .line 2222
    iput v6, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    .line 2225
    .end local v1    # "result":I
    :cond_0
    return-void

    .line 2208
    .end local v0    # "neededAudioFocus":I
    :cond_1
    const/4 v0, 0x2

    .restart local v0    # "neededAudioFocus":I
    goto :goto_0

    .line 2211
    .end local v0    # "neededAudioFocus":I
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "neededAudioFocus":I
    goto :goto_0

    .line 2219
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    iget-object v5, v2, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    if-ne v0, v6, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {v5, p0, v3, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .restart local v1    # "result":I
    goto :goto_1

    .end local v1    # "result":I
    :cond_4
    move v2, v4

    goto :goto_2
.end method

.method private checkConversionCanceled()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3529
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    monitor-enter v2

    .line 3530
    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->cancelCurrentVideoConversion:Z

    .line 3531
    .local v0, "cancelConversion":Z
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3532
    if-eqz v0, :cond_0

    .line 3533
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "canceled conversion"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3531
    .end local v0    # "cancelConversion":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 3535
    .restart local v0    # "cancelConversion":Z
    :cond_0
    return-void
.end method

.method private checkDecoderQueue()V
    .locals 2

    .prologue
    .line 1465
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->fileDecodingQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MediaController$7;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$7;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1514
    return-void
.end method

.method private checkDownloadFinished(Ljava/lang/String;I)V
    .locals 11
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    const/16 v10, 0x10

    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 1055
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->downloadQueueKeys:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/DownloadObject;

    .line 1056
    .local v0, "downloadObject":Lorg/telegram/messenger/DownloadObject;
    if-eqz v0, :cond_2

    .line 1057
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->downloadQueueKeys:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    if-eqz p2, :cond_0

    if-ne p2, v6, :cond_1

    .line 1059
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-wide v2, v0, Lorg/telegram/messenger/DownloadObject;->id:J

    iget v4, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->removeFromDownloadQueue(JIZ)V

    .line 1061
    :cond_1
    iget v1, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    if-ne v1, v7, :cond_3

    .line 1062
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1063
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1064
    invoke-virtual {p0, v7}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    .line 1093
    :cond_2
    :goto_0
    return-void

    .line 1066
    :cond_3
    iget v1, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    if-ne v1, v6, :cond_4

    .line 1067
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1068
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1069
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    goto :goto_0

    .line 1071
    :cond_4
    iget v1, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    if-ne v1, v8, :cond_5

    .line 1072
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1073
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1074
    invoke-virtual {p0, v8}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    goto :goto_0

    .line 1076
    :cond_5
    iget v1, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    if-ne v1, v9, :cond_6

    .line 1077
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1078
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1079
    invoke-virtual {p0, v9}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    goto :goto_0

    .line 1081
    :cond_6
    iget v1, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    if-ne v1, v10, :cond_7

    .line 1082
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1083
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1084
    invoke-virtual {p0, v10}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    goto :goto_0

    .line 1086
    :cond_7
    iget v1, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    .line 1087
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1088
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1089
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    goto :goto_0
.end method

.method private checkIsNextMusicFileDownloaded()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 2164
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->getCurrentDownloadMask()I

    move-result v7

    and-int/lit8 v7, v7, 0x10

    if-nez v7, :cond_1

    .line 2188
    :cond_0
    :goto_0
    return-void

    .line 2167
    :cond_1
    iget-boolean v7, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    if-eqz v7, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    .line 2168
    .local v1, "currentPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_0

    .line 2171
    iget v7, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    add-int/lit8 v5, v7, 0x1

    .line 2172
    .local v5, "nextIndex":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v5, v7, :cond_2

    .line 2173
    const/4 v5, 0x0

    .line 2175
    :cond_2
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 2176
    .local v4, "nextAudio":Lorg/telegram/messenger/MessageObject;
    const/4 v3, 0x0

    .line 2177
    .local v3, "file":Ljava/io/File;
    iget-object v7, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 2178
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    iget-object v7, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2179
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 2180
    const/4 v3, 0x0

    .line 2183
    :cond_3
    if-eqz v3, :cond_5

    move-object v0, v3

    .line 2184
    .local v0, "cacheFile":Ljava/io/File;
    :goto_2
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v2, 0x1

    .line 2185
    .local v2, "exist":Z
    :goto_3
    if-eqz v0, :cond_0

    if-eq v0, v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2186
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v8

    invoke-virtual {v7, v8, v6, v6}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    goto :goto_0

    .line 2167
    .end local v0    # "cacheFile":Ljava/io/File;
    .end local v1    # "currentPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v2    # "exist":Z
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "nextAudio":Lorg/telegram/messenger/MessageObject;
    .end local v5    # "nextIndex":I
    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    goto :goto_1

    .line 2183
    .restart local v1    # "currentPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "nextAudio":Lorg/telegram/messenger/MessageObject;
    .restart local v5    # "nextIndex":I
    :cond_5
    iget-object v7, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    goto :goto_2

    .restart local v0    # "cacheFile":Ljava/io/File;
    :cond_6
    move v2, v6

    .line 2184
    goto :goto_3
.end method

.method private checkPlayerQueue()V
    .locals 2

    .prologue
    .line 1517
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playerQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MediaController$8;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$8;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1577
    return-void
.end method

.method private checkScreenshots(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "dates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-wide/16 v10, 0x0

    .line 1179
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-wide v6, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatEnterTime:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v5, :cond_1

    .line 1199
    :cond_0
    :goto_0
    return-void

    .line 1182
    :cond_1
    const-wide/16 v2, 0x7d0

    .line 1183
    .local v2, "dt":J
    const/4 v4, 0x0

    .line 1184
    .local v4, "send":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1185
    .local v0, "date":Ljava/lang/Long;
    iget-wide v6, p0, Lorg/telegram/messenger/MediaController;->lastMediaCheckTime:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/telegram/messenger/MediaController;->lastMediaCheckTime:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    .line 1189
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatEnterTime:J

    cmp-long v5, v6, v8

    if-ltz v5, :cond_2

    .line 1190
    iget-wide v6, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatLeaveTime:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatLeaveTime:J

    add-long/2addr v8, v2

    cmp-long v5, v6, v8

    if-gtz v5, :cond_2

    .line 1191
    :cond_4
    iget-wide v6, p0, Lorg/telegram/messenger/MediaController;->lastMediaCheckTime:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/messenger/MediaController;->lastMediaCheckTime:J

    .line 1192
    const/4 v4, 0x1

    goto :goto_1

    .line 1196
    .end local v0    # "date":Ljava/lang/Long;
    :cond_5
    if-eqz v4, :cond_0

    .line 1197
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatVisibleMessages:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lorg/telegram/messenger/SecretChatHelper;->sendScreenshotMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_0
.end method

.method private native closeOpusFile()V
.end method

.method private convertVideo(Lorg/telegram/messenger/MessageObject;)Z
    .locals 90
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 3539
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    move-object/from16 v84, v0

    .line 3540
    .local v84, "videoPath":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    move-wide/from16 v76, v0

    .line 3541
    .local v76, "startTime":J
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    move-wide/from16 v18, v0

    .line 3542
    .local v18, "endTime":J
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    move/from16 v72, v0

    .line 3543
    .local v72, "resultWidth":I
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    move/from16 v70, v0

    .line 3544
    .local v70, "resultHeight":I
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    move/from16 v74, v0

    .line 3545
    .local v74, "rotationValue":I
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    move/from16 v61, v0

    .line 3546
    .local v61, "originalWidth":I
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    move/from16 v60, v0

    .line 3547
    .local v60, "originalHeight":I
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    move/from16 v24, v0

    .line 3548
    .local v24, "bitrate":I
    const/16 v73, 0x0

    .line 3549
    .local v73, "rotateRender":I
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3551
    .local v20, "cacheFile":Ljava/io/File;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-ge v6, v10, :cond_2

    move/from16 v0, v70

    move/from16 v1, v72

    if-le v0, v1, :cond_2

    move/from16 v0, v72

    move/from16 v1, v61

    if-eq v0, v1, :cond_2

    move/from16 v0, v70

    move/from16 v1, v60

    if-eq v0, v1, :cond_2

    .line 3552
    move/from16 v79, v70

    .line 3553
    .local v79, "temp":I
    move/from16 v70, v72

    .line 3554
    move/from16 v72, v79

    .line 3555
    const/16 v74, 0x5a

    .line 3556
    const/16 v73, 0x10e

    .line 3576
    .end local v79    # "temp":I
    :cond_0
    :goto_0
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "videoconvert"

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v68

    .line 3577
    .local v68, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "isPreviousOk"

    const/4 v10, 0x1

    move-object/from16 v0, v68

    invoke-interface {v0, v6, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v55

    .line 3578
    .local v55, "isPreviousOk":Z
    invoke-interface/range {v68 .. v68}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string/jumbo v10, "isPreviousOk"

    const/4 v11, 0x0

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3580
    new-instance v51, Ljava/io/File;

    move-object/from16 v0, v51

    move-object/from16 v1, v84

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3581
    .local v51, "inputFile":Ljava/io/File;
    invoke-virtual/range {v51 .. v51}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v55, :cond_5

    .line 3582
    :cond_1
    const/4 v6, 0x1

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v6, v10}, Lorg/telegram/messenger/MediaController;->didWriteData(Lorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V

    .line 3583
    invoke-interface/range {v68 .. v68}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string/jumbo v10, "isPreviousOk"

    const/4 v11, 0x1

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3584
    const/4 v6, 0x0

    .line 3977
    .end local v24    # "bitrate":I
    :goto_1
    return v6

    .line 3557
    .end local v51    # "inputFile":Ljava/io/File;
    .end local v55    # "isPreviousOk":Z
    .end local v68    # "preferences":Landroid/content/SharedPreferences;
    .restart local v24    # "bitrate":I
    :cond_2
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x14

    if-le v6, v10, :cond_0

    .line 3558
    const/16 v6, 0x5a

    move/from16 v0, v74

    if-ne v0, v6, :cond_3

    .line 3559
    move/from16 v79, v70

    .line 3560
    .restart local v79    # "temp":I
    move/from16 v70, v72

    .line 3561
    move/from16 v72, v79

    .line 3562
    const/16 v74, 0x0

    .line 3563
    const/16 v73, 0x10e

    .line 3564
    goto :goto_0

    .end local v79    # "temp":I
    :cond_3
    const/16 v6, 0xb4

    move/from16 v0, v74

    if-ne v0, v6, :cond_4

    .line 3565
    const/16 v73, 0xb4

    .line 3566
    const/16 v74, 0x0

    goto :goto_0

    .line 3567
    :cond_4
    const/16 v6, 0x10e

    move/from16 v0, v74

    if-ne v0, v6, :cond_0

    .line 3568
    move/from16 v79, v70

    .line 3569
    .restart local v79    # "temp":I
    move/from16 v70, v72

    .line 3570
    move/from16 v72, v79

    .line 3571
    const/16 v74, 0x0

    .line 3572
    const/16 v73, 0x5a

    goto/16 :goto_0

    .line 3587
    .end local v79    # "temp":I
    .restart local v51    # "inputFile":Ljava/io/File;
    .restart local v55    # "isPreviousOk":Z
    .restart local v68    # "preferences":Landroid/content/SharedPreferences;
    :cond_5
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lorg/telegram/messenger/MediaController;->videoConvertFirstWrite:Z

    .line 3588
    const/16 v43, 0x0

    .line 3589
    .local v43, "error":Z
    move-wide/from16 v86, v76

    .line 3591
    .local v86, "videoStartTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v80

    .line 3593
    .local v80, "time":J
    if-eqz v72, :cond_49

    if-eqz v70, :cond_49

    .line 3594
    const/16 v57, 0x0

    .line 3595
    .local v57, "mediaMuxer":Lorg/telegram/messenger/video/MP4Builder;
    const/16 v45, 0x0

    .line 3598
    .local v45, "extractor":Landroid/media/MediaExtractor;
    :try_start_0
    new-instance v48, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v48 .. v48}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 3599
    .local v48, "info":Landroid/media/MediaCodec$BufferInfo;
    new-instance v58, Lorg/telegram/messenger/video/Mp4Movie;

    invoke-direct/range {v58 .. v58}, Lorg/telegram/messenger/video/Mp4Movie;-><init>()V

    .line 3600
    .local v58, "movie":Lorg/telegram/messenger/video/Mp4Movie;
    move-object/from16 v0, v58

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/video/Mp4Movie;->setCacheFile(Ljava/io/File;)V

    .line 3601
    move-object/from16 v0, v58

    move/from16 v1, v74

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/video/Mp4Movie;->setRotation(I)V

    .line 3602
    move-object/from16 v0, v58

    move/from16 v1, v72

    move/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/video/Mp4Movie;->setSize(II)V

    .line 3603
    new-instance v6, Lorg/telegram/messenger/video/MP4Builder;

    invoke-direct {v6}, Lorg/telegram/messenger/video/MP4Builder;-><init>()V

    move-object/from16 v0, v58

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/video/MP4Builder;->createMovie(Lorg/telegram/messenger/video/Mp4Movie;)Lorg/telegram/messenger/video/MP4Builder;

    move-result-object v57

    .line 3604
    new-instance v46, Landroid/media/MediaExtractor;

    invoke-direct/range {v46 .. v46}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3605
    .end local v45    # "extractor":Landroid/media/MediaExtractor;
    .local v46, "extractor":Landroid/media/MediaExtractor;
    :try_start_1
    invoke-virtual/range {v51 .. v51}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v46

    invoke-virtual {v0, v6}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 3607
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    .line 3609
    move/from16 v0, v72

    move/from16 v1, v61

    if-ne v0, v1, :cond_6

    move/from16 v0, v70

    move/from16 v1, v60

    if-eq v0, v1, :cond_46

    .line 3611
    :cond_6
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v6}, Lorg/telegram/messenger/MediaController;->selectTrack(Landroid/media/MediaExtractor;Z)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v83

    .line 3612
    .local v83, "videoIndex":I
    if-ltz v83, :cond_4a

    .line 3613
    const/4 v4, 0x0

    .line 3614
    .local v4, "decoder":Landroid/media/MediaCodec;
    const/16 v37, 0x0

    .line 3615
    .local v37, "encoder":Landroid/media/MediaCodec;
    const/16 v53, 0x0

    .line 3616
    .local v53, "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    const/16 v64, 0x0

    .line 3619
    .local v64, "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    const-wide/16 v88, -0x1

    .line 3620
    .local v88, "videoTime":J
    const/16 v62, 0x0

    .line 3621
    .local v62, "outputDone":Z
    const/16 v50, 0x0

    .line 3622
    .local v50, "inputDone":Z
    const/16 v30, 0x0

    .line 3623
    .local v30, "decoderDone":Z
    const/16 v78, 0x0

    .line 3624
    .local v78, "swapUV":I
    const/16 v85, -0x5

    .line 3627
    .local v85, "videoTrackIndex":I
    const/16 v69, 0x0

    .line 3628
    .local v69, "processorType":I
    :try_start_2
    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v56

    .line 3629
    .local v56, "manufacturer":Ljava/lang/String;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-ge v6, v10, :cond_1f

    .line 3630
    const-string/jumbo v6, "video/avc"

    invoke-static {v6}, Lorg/telegram/messenger/MediaController;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v26

    .line 3631
    .local v26, "codecInfo":Landroid/media/MediaCodecInfo;
    const-string/jumbo v6, "video/avc"

    move-object/from16 v0, v26

    invoke-static {v0, v6}, Lorg/telegram/messenger/MediaController;->selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result v28

    .line 3632
    .local v28, "colorFormat":I
    if-nez v28, :cond_e

    .line 3633
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v10, "no supported color format"

    invoke-direct {v6, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3921
    .end local v24    # "bitrate":I
    .end local v26    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v28    # "colorFormat":I
    .end local v56    # "manufacturer":Ljava/lang/String;
    :catch_0
    move-exception v35

    .line 3922
    .local v35, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string/jumbo v6, "tmessages"

    move-object/from16 v0, v35

    invoke-static {v6, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3923
    const/16 v43, 0x1

    move-wide/from16 v16, v86

    .line 3926
    .end local v35    # "e":Ljava/lang/Exception;
    .end local v86    # "videoStartTime":J
    .local v16, "videoStartTime":J
    :goto_3
    :try_start_4
    move-object/from16 v0, v46

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    .line 3928
    if-eqz v64, :cond_7

    .line 3929
    invoke-virtual/range {v64 .. v64}, Lorg/telegram/messenger/video/OutputSurface;->release()V

    .line 3931
    :cond_7
    if-eqz v53, :cond_8

    .line 3932
    invoke-virtual/range {v53 .. v53}, Lorg/telegram/messenger/video/InputSurface;->release()V

    .line 3934
    :cond_8
    if-eqz v4, :cond_9

    .line 3935
    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    .line 3936
    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    .line 3938
    :cond_9
    if-eqz v37, :cond_a

    .line 3939
    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->stop()V

    .line 3940
    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->release()V

    .line 3943
    :cond_a
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    .line 3951
    .end local v4    # "decoder":Landroid/media/MediaCodec;
    .end local v30    # "decoderDone":Z
    .end local v37    # "encoder":Landroid/media/MediaCodec;
    .end local v50    # "inputDone":Z
    .end local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .end local v62    # "outputDone":Z
    .end local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .end local v69    # "processorType":I
    .end local v78    # "swapUV":I
    .end local v83    # "videoIndex":I
    .end local v85    # "videoTrackIndex":I
    .end local v88    # "videoTime":J
    :goto_4
    if-nez v43, :cond_b

    .line 3952
    const/16 v21, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, v46

    move-object/from16 v14, v57

    move-object/from16 v15, v48

    invoke-direct/range {v11 .. v21}, Lorg/telegram/messenger/MediaController;->readAndWriteTrack(Lorg/telegram/messenger/MessageObject;Landroid/media/MediaExtractor;Lorg/telegram/messenger/video/MP4Builder;Landroid/media/MediaCodec$BufferInfo;JJLjava/io/File;Z)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3958
    :cond_b
    if-eqz v46, :cond_c

    .line 3959
    invoke-virtual/range {v46 .. v46}, Landroid/media/MediaExtractor;->release()V

    .line 3961
    :cond_c
    if-eqz v57, :cond_d

    .line 3963
    const/4 v6, 0x0

    :try_start_5
    move-object/from16 v0, v57

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 3968
    :cond_d
    :goto_5
    const-string/jumbo v6, "tmessages"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "time = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v12, v12, v80

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v45, v46

    .line 3975
    .end local v46    # "extractor":Landroid/media/MediaExtractor;
    .end local v48    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v58    # "movie":Lorg/telegram/messenger/video/Mp4Movie;
    .restart local v45    # "extractor":Landroid/media/MediaExtractor;
    :goto_6
    invoke-interface/range {v68 .. v68}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string/jumbo v10, "isPreviousOk"

    const/4 v11, 0x1

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3976
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, v43

    invoke-direct {v0, v1, v2, v6, v3}, Lorg/telegram/messenger/MediaController;->didWriteData(Lorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V

    .line 3977
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 3635
    .end local v16    # "videoStartTime":J
    .end local v45    # "extractor":Landroid/media/MediaExtractor;
    .restart local v4    # "decoder":Landroid/media/MediaCodec;
    .restart local v24    # "bitrate":I
    .restart local v26    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v28    # "colorFormat":I
    .restart local v30    # "decoderDone":Z
    .restart local v37    # "encoder":Landroid/media/MediaCodec;
    .restart local v46    # "extractor":Landroid/media/MediaExtractor;
    .restart local v48    # "info":Landroid/media/MediaCodec$BufferInfo;
    .restart local v50    # "inputDone":Z
    .restart local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .restart local v56    # "manufacturer":Ljava/lang/String;
    .restart local v58    # "movie":Lorg/telegram/messenger/video/Mp4Movie;
    .restart local v62    # "outputDone":Z
    .restart local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .restart local v69    # "processorType":I
    .restart local v78    # "swapUV":I
    .restart local v83    # "videoIndex":I
    .restart local v85    # "videoTrackIndex":I
    .restart local v86    # "videoStartTime":J
    .restart local v88    # "videoTime":J
    :cond_e
    :try_start_6
    invoke-virtual/range {v26 .. v26}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v27

    .line 3636
    .local v27, "codecName":Ljava/lang/String;
    const-string/jumbo v6, "OMX.qcom."

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 3637
    const/16 v69, 0x1

    .line 3638
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-ne v6, v10, :cond_10

    .line 3639
    const-string/jumbo v6, "lge"

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string/jumbo v6, "nokia"

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 3640
    :cond_f
    const/16 v78, 0x1

    .line 3653
    :cond_10
    :goto_7
    const-string/jumbo v6, "tmessages"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "codec = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v26 .. v26}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " manufacturer = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v56

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "device = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3657
    .end local v26    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v27    # "codecName":Ljava/lang/String;
    :goto_8
    const-string/jumbo v6, "tmessages"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "colorFormat = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3659
    move/from16 v71, v70

    .line 3660
    .local v71, "resultHeightAligned":I
    const/16 v66, 0x0

    .line 3661
    .local v66, "padding":I
    mul-int v6, v72, v70

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v25, v6, 0x2

    .line 3662
    .local v25, "bufferSize":I
    if-nez v69, :cond_20

    .line 3663
    rem-int/lit8 v6, v70, 0x10

    if-eqz v6, :cond_11

    .line 3664
    rem-int/lit8 v6, v70, 0x10

    rsub-int/lit8 v6, v6, 0x10

    add-int v71, v71, v6

    .line 3665
    sub-int v6, v71, v70

    mul-int v66, v72, v6

    .line 3666
    mul-int/lit8 v6, v66, 0x5

    div-int/lit8 v6, v6, 0x4

    add-int v25, v25, v6

    .line 3688
    :cond_11
    :goto_9
    move-object/from16 v0, v46

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 3689
    const-wide/16 v10, 0x0

    cmp-long v6, v76, v10

    if-lez v6, :cond_22

    .line 3690
    const/4 v6, 0x0

    move-object/from16 v0, v46

    move-wide/from16 v1, v76

    invoke-virtual {v0, v1, v2, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 3694
    :goto_a
    move-object/from16 v0, v46

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v52

    .line 3696
    .local v52, "inputFormat":Landroid/media/MediaFormat;
    const-string/jumbo v6, "video/avc"

    move/from16 v0, v72

    move/from16 v1, v70

    invoke-static {v6, v0, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v63

    .line 3697
    .local v63, "outputFormat":Landroid/media/MediaFormat;
    const-string/jumbo v6, "color-format"

    move-object/from16 v0, v63

    move/from16 v1, v28

    invoke-virtual {v0, v6, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3698
    const-string/jumbo v6, "bitrate"

    if-eqz v24, :cond_25

    .end local v24    # "bitrate":I
    :goto_b
    move-object/from16 v0, v63

    move/from16 v1, v24

    invoke-virtual {v0, v6, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3699
    const-string/jumbo v6, "frame-rate"

    const/16 v10, 0x19

    move-object/from16 v0, v63

    invoke-virtual {v0, v6, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3700
    const-string/jumbo v6, "i-frame-interval"

    const/16 v10, 0xa

    move-object/from16 v0, v63

    invoke-virtual {v0, v6, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3701
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-ge v6, v10, :cond_12

    .line 3702
    const-string/jumbo v6, "stride"

    add-int/lit8 v10, v72, 0x20

    move-object/from16 v0, v63

    invoke-virtual {v0, v6, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3703
    const-string/jumbo v6, "slice-height"

    move-object/from16 v0, v63

    move/from16 v1, v70

    invoke-virtual {v0, v6, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3706
    :cond_12
    const-string/jumbo v6, "video/avc"

    invoke-static {v6}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v37

    .line 3707
    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, v63

    invoke-virtual {v0, v1, v6, v10, v11}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 3708
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-lt v6, v10, :cond_13

    .line 3709
    new-instance v54, Lorg/telegram/messenger/video/InputSurface;

    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-direct {v0, v6}, Lorg/telegram/messenger/video/InputSurface;-><init>(Landroid/view/Surface;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3710
    .end local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .local v54, "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    :try_start_7
    invoke-virtual/range {v54 .. v54}, Lorg/telegram/messenger/video/InputSurface;->makeCurrent()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v53, v54

    .line 3712
    .end local v54    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .restart local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    :cond_13
    :try_start_8
    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->start()V

    .line 3714
    const-string/jumbo v6, "mime"

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    .line 3715
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-lt v6, v10, :cond_26

    .line 3716
    new-instance v65, Lorg/telegram/messenger/video/OutputSurface;

    invoke-direct/range {v65 .. v65}, Lorg/telegram/messenger/video/OutputSurface;-><init>()V

    .end local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .local v65, "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    move-object/from16 v64, v65

    .line 3720
    .end local v65    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .restart local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    :goto_c
    invoke-virtual/range {v64 .. v64}, Lorg/telegram/messenger/video/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v4, v0, v6, v10, v11}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 3721
    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 3723
    const/16 v22, 0x9c4

    .line 3724
    .local v22, "TIMEOUT_USEC":I
    const/16 v31, 0x0

    .line 3725
    .local v31, "decoderInputBuffers":[Ljava/nio/ByteBuffer;
    const/16 v40, 0x0

    .line 3726
    .local v40, "encoderOutputBuffers":[Ljava/nio/ByteBuffer;
    const/16 v38, 0x0

    .line 3727
    .local v38, "encoderInputBuffers":[Ljava/nio/ByteBuffer;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-ge v6, v10, :cond_14

    .line 3728
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v31

    .line 3729
    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v40

    .line 3730
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-ge v6, v10, :cond_14

    .line 3731
    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v38

    .line 3735
    :cond_14
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    .line 3737
    :cond_15
    if-nez v62, :cond_45

    .line 3738
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    .line 3739
    if-nez v50, :cond_17

    .line 3740
    const/16 v42, 0x0

    .line 3741
    .local v42, "eof":Z
    invoke-virtual/range {v46 .. v46}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v47

    .line 3742
    .local v47, "index":I
    move/from16 v0, v47

    move/from16 v1, v83

    if-ne v0, v1, :cond_29

    .line 3743
    const-wide/16 v10, 0x9c4

    invoke-virtual {v4, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    .line 3744
    .local v5, "inputBufIndex":I
    if-ltz v5, :cond_16

    .line 3746
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-ge v6, v10, :cond_27

    .line 3747
    aget-object v49, v31, v5

    .line 3751
    .local v49, "inputBuf":Ljava/nio/ByteBuffer;
    :goto_d
    const/4 v6, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v49

    invoke-virtual {v0, v1, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v7

    .line 3752
    .local v7, "chunkSize":I
    if-gez v7, :cond_28

    .line 3753
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 3754
    .end local v7    # "chunkSize":I
    const/16 v50, 0x1

    .line 3763
    .end local v5    # "inputBufIndex":I
    .end local v49    # "inputBuf":Ljava/nio/ByteBuffer;
    :cond_16
    :goto_e
    if-eqz v42, :cond_17

    .line 3764
    const-wide/16 v10, 0x9c4

    invoke-virtual {v4, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    .line 3765
    .restart local v5    # "inputBufIndex":I
    if-ltz v5, :cond_17

    .line 3766
    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x4

    move-object v8, v4

    move v9, v5

    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 3767
    const/16 v50, 0x1

    .line 3772
    .end local v5    # "inputBufIndex":I
    .end local v42    # "eof":Z
    .end local v47    # "index":I
    :cond_17
    if-nez v30, :cond_2a

    const/16 v32, 0x1

    .line 3773
    .local v32, "decoderOutputAvailable":Z
    :goto_f
    const/16 v39, 0x1

    .line 3774
    .local v39, "encoderOutputAvailable":Z
    :cond_18
    :goto_10
    if-nez v32, :cond_19

    if-eqz v39, :cond_15

    .line 3775
    :cond_19
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    .line 3776
    const-wide/16 v10, 0x9c4

    move-object/from16 v0, v37

    move-object/from16 v1, v48

    invoke-virtual {v0, v1, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v41

    .line 3777
    .local v41, "encoderStatus":I
    const/4 v6, -0x1

    move/from16 v0, v41

    if-ne v0, v6, :cond_2b

    .line 3778
    const/16 v39, 0x0

    .line 3837
    :cond_1a
    :goto_11
    const/4 v6, -0x1

    move/from16 v0, v41

    if-ne v0, v6, :cond_18

    .line 3841
    if-nez v30, :cond_18

    .line 3842
    const-wide/16 v10, 0x9c4

    move-object/from16 v0, v48

    invoke-virtual {v4, v0, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v33

    .line 3843
    .local v33, "decoderStatus":I
    const/4 v6, -0x1

    move/from16 v0, v33

    if-ne v0, v6, :cond_37

    .line 3844
    const/16 v32, 0x0

    goto :goto_10

    .line 3643
    .end local v22    # "TIMEOUT_USEC":I
    .end local v25    # "bufferSize":I
    .end local v31    # "decoderInputBuffers":[Ljava/nio/ByteBuffer;
    .end local v32    # "decoderOutputAvailable":Z
    .end local v33    # "decoderStatus":I
    .end local v38    # "encoderInputBuffers":[Ljava/nio/ByteBuffer;
    .end local v39    # "encoderOutputAvailable":Z
    .end local v40    # "encoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .end local v41    # "encoderStatus":I
    .end local v52    # "inputFormat":Landroid/media/MediaFormat;
    .end local v63    # "outputFormat":Landroid/media/MediaFormat;
    .end local v66    # "padding":I
    .end local v71    # "resultHeightAligned":I
    .restart local v24    # "bitrate":I
    .restart local v26    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v27    # "codecName":Ljava/lang/String;
    :cond_1b
    const-string/jumbo v6, "OMX.Intel."

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 3644
    const/16 v69, 0x2

    goto/16 :goto_7

    .line 3645
    :cond_1c
    const-string/jumbo v6, "OMX.MTK.VIDEO.ENCODER.AVC"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 3646
    const/16 v69, 0x3

    goto/16 :goto_7

    .line 3647
    :cond_1d
    const-string/jumbo v6, "OMX.SEC.AVC.Encoder"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 3648
    const/16 v69, 0x4

    .line 3649
    const/16 v78, 0x1

    goto/16 :goto_7

    .line 3650
    :cond_1e
    const-string/jumbo v6, "OMX.TI.DUCATI1.VIDEO.H264E"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 3651
    const/16 v69, 0x5

    goto/16 :goto_7

    .line 3655
    .end local v26    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v27    # "codecName":Ljava/lang/String;
    .end local v28    # "colorFormat":I
    :cond_1f
    const v28, 0x7f000789

    .restart local v28    # "colorFormat":I
    goto/16 :goto_8

    .line 3668
    .restart local v25    # "bufferSize":I
    .restart local v66    # "padding":I
    .restart local v71    # "resultHeightAligned":I
    :cond_20
    const/4 v6, 0x1

    move/from16 v0, v69

    if-ne v0, v6, :cond_21

    .line 3669
    invoke-virtual/range {v56 .. v56}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, "lge"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 3670
    mul-int v6, v72, v70

    add-int/lit16 v6, v6, 0x7ff

    and-int/lit16 v0, v6, -0x800

    move/from16 v82, v0

    .line 3671
    .local v82, "uvoffset":I
    mul-int v6, v72, v70

    sub-int v66, v82, v6

    .line 3672
    add-int v25, v25, v66

    .line 3673
    goto/16 :goto_9

    .line 3674
    .end local v82    # "uvoffset":I
    :cond_21
    const/4 v6, 0x5

    move/from16 v0, v69

    if-eq v0, v6, :cond_11

    .line 3680
    const/4 v6, 0x3

    move/from16 v0, v69

    if-ne v0, v6, :cond_11

    .line 3681
    const-string/jumbo v6, "baidu"

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 3682
    rem-int/lit8 v6, v70, 0x10

    rsub-int/lit8 v6, v6, 0x10

    add-int v71, v71, v6

    .line 3683
    sub-int v6, v71, v70

    mul-int v66, v72, v6

    .line 3684
    mul-int/lit8 v6, v66, 0x5

    div-int/lit8 v6, v6, 0x4

    add-int v25, v25, v6

    goto/16 :goto_9

    .line 3692
    :cond_22
    const-wide/16 v10, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v46

    invoke-virtual {v0, v10, v11, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_a

    .line 3958
    .end local v4    # "decoder":Landroid/media/MediaCodec;
    .end local v24    # "bitrate":I
    .end local v25    # "bufferSize":I
    .end local v28    # "colorFormat":I
    .end local v30    # "decoderDone":Z
    .end local v37    # "encoder":Landroid/media/MediaCodec;
    .end local v50    # "inputDone":Z
    .end local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .end local v56    # "manufacturer":Ljava/lang/String;
    .end local v62    # "outputDone":Z
    .end local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .end local v66    # "padding":I
    .end local v69    # "processorType":I
    .end local v71    # "resultHeightAligned":I
    .end local v78    # "swapUV":I
    .end local v83    # "videoIndex":I
    .end local v85    # "videoTrackIndex":I
    .end local v88    # "videoTime":J
    :catchall_0
    move-exception v6

    move-object/from16 v45, v46

    .end local v46    # "extractor":Landroid/media/MediaExtractor;
    .restart local v45    # "extractor":Landroid/media/MediaExtractor;
    move-wide/from16 v16, v86

    .end local v48    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v58    # "movie":Lorg/telegram/messenger/video/Mp4Movie;
    .end local v86    # "videoStartTime":J
    .restart local v16    # "videoStartTime":J
    :goto_12
    if-eqz v45, :cond_23

    .line 3959
    invoke-virtual/range {v45 .. v45}, Landroid/media/MediaExtractor;->release()V

    .line 3961
    :cond_23
    if-eqz v57, :cond_24

    .line 3963
    const/4 v10, 0x0

    :try_start_9
    move-object/from16 v0, v57

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie(Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 3968
    :cond_24
    :goto_13
    const-string/jumbo v10, "tmessages"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "time = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v12, v12, v80

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .line 3698
    .end local v16    # "videoStartTime":J
    .end local v45    # "extractor":Landroid/media/MediaExtractor;
    .restart local v4    # "decoder":Landroid/media/MediaCodec;
    .restart local v24    # "bitrate":I
    .restart local v25    # "bufferSize":I
    .restart local v28    # "colorFormat":I
    .restart local v30    # "decoderDone":Z
    .restart local v37    # "encoder":Landroid/media/MediaCodec;
    .restart local v46    # "extractor":Landroid/media/MediaExtractor;
    .restart local v48    # "info":Landroid/media/MediaCodec$BufferInfo;
    .restart local v50    # "inputDone":Z
    .restart local v52    # "inputFormat":Landroid/media/MediaFormat;
    .restart local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .restart local v56    # "manufacturer":Ljava/lang/String;
    .restart local v58    # "movie":Lorg/telegram/messenger/video/Mp4Movie;
    .restart local v62    # "outputDone":Z
    .restart local v63    # "outputFormat":Landroid/media/MediaFormat;
    .restart local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .restart local v66    # "padding":I
    .restart local v69    # "processorType":I
    .restart local v71    # "resultHeightAligned":I
    .restart local v78    # "swapUV":I
    .restart local v83    # "videoIndex":I
    .restart local v85    # "videoTrackIndex":I
    .restart local v86    # "videoStartTime":J
    .restart local v88    # "videoTime":J
    :cond_25
    const v24, 0xe1000

    goto/16 :goto_b

    .line 3718
    .end local v24    # "bitrate":I
    :cond_26
    :try_start_a
    new-instance v65, Lorg/telegram/messenger/video/OutputSurface;

    move-object/from16 v0, v65

    move/from16 v1, v72

    move/from16 v2, v70

    move/from16 v3, v73

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/video/OutputSurface;-><init>(III)V

    .end local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .restart local v65    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    move-object/from16 v64, v65

    .end local v65    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .restart local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    goto/16 :goto_c

    .line 3749
    .restart local v5    # "inputBufIndex":I
    .restart local v22    # "TIMEOUT_USEC":I
    .restart local v31    # "decoderInputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v38    # "encoderInputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v40    # "encoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v42    # "eof":Z
    .restart local v47    # "index":I
    :cond_27
    invoke-virtual {v4, v5}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v49

    .restart local v49    # "inputBuf":Ljava/nio/ByteBuffer;
    goto/16 :goto_d

    .line 3756
    .restart local v7    # "chunkSize":I
    :cond_28
    const/4 v6, 0x0

    invoke-virtual/range {v46 .. v46}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 3757
    invoke-virtual/range {v46 .. v46}, Landroid/media/MediaExtractor;->advance()Z

    goto/16 :goto_e

    .line 3760
    .end local v5    # "inputBufIndex":I
    .end local v7    # "chunkSize":I
    .end local v49    # "inputBuf":Ljava/nio/ByteBuffer;
    :cond_29
    const/4 v6, -0x1

    move/from16 v0, v47

    if-ne v0, v6, :cond_16

    .line 3761
    const/16 v42, 0x1

    goto/16 :goto_e

    .line 3772
    .end local v42    # "eof":Z
    .end local v47    # "index":I
    :cond_2a
    const/16 v32, 0x0

    goto/16 :goto_f

    .line 3779
    .restart local v32    # "decoderOutputAvailable":Z
    .restart local v39    # "encoderOutputAvailable":Z
    .restart local v41    # "encoderStatus":I
    :cond_2b
    const/4 v6, -0x3

    move/from16 v0, v41

    if-ne v0, v6, :cond_2c

    .line 3780
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-ge v6, v10, :cond_1a

    .line 3781
    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v40

    goto/16 :goto_11

    .line 3783
    :cond_2c
    const/4 v6, -0x2

    move/from16 v0, v41

    if-ne v0, v6, :cond_2d

    .line 3784
    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v59

    .line 3785
    .local v59, "newFormat":Landroid/media/MediaFormat;
    const/4 v6, -0x5

    move/from16 v0, v85

    if-ne v0, v6, :cond_1a

    .line 3786
    const/4 v6, 0x0

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    invoke-virtual {v0, v1, v6}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v85

    goto/16 :goto_11

    .line 3788
    .end local v59    # "newFormat":Landroid/media/MediaFormat;
    :cond_2d
    if-gez v41, :cond_2e

    .line 3789
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v41

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3792
    :cond_2e
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-ge v6, v10, :cond_2f

    .line 3793
    aget-object v36, v40, v41

    .line 3797
    .local v36, "encodedData":Ljava/nio/ByteBuffer;
    :goto_14
    if-nez v36, :cond_30

    .line 3798
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "encoderOutputBuffer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v41

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " was null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3795
    .end local v36    # "encodedData":Ljava/nio/ByteBuffer;
    :cond_2f
    move-object/from16 v0, v37

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v36

    .restart local v36    # "encodedData":Ljava/nio/ByteBuffer;
    goto :goto_14

    .line 3800
    :cond_30
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v10, 0x1

    if-le v6, v10, :cond_31

    .line 3801
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_32

    .line 3802
    const/4 v6, 0x0

    move-object/from16 v0, v57

    move/from16 v1, v85

    move-object/from16 v2, v36

    move-object/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3, v6}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 3803
    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v6, v10}, Lorg/telegram/messenger/MediaController;->didWriteData(Lorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V

    .line 3834
    :cond_31
    :goto_15
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_36

    const/16 v62, 0x1

    .line 3835
    :goto_16
    const/4 v6, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v41

    invoke-virtual {v0, v1, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_11

    .line 3805
    :cond_32
    const/4 v6, -0x5

    move/from16 v0, v85

    if-ne v0, v6, :cond_31

    .line 3806
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v0, v6, [B

    move-object/from16 v29, v0

    .line 3807
    .local v29, "csd":[B
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, v48

    iget v10, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v6, v10

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 3808
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3809
    move-object/from16 v0, v36

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 3810
    const/16 v75, 0x0

    .line 3811
    .local v75, "sps":Ljava/nio/ByteBuffer;
    const/16 v67, 0x0

    .line 3812
    .local v67, "pps":Ljava/nio/ByteBuffer;
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v23, v6, -0x1

    .local v23, "a":I
    :goto_17
    if-ltz v23, :cond_33

    .line 3813
    const/4 v6, 0x3

    move/from16 v0, v23

    if-le v0, v6, :cond_33

    .line 3814
    aget-byte v6, v29, v23

    const/4 v10, 0x1

    if-ne v6, v10, :cond_35

    add-int/lit8 v6, v23, -0x1

    aget-byte v6, v29, v6

    if-nez v6, :cond_35

    add-int/lit8 v6, v23, -0x2

    aget-byte v6, v29, v6

    if-nez v6, :cond_35

    add-int/lit8 v6, v23, -0x3

    aget-byte v6, v29, v6

    if-nez v6, :cond_35

    .line 3815
    add-int/lit8 v6, v23, -0x3

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v75

    .line 3816
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v10, v23, -0x3

    sub-int/2addr v6, v10

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v67

    .line 3817
    const/4 v6, 0x0

    add-int/lit8 v10, v23, -0x3

    move-object/from16 v0, v75

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v6, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3818
    add-int/lit8 v6, v23, -0x3

    move-object/from16 v0, v48

    iget v10, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v11, v23, -0x3

    sub-int/2addr v10, v11

    move-object/from16 v0, v67

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v6, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3826
    :cond_33
    const-string/jumbo v6, "video/avc"

    move/from16 v0, v72

    move/from16 v1, v70

    invoke-static {v6, v0, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v59

    .line 3827
    .restart local v59    # "newFormat":Landroid/media/MediaFormat;
    if-eqz v75, :cond_34

    if-eqz v67, :cond_34

    .line 3828
    const-string/jumbo v6, "csd-0"

    move-object/from16 v0, v59

    move-object/from16 v1, v75

    invoke-virtual {v0, v6, v1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 3829
    const-string/jumbo v6, "csd-1"

    move-object/from16 v0, v59

    move-object/from16 v1, v67

    invoke-virtual {v0, v6, v1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 3831
    :cond_34
    const/4 v6, 0x0

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    invoke-virtual {v0, v1, v6}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v85

    goto/16 :goto_15

    .line 3812
    .end local v59    # "newFormat":Landroid/media/MediaFormat;
    :cond_35
    add-int/lit8 v23, v23, -0x1

    goto/16 :goto_17

    .line 3834
    .end local v23    # "a":I
    .end local v29    # "csd":[B
    .end local v67    # "pps":Ljava/nio/ByteBuffer;
    .end local v75    # "sps":Ljava/nio/ByteBuffer;
    :cond_36
    const/16 v62, 0x0

    goto/16 :goto_16

    .line 3845
    .end local v36    # "encodedData":Ljava/nio/ByteBuffer;
    .restart local v33    # "decoderStatus":I
    :cond_37
    const/4 v6, -0x3

    move/from16 v0, v33

    if-eq v0, v6, :cond_18

    .line 3847
    const/4 v6, -0x2

    move/from16 v0, v33

    if-ne v0, v6, :cond_38

    .line 3848
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v59

    .line 3849
    .restart local v59    # "newFormat":Landroid/media/MediaFormat;
    const-string/jumbo v6, "tmessages"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "newFormat = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v59

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 3850
    .end local v59    # "newFormat":Landroid/media/MediaFormat;
    :cond_38
    if-gez v33, :cond_39

    .line 3851
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v33

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3854
    :cond_39
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-lt v6, v10, :cond_3e

    .line 3855
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v6, :cond_3d

    const/16 v34, 0x1

    .line 3859
    .local v34, "doRender":Z
    :goto_18
    const-wide/16 v10, 0x0

    cmp-long v6, v18, v10

    if-lez v6, :cond_3a

    move-object/from16 v0, v48

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v6, v10, v18

    if-ltz v6, :cond_3a

    .line 3860
    const/16 v50, 0x1

    .line 3861
    const/16 v30, 0x1

    .line 3862
    const/16 v34, 0x0

    .line 3863
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    or-int/lit8 v6, v6, 0x4

    move-object/from16 v0, v48

    iput v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 3865
    :cond_3a
    const-wide/16 v10, 0x0

    cmp-long v6, v76, v10

    if-lez v6, :cond_3b

    const-wide/16 v10, -0x1

    cmp-long v6, v88, v10

    if-nez v6, :cond_3b

    .line 3866
    move-object/from16 v0, v48

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v6, v10, v76

    if-gez v6, :cond_41

    .line 3867
    const/16 v34, 0x0

    .line 3868
    const-string/jumbo v6, "tmessages"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "drop frame startTime = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v76

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " present time = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v48

    iget-wide v12, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3873
    :cond_3b
    :goto_19
    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 3874
    if-eqz v34, :cond_3c

    .line 3875
    const/16 v44, 0x0

    .line 3877
    .local v44, "errorWait":Z
    :try_start_b
    invoke-virtual/range {v64 .. v64}, Lorg/telegram/messenger/video/OutputSurface;->awaitNewImage()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 3882
    :goto_1a
    if-nez v44, :cond_3c

    .line 3883
    :try_start_c
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-lt v6, v10, :cond_42

    .line 3884
    const/4 v6, 0x0

    move-object/from16 v0, v64

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/video/OutputSurface;->drawImage(Z)V

    .line 3885
    move-object/from16 v0, v48

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    move-object/from16 v0, v53

    invoke-virtual {v0, v10, v11}, Lorg/telegram/messenger/video/InputSurface;->setPresentationTime(J)V

    .line 3886
    invoke-virtual/range {v53 .. v53}, Lorg/telegram/messenger/video/InputSurface;->swapBuffers()Z

    .line 3902
    .end local v44    # "errorWait":Z
    :cond_3c
    :goto_1b
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_18

    .line 3903
    const/16 v32, 0x0

    .line 3904
    const-string/jumbo v6, "tmessages"

    const-string/jumbo v10, "decoder stream end"

    invoke-static {v6, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3905
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-lt v6, v10, :cond_44

    .line 3906
    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    goto/16 :goto_10

    .line 3855
    .end local v34    # "doRender":Z
    :cond_3d
    const/16 v34, 0x0

    goto/16 :goto_18

    .line 3857
    :cond_3e
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v6, :cond_3f

    move-object/from16 v0, v48

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v12, 0x0

    cmp-long v6, v10, v12

    if-eqz v6, :cond_40

    :cond_3f
    const/16 v34, 0x1

    .restart local v34    # "doRender":Z
    :goto_1c
    goto/16 :goto_18

    .end local v34    # "doRender":Z
    :cond_40
    const/16 v34, 0x0

    goto :goto_1c

    .line 3870
    .restart local v34    # "doRender":Z
    :cond_41
    move-object/from16 v0, v48

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v88, v0

    goto :goto_19

    .line 3878
    .restart local v44    # "errorWait":Z
    :catch_1
    move-exception v35

    .line 3879
    .restart local v35    # "e":Ljava/lang/Exception;
    const/16 v44, 0x1

    .line 3880
    const-string/jumbo v6, "tmessages"

    move-object/from16 v0, v35

    invoke-static {v6, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a

    .line 3888
    .end local v35    # "e":Ljava/lang/Exception;
    :cond_42
    const-wide/16 v10, 0x9c4

    move-object/from16 v0, v37

    invoke-virtual {v0, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    .line 3889
    .restart local v5    # "inputBufIndex":I
    if-ltz v5, :cond_43

    .line 3890
    const/4 v6, 0x1

    move-object/from16 v0, v64

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/video/OutputSurface;->drawImage(Z)V

    .line 3891
    invoke-virtual/range {v64 .. v64}, Lorg/telegram/messenger/video/OutputSurface;->getFrame()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 3892
    .local v8, "rgbBuf":Ljava/nio/ByteBuffer;
    aget-object v9, v38, v5

    .line 3893
    .local v9, "yuvBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move/from16 v10, v28

    move/from16 v11, v72

    move/from16 v12, v70

    move/from16 v13, v66

    move/from16 v14, v78

    .line 3894
    invoke-static/range {v8 .. v14}, Lorg/telegram/messenger/Utilities;->convertVideoFrame(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIII)I

    .line 3895
    const/4 v12, 0x0

    move-object/from16 v0, v48

    iget-wide v14, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/16 v16, 0x0

    move-object/from16 v10, v37

    move v11, v5

    move/from16 v13, v25

    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto/16 :goto_1b

    .line 3897
    .end local v8    # "rgbBuf":Ljava/nio/ByteBuffer;
    .end local v9    # "yuvBuf":Ljava/nio/ByteBuffer;
    :cond_43
    const-string/jumbo v6, "tmessages"

    const-string/jumbo v10, "input buffer not available"

    invoke-static {v6, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1b

    .line 3908
    .end local v5    # "inputBufIndex":I
    .end local v44    # "errorWait":Z
    :cond_44
    const-wide/16 v10, 0x9c4

    move-object/from16 v0, v37

    invoke-virtual {v0, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    .line 3909
    .restart local v5    # "inputBufIndex":I
    if-ltz v5, :cond_18

    .line 3910
    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, v48

    iget-wide v14, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/16 v16, 0x4

    move-object/from16 v10, v37

    move v11, v5

    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_10

    .line 3918
    .end local v5    # "inputBufIndex":I
    .end local v32    # "decoderOutputAvailable":Z
    .end local v33    # "decoderStatus":I
    .end local v34    # "doRender":Z
    .end local v39    # "encoderOutputAvailable":Z
    .end local v41    # "encoderStatus":I
    :cond_45
    const-wide/16 v10, -0x1

    cmp-long v6, v88, v10

    if-eqz v6, :cond_4b

    .line 3919
    move-wide/from16 v16, v88

    .end local v86    # "videoStartTime":J
    .restart local v16    # "videoStartTime":J
    goto/16 :goto_3

    .line 3946
    .end local v4    # "decoder":Landroid/media/MediaCodec;
    .end local v16    # "videoStartTime":J
    .end local v22    # "TIMEOUT_USEC":I
    .end local v25    # "bufferSize":I
    .end local v28    # "colorFormat":I
    .end local v30    # "decoderDone":Z
    .end local v31    # "decoderInputBuffers":[Ljava/nio/ByteBuffer;
    .end local v37    # "encoder":Landroid/media/MediaCodec;
    .end local v38    # "encoderInputBuffers":[Ljava/nio/ByteBuffer;
    .end local v40    # "encoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .end local v50    # "inputDone":Z
    .end local v52    # "inputFormat":Landroid/media/MediaFormat;
    .end local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .end local v56    # "manufacturer":Ljava/lang/String;
    .end local v62    # "outputDone":Z
    .end local v63    # "outputFormat":Landroid/media/MediaFormat;
    .end local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .end local v66    # "padding":I
    .end local v69    # "processorType":I
    .end local v71    # "resultHeightAligned":I
    .end local v78    # "swapUV":I
    .end local v83    # "videoIndex":I
    .end local v85    # "videoTrackIndex":I
    .end local v88    # "videoTime":J
    .restart local v24    # "bitrate":I
    .restart local v86    # "videoStartTime":J
    :cond_46
    const/16 v21, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, v46

    move-object/from16 v14, v57

    move-object/from16 v15, v48

    move-wide/from16 v16, v76

    :try_start_d
    invoke-direct/range {v11 .. v21}, Lorg/telegram/messenger/MediaController;->readAndWriteTrack(Lorg/telegram/messenger/MessageObject;Landroid/media/MediaExtractor;Lorg/telegram/messenger/video/MP4Builder;Landroid/media/MediaCodec$BufferInfo;JJLjava/io/File;Z)J
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-wide v88

    .line 3947
    .restart local v88    # "videoTime":J
    const-wide/16 v10, -0x1

    cmp-long v6, v88, v10

    if-eqz v6, :cond_4a

    .line 3948
    move-wide/from16 v16, v88

    .end local v86    # "videoStartTime":J
    .restart local v16    # "videoStartTime":J
    goto/16 :goto_4

    .line 3964
    .end local v24    # "bitrate":I
    .end local v88    # "videoTime":J
    :catch_2
    move-exception v35

    .line 3965
    .restart local v35    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "tmessages"

    move-object/from16 v0, v35

    invoke-static {v6, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 3954
    .end local v16    # "videoStartTime":J
    .end local v35    # "e":Ljava/lang/Exception;
    .end local v46    # "extractor":Landroid/media/MediaExtractor;
    .end local v48    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v58    # "movie":Lorg/telegram/messenger/video/Mp4Movie;
    .restart local v24    # "bitrate":I
    .restart local v45    # "extractor":Landroid/media/MediaExtractor;
    .restart local v86    # "videoStartTime":J
    :catch_3
    move-exception v35

    move-wide/from16 v16, v86

    .line 3955
    .end local v24    # "bitrate":I
    .end local v86    # "videoStartTime":J
    .restart local v16    # "videoStartTime":J
    .restart local v35    # "e":Ljava/lang/Exception;
    :goto_1d
    const/16 v43, 0x1

    .line 3956
    :try_start_e
    const-string/jumbo v6, "tmessages"

    move-object/from16 v0, v35

    invoke-static {v6, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 3958
    if-eqz v45, :cond_47

    .line 3959
    invoke-virtual/range {v45 .. v45}, Landroid/media/MediaExtractor;->release()V

    .line 3961
    :cond_47
    if-eqz v57, :cond_48

    .line 3963
    const/4 v6, 0x0

    :try_start_f
    move-object/from16 v0, v57

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie(Z)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    .line 3968
    :cond_48
    :goto_1e
    const-string/jumbo v6, "tmessages"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "time = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v12, v12, v80

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 3964
    :catch_4
    move-exception v35

    .line 3965
    const-string/jumbo v6, "tmessages"

    move-object/from16 v0, v35

    invoke-static {v6, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e

    .line 3964
    .end local v35    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v35

    .line 3965
    .restart local v35    # "e":Ljava/lang/Exception;
    const-string/jumbo v10, "tmessages"

    move-object/from16 v0, v35

    invoke-static {v10, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 3971
    .end local v16    # "videoStartTime":J
    .end local v35    # "e":Ljava/lang/Exception;
    .end local v45    # "extractor":Landroid/media/MediaExtractor;
    .end local v57    # "mediaMuxer":Lorg/telegram/messenger/video/MP4Builder;
    .restart local v24    # "bitrate":I
    .restart local v86    # "videoStartTime":J
    :cond_49
    invoke-interface/range {v68 .. v68}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string/jumbo v10, "isPreviousOk"

    const/4 v11, 0x1

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3972
    const/4 v6, 0x1

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v6, v10}, Lorg/telegram/messenger/MediaController;->didWriteData(Lorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V

    .line 3973
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 3958
    .restart local v45    # "extractor":Landroid/media/MediaExtractor;
    .restart local v57    # "mediaMuxer":Lorg/telegram/messenger/video/MP4Builder;
    :catchall_1
    move-exception v6

    move-wide/from16 v16, v86

    .end local v86    # "videoStartTime":J
    .restart local v16    # "videoStartTime":J
    goto/16 :goto_12

    .end local v24    # "bitrate":I
    .end local v45    # "extractor":Landroid/media/MediaExtractor;
    .restart local v46    # "extractor":Landroid/media/MediaExtractor;
    .restart local v48    # "info":Landroid/media/MediaCodec$BufferInfo;
    .restart local v58    # "movie":Lorg/telegram/messenger/video/Mp4Movie;
    :catchall_2
    move-exception v6

    move-object/from16 v45, v46

    .end local v46    # "extractor":Landroid/media/MediaExtractor;
    .restart local v45    # "extractor":Landroid/media/MediaExtractor;
    goto/16 :goto_12

    .end local v48    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v58    # "movie":Lorg/telegram/messenger/video/Mp4Movie;
    .restart local v35    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v6

    goto/16 :goto_12

    .line 3954
    .end local v16    # "videoStartTime":J
    .end local v35    # "e":Ljava/lang/Exception;
    .end local v45    # "extractor":Landroid/media/MediaExtractor;
    .restart local v46    # "extractor":Landroid/media/MediaExtractor;
    .restart local v48    # "info":Landroid/media/MediaCodec$BufferInfo;
    .restart local v58    # "movie":Lorg/telegram/messenger/video/Mp4Movie;
    .restart local v86    # "videoStartTime":J
    :catch_6
    move-exception v35

    move-object/from16 v45, v46

    .end local v46    # "extractor":Landroid/media/MediaExtractor;
    .restart local v45    # "extractor":Landroid/media/MediaExtractor;
    move-wide/from16 v16, v86

    .end local v86    # "videoStartTime":J
    .restart local v16    # "videoStartTime":J
    goto :goto_1d

    .end local v45    # "extractor":Landroid/media/MediaExtractor;
    .restart local v46    # "extractor":Landroid/media/MediaExtractor;
    :catch_7
    move-exception v35

    move-object/from16 v45, v46

    .end local v46    # "extractor":Landroid/media/MediaExtractor;
    .restart local v45    # "extractor":Landroid/media/MediaExtractor;
    goto/16 :goto_1d

    .line 3921
    .end local v16    # "videoStartTime":J
    .end local v45    # "extractor":Landroid/media/MediaExtractor;
    .restart local v4    # "decoder":Landroid/media/MediaCodec;
    .restart local v25    # "bufferSize":I
    .restart local v28    # "colorFormat":I
    .restart local v30    # "decoderDone":Z
    .restart local v37    # "encoder":Landroid/media/MediaCodec;
    .restart local v46    # "extractor":Landroid/media/MediaExtractor;
    .restart local v50    # "inputDone":Z
    .restart local v52    # "inputFormat":Landroid/media/MediaFormat;
    .restart local v54    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .restart local v56    # "manufacturer":Ljava/lang/String;
    .restart local v62    # "outputDone":Z
    .restart local v63    # "outputFormat":Landroid/media/MediaFormat;
    .restart local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .restart local v66    # "padding":I
    .restart local v69    # "processorType":I
    .restart local v71    # "resultHeightAligned":I
    .restart local v78    # "swapUV":I
    .restart local v83    # "videoIndex":I
    .restart local v85    # "videoTrackIndex":I
    .restart local v86    # "videoStartTime":J
    .restart local v88    # "videoTime":J
    :catch_8
    move-exception v35

    move-object/from16 v53, v54

    .end local v54    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .restart local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    goto/16 :goto_2

    .end local v4    # "decoder":Landroid/media/MediaCodec;
    .end local v25    # "bufferSize":I
    .end local v28    # "colorFormat":I
    .end local v30    # "decoderDone":Z
    .end local v37    # "encoder":Landroid/media/MediaCodec;
    .end local v50    # "inputDone":Z
    .end local v52    # "inputFormat":Landroid/media/MediaFormat;
    .end local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .end local v56    # "manufacturer":Ljava/lang/String;
    .end local v62    # "outputDone":Z
    .end local v63    # "outputFormat":Landroid/media/MediaFormat;
    .end local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .end local v66    # "padding":I
    .end local v69    # "processorType":I
    .end local v71    # "resultHeightAligned":I
    .end local v78    # "swapUV":I
    .end local v83    # "videoIndex":I
    .end local v85    # "videoTrackIndex":I
    .end local v88    # "videoTime":J
    .restart local v24    # "bitrate":I
    :cond_4a
    move-wide/from16 v16, v86

    .end local v86    # "videoStartTime":J
    .restart local v16    # "videoStartTime":J
    goto/16 :goto_4

    .end local v16    # "videoStartTime":J
    .end local v24    # "bitrate":I
    .restart local v4    # "decoder":Landroid/media/MediaCodec;
    .restart local v22    # "TIMEOUT_USEC":I
    .restart local v25    # "bufferSize":I
    .restart local v28    # "colorFormat":I
    .restart local v30    # "decoderDone":Z
    .restart local v31    # "decoderInputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v37    # "encoder":Landroid/media/MediaCodec;
    .restart local v38    # "encoderInputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v40    # "encoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v50    # "inputDone":Z
    .restart local v52    # "inputFormat":Landroid/media/MediaFormat;
    .restart local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .restart local v56    # "manufacturer":Ljava/lang/String;
    .restart local v62    # "outputDone":Z
    .restart local v63    # "outputFormat":Landroid/media/MediaFormat;
    .restart local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .restart local v66    # "padding":I
    .restart local v69    # "processorType":I
    .restart local v71    # "resultHeightAligned":I
    .restart local v78    # "swapUV":I
    .restart local v83    # "videoIndex":I
    .restart local v85    # "videoTrackIndex":I
    .restart local v86    # "videoStartTime":J
    .restart local v88    # "videoTime":J
    :cond_4b
    move-wide/from16 v16, v86

    .end local v86    # "videoStartTime":J
    .restart local v16    # "videoStartTime":J
    goto/16 :goto_3
.end method

.method public static copyFileToCache(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "ext"    # Ljava/lang/String;

    .prologue
    .line 3011
    const/4 v5, 0x0

    .line 3012
    .local v5, "inputStream":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 3014
    .local v8, "output":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {p0}, Lorg/telegram/messenger/MediaController;->getFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 3015
    .local v7, "name":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 3016
    sget v4, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 3017
    .local v4, "id":I
    sget v10, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    add-int/lit8 v10, v10, -0x1

    sput v10, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 3018
    const/4 v10, 0x0

    invoke-static {v10}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 3019
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v11, "%d.%s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object p1, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 3021
    .end local v4    # "id":I
    :cond_0
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 3022
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v10

    invoke-direct {v3, v10, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3023
    .local v3, "f":Ljava/io/File;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3024
    .end local v8    # "output":Ljava/io/FileOutputStream;
    .local v9, "output":Ljava/io/FileOutputStream;
    const/16 v10, 0x5000

    :try_start_1
    new-array v0, v10, [B

    .line 3026
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "len":I
    const/4 v10, -0x1

    if-eq v6, v10, :cond_3

    .line 3027
    const/4 v10, 0x0

    invoke-virtual {v9, v0, v10, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 3030
    .end local v0    # "buffer":[B
    .end local v6    # "len":I
    :catch_0
    move-exception v1

    move-object v8, v9

    .line 3031
    .end local v3    # "f":Ljava/io/File;
    .end local v7    # "name":Ljava/lang/String;
    .end local v9    # "output":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v8    # "output":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    const-string/jumbo v10, "tmessages"

    invoke-static {v10, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3034
    if-eqz v5, :cond_1

    .line 3035
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 3041
    :cond_1
    :goto_2
    if-eqz v8, :cond_2

    .line 3042
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 3048
    :cond_2
    :goto_3
    const/4 v10, 0x0

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    return-object v10

    .line 3029
    .end local v8    # "output":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "f":Ljava/io/File;
    .restart local v6    # "len":I
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v9    # "output":Ljava/io/FileOutputStream;
    :cond_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v10

    .line 3034
    if-eqz v5, :cond_4

    .line 3035
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 3041
    :cond_4
    :goto_5
    if-eqz v9, :cond_5

    .line 3042
    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_5
    :goto_6
    move-object v8, v9

    .line 3046
    .end local v9    # "output":Ljava/io/FileOutputStream;
    .restart local v8    # "output":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 3037
    .end local v8    # "output":Ljava/io/FileOutputStream;
    .restart local v9    # "output":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 3038
    .local v2, "e2":Ljava/lang/Exception;
    const-string/jumbo v11, "tmessages"

    invoke-static {v11, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 3044
    .end local v2    # "e2":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 3045
    .restart local v2    # "e2":Ljava/lang/Exception;
    const-string/jumbo v11, "tmessages"

    invoke-static {v11, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 3037
    .end local v0    # "buffer":[B
    .end local v2    # "e2":Ljava/lang/Exception;
    .end local v3    # "f":Ljava/io/File;
    .end local v6    # "len":I
    .end local v7    # "name":Ljava/lang/String;
    .end local v9    # "output":Ljava/io/FileOutputStream;
    .restart local v1    # "e":Ljava/lang/Exception;
    .restart local v8    # "output":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    .line 3038
    .restart local v2    # "e2":Ljava/lang/Exception;
    const-string/jumbo v10, "tmessages"

    invoke-static {v10, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 3044
    .end local v2    # "e2":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 3045
    .restart local v2    # "e2":Ljava/lang/Exception;
    const-string/jumbo v10, "tmessages"

    invoke-static {v10, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 3033
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "e2":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 3034
    :goto_7
    if-eqz v5, :cond_6

    .line 3035
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 3041
    :cond_6
    :goto_8
    if-eqz v8, :cond_7

    .line 3042
    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 3046
    :cond_7
    :goto_9
    throw v10

    .line 3037
    :catch_5
    move-exception v2

    .line 3038
    .restart local v2    # "e2":Ljava/lang/Exception;
    const-string/jumbo v11, "tmessages"

    invoke-static {v11, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 3044
    .end local v2    # "e2":Ljava/lang/Exception;
    :catch_6
    move-exception v2

    .line 3045
    .restart local v2    # "e2":Ljava/lang/Exception;
    const-string/jumbo v11, "tmessages"

    invoke-static {v11, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 3033
    .end local v2    # "e2":Ljava/lang/Exception;
    .end local v8    # "output":Ljava/io/FileOutputStream;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v9    # "output":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v10

    move-object v8, v9

    .end local v9    # "output":Ljava/io/FileOutputStream;
    .restart local v8    # "output":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 3030
    .end local v3    # "f":Ljava/io/File;
    .end local v7    # "name":Ljava/lang/String;
    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method private didWriteData(Lorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V
    .locals 7
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "last"    # Z
    .param p4, "error"    # Z

    .prologue
    .line 3401
    iget-boolean v5, p0, Lorg/telegram/messenger/MediaController;->videoConvertFirstWrite:Z

    .line 3402
    .local v5, "firstWrite":Z
    if-eqz v5, :cond_0

    .line 3403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertFirstWrite:Z

    .line 3405
    :cond_0
    new-instance v0, Lorg/telegram/messenger/MediaController$23;

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MediaController$23;-><init>(Lorg/telegram/messenger/MediaController;ZLorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3425
    return-void
.end method

.method private getCurrentDownloadMask()I
    .locals 1

    .prologue
    .line 976
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->isConnectedToWiFi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 977
    iget v0, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    .line 981
    :goto_0
    return v0

    .line 978
    :cond_0
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 979
    iget v0, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    goto :goto_0

    .line 981
    :cond_1
    iget v0, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    goto :goto_0
.end method

.method public static getFileName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2984
    const/4 v9, 0x0

    .line 2985
    .local v9, "result":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2986
    const/4 v6, 0x0

    .line 2988
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "_display_name"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2989
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2990
    const-string/jumbo v0, "_display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 2995
    :cond_0
    if-eqz v6, :cond_1

    .line 2996
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3000
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    if-nez v9, :cond_2

    .line 3001
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 3002
    const/16 v0, 0x2f

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 3003
    .local v7, "cut":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_2

    .line 3004
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 3007
    .end local v7    # "cut":I
    :cond_2
    return-object v9

    .line 2992
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 2993
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2995
    if-eqz v6, :cond_1

    .line 2996
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2995
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 2996
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getInstance()Lorg/telegram/messenger/MediaController;
    .locals 4

    .prologue
    .line 549
    sget-object v0, Lorg/telegram/messenger/MediaController;->Instance:Lorg/telegram/messenger/MediaController;

    .line 550
    .local v0, "localInstance":Lorg/telegram/messenger/MediaController;
    if-nez v0, :cond_1

    .line 551
    const-class v3, Lorg/telegram/messenger/MediaController;

    monitor-enter v3

    .line 552
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/MediaController;->Instance:Lorg/telegram/messenger/MediaController;

    .line 553
    if-nez v0, :cond_0

    .line 554
    new-instance v1, Lorg/telegram/messenger/MediaController;

    invoke-direct {v1}, Lorg/telegram/messenger/MediaController;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Lorg/telegram/messenger/MediaController;
    .local v1, "localInstance":Lorg/telegram/messenger/MediaController;
    :try_start_1
    sput-object v1, Lorg/telegram/messenger/MediaController;->Instance:Lorg/telegram/messenger/MediaController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 556
    .end local v1    # "localInstance":Lorg/telegram/messenger/MediaController;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/MediaController;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 558
    :cond_1
    return-object v0

    .line 556
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/messenger/MediaController;
    .restart local v1    # "localInstance":Lorg/telegram/messenger/MediaController;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/messenger/MediaController;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/MediaController;
    goto :goto_0
.end method

.method private native getTotalPcmDuration()J
.end method

.method public static isGif(Landroid/net/Uri;)Z
    .locals 9
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x3

    .line 2959
    const/4 v3, 0x0

    .line 2961
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_0
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 2962
    const/4 v6, 0x3

    new-array v2, v6, [B

    .line 2963
    .local v2, "header":[B
    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v3, v2, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-ne v6, v8, :cond_1

    .line 2964
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 2965
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string/jumbo v6, "gif"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 2966
    const/4 v5, 0x1

    .line 2973
    if-eqz v3, :cond_0

    .line 2974
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2980
    .end local v2    # "header":[B
    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 2976
    .restart local v2    # "header":[B
    .restart local v4    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2977
    .local v1, "e2":Ljava/lang/Exception;
    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2973
    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v4    # "str":Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_0

    .line 2974
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2976
    :catch_1
    move-exception v1

    .line 2977
    .restart local v1    # "e2":Ljava/lang/Exception;
    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2969
    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v2    # "header":[B
    :catch_2
    move-exception v0

    .line 2970
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2973
    if-eqz v3, :cond_0

    .line 2974
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 2976
    :catch_3
    move-exception v1

    .line 2977
    .restart local v1    # "e2":Ljava/lang/Exception;
    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2972
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e2":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 2973
    if-eqz v3, :cond_2

    .line 2974
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 2978
    :cond_2
    :goto_1
    throw v5

    .line 2976
    :catch_4
    move-exception v1

    .line 2977
    .restart local v1    # "e2":Ljava/lang/Exception;
    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private isNearToSensor(F)Z
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1584
    const/high16 v0, 0x40a00000    # 5.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native isOpusFile(Ljava/lang/String;)I
.end method

.method private static isRecognizedFormat(I)Z
    .locals 1
    .param p0, "colorFormat"    # I

    .prologue
    .line 3353
    sparse-switch p0, :sswitch_data_0

    .line 3361
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3359
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3353
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x27 -> :sswitch_0
        0x7f000100 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isWebp(Landroid/net/Uri;)Z
    .locals 9
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    const/16 v8, 0xc

    .line 2931
    const/4 v3, 0x0

    .line 2933
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_0
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 2934
    const/16 v6, 0xc

    new-array v2, v6, [B

    .line 2935
    .local v2, "header":[B
    const/4 v6, 0x0

    const/16 v7, 0xc

    invoke-virtual {v3, v2, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-ne v6, v8, :cond_1

    .line 2936
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 2937
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 2938
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 2939
    const-string/jumbo v6, "riff"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "webp"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 2940
    const/4 v5, 0x1

    .line 2948
    if-eqz v3, :cond_0

    .line 2949
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2955
    .end local v2    # "header":[B
    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 2951
    .restart local v2    # "header":[B
    .restart local v4    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2952
    .local v1, "e2":Ljava/lang/Exception;
    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2948
    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v4    # "str":Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_0

    .line 2949
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2951
    :catch_1
    move-exception v1

    .line 2952
    .restart local v1    # "e2":Ljava/lang/Exception;
    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2944
    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v2    # "header":[B
    :catch_2
    move-exception v0

    .line 2945
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2948
    if-eqz v3, :cond_0

    .line 2949
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 2951
    :catch_3
    move-exception v1

    .line 2952
    .restart local v1    # "e2":Ljava/lang/Exception;
    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2947
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e2":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 2948
    if-eqz v3, :cond_2

    .line 2949
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 2953
    :cond_2
    :goto_1
    throw v5

    .line 2951
    :catch_4
    move-exception v1

    .line 2952
    .restart local v1    # "e2":Ljava/lang/Exception;
    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static loadGalleryPhotosAlbums(I)V
    .locals 2
    .param p0, "guid"    # I

    .prologue
    .line 3141
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/MediaController$22;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$22;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3287
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 3288
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3289
    return-void
.end method

.method private native openOpusFile(Ljava/lang/String;)I
.end method

.method private playNextMessage(Z)V
    .locals 8
    .param p1, "byStop"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2085
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    if-eqz v2, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    .line 2087
    .local v0, "currentPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :goto_0
    if-eqz p1, :cond_2

    iget v2, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    if-ne v2, v4, :cond_2

    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->forceLoopCurrentPlaylist:Z

    if-nez v2, :cond_2

    .line 2088
    invoke-virtual {p0, v6, v6}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 2089
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    .line 2147
    :cond_0
    :goto_1
    return-void

    .line 2085
    .end local v0    # "currentPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    goto :goto_0

    .line 2092
    .restart local v0    # "currentPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_2
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2093
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_6

    .line 2094
    iput v6, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2095
    if-eqz p1, :cond_6

    iget v2, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->forceLoopCurrentPlaylist:Z

    if-nez v2, :cond_6

    .line 2096
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v2, :cond_0

    .line 2097
    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_5

    .line 2099
    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2104
    :goto_2
    :try_start_1
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2109
    :goto_3
    :try_start_2
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 2110
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2130
    :cond_4
    :goto_4
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopProgressTimer()V

    .line 2131
    iput v6, p0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    .line 2132
    iput v6, p0, Lorg/telegram/messenger/MediaController;->buffersWrited:I

    .line 2133
    iput-boolean v7, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 2134
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    iput v3, v2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 2135
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iput v6, v2, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    .line 2136
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2137
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2100
    :catch_0
    move-exception v1

    .line 2101
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 2105
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 2106
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 2111
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 2112
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 2114
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v2, :cond_4

    .line 2115
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playerObjectSync:Ljava/lang/Object;

    monitor-enter v3

    .line 2117
    :try_start_3
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->pause()V

    .line 2118
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2123
    :goto_5
    :try_start_4
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    .line 2124
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2128
    :goto_6
    :try_start_5
    monitor-exit v3

    goto :goto_4

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .line 2119
    :catch_3
    move-exception v1

    .line 2120
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 2125
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 2126
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    .line 2142
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-ltz v2, :cond_0

    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2145
    iput-boolean v7, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    .line 2146
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    goto/16 :goto_1
.end method

.method private processLaterArrays()V
    .locals 5

    .prologue
    .line 1292
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->addLaterArray:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1293
    .local v2, "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    invoke-virtual {p0, v3, v4}, Lorg/telegram/messenger/MediaController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    goto :goto_0

    .line 1295
    .end local v2    # "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->addLaterArray:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1296
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->deleteLaterArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    .line 1297
    .local v1, "listener":Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MediaController;->removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    goto :goto_1

    .line 1299
    .end local v1    # "listener":Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->deleteLaterArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1300
    return-void
.end method

.method private readAndWriteTrack(Lorg/telegram/messenger/MessageObject;Landroid/media/MediaExtractor;Lorg/telegram/messenger/video/MP4Builder;Landroid/media/MediaCodec$BufferInfo;JJLjava/io/File;Z)J
    .locals 21
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "extractor"    # Landroid/media/MediaExtractor;
    .param p3, "mediaMuxer"    # Lorg/telegram/messenger/video/MP4Builder;
    .param p4, "info"    # Landroid/media/MediaCodec$BufferInfo;
    .param p5, "start"    # J
    .param p7, "end"    # J
    .param p9, "file"    # Ljava/io/File;
    .param p10, "isAudio"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3429
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p10

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/MediaController;->selectTrack(Landroid/media/MediaExtractor;Z)I

    move-result v17

    .line 3430
    .local v17, "trackIndex":I
    if-ltz v17, :cond_c

    .line 3431
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 3432
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v16

    .line 3433
    .local v16, "trackFormat":Landroid/media/MediaFormat;
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    move/from16 v2, p10

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v13

    .line 3434
    .local v13, "muxerTrackIndex":I
    const-string/jumbo v18, "max-input-size"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v12

    .line 3435
    .local v12, "maxBufferSize":I
    const/4 v9, 0x0

    .line 3436
    .local v9, "inputDone":Z
    const-wide/16 v18, 0x0

    cmp-long v18, p5, v18

    if-lez v18, :cond_6

    .line 3437
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-wide/from16 v1, p5

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 3441
    :goto_0
    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 3442
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    const-wide/16 v14, -0x1

    .line 3444
    .local v14, "startTime":J
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    .line 3445
    const-wide/16 v10, -0x64

    .line 3447
    .local v10, "lastTimestamp":J
    :cond_0
    :goto_1
    if-nez v9, :cond_b

    .line 3448
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    .line 3450
    const/4 v7, 0x0

    .line 3451
    .local v7, "eof":Z
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v8

    .line 3452
    .local v8, "index":I
    move/from16 v0, v17

    if-ne v8, v0, :cond_9

    .line 3453
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p4

    iput v0, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 3454
    move-object/from16 v0, p4

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v18, v0

    if-ltz v18, :cond_7

    .line 3455
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p4

    iput-wide v0, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 3461
    :goto_2
    move-object/from16 v0, p4

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v18, v0

    if-lez v18, :cond_4

    if-nez v7, :cond_4

    .line 3462
    const-wide/16 v18, 0x0

    cmp-long v18, p5, v18

    if-lez v18, :cond_1

    const-wide/16 v18, -0x1

    cmp-long v18, v14, v18

    if-nez v18, :cond_1

    .line 3463
    move-object/from16 v0, p4

    iget-wide v14, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 3465
    :cond_1
    const-wide/16 v18, 0x0

    cmp-long v18, p7, v18

    if-ltz v18, :cond_2

    move-object/from16 v0, p4

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v18, v0

    cmp-long v18, v18, p7

    if-gez v18, :cond_8

    .line 3466
    :cond_2
    move-object/from16 v0, p4

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v18, v0

    cmp-long v18, v18, v10

    if-lez v18, :cond_3

    .line 3467
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p4

    iput v0, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 3468
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p4

    iput v0, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 3469
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p10

    invoke-virtual {v0, v13, v6, v1, v2}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 3470
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p9

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MediaController;->didWriteData(Lorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V

    .line 3473
    :cond_3
    move-object/from16 v0, p4

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 3478
    :cond_4
    :goto_3
    if-nez v7, :cond_5

    .line 3479
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaExtractor;->advance()Z

    .line 3486
    :cond_5
    :goto_4
    if-eqz v7, :cond_0

    .line 3487
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 3439
    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    .end local v7    # "eof":Z
    .end local v8    # "index":I
    .end local v10    # "lastTimestamp":J
    .end local v14    # "startTime":J
    :cond_6
    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-wide/from16 v1, v18

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto/16 :goto_0

    .line 3457
    .restart local v6    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v7    # "eof":Z
    .restart local v8    # "index":I
    .restart local v10    # "lastTimestamp":J
    .restart local v14    # "startTime":J
    :cond_7
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p4

    iput v0, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 3458
    const/4 v7, 0x1

    goto/16 :goto_2

    .line 3475
    :cond_8
    const/4 v7, 0x1

    goto :goto_3

    .line 3481
    :cond_9
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_a

    .line 3482
    const/4 v7, 0x1

    goto :goto_4

    .line 3484
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_4

    .line 3491
    .end local v7    # "eof":Z
    .end local v8    # "index":I
    :cond_b
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    .line 3494
    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    .end local v9    # "inputDone":Z
    .end local v10    # "lastTimestamp":J
    .end local v12    # "maxBufferSize":I
    .end local v13    # "muxerTrackIndex":I
    .end local v14    # "startTime":J
    .end local v16    # "trackFormat":Landroid/media/MediaFormat;
    :goto_5
    return-wide v14

    :cond_c
    const-wide/16 v14, -0x1

    goto :goto_5
.end method

.method private native readOpusFile(Ljava/nio/ByteBuffer;I[I)V
.end method

.method public static saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "fullPath"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "mime"    # Ljava/lang/String;

    .prologue
    .line 2796
    if-nez p0, :cond_1

    .line 2928
    :cond_0
    :goto_0
    return-void

    .line 2800
    :cond_1
    const/4 v7, 0x0

    .line 2801
    .local v7, "file":Ljava/io/File;
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 2802
    new-instance v7, Ljava/io/File;

    .end local v7    # "file":Ljava/io/File;
    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2803
    .restart local v7    # "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2804
    const/4 v7, 0x0

    .line 2808
    :cond_2
    if-eqz v7, :cond_0

    .line 2812
    move-object v3, v7

    .line 2813
    .local v3, "sourceFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2814
    const/4 v8, 0x0

    .line 2815
    .local v8, "progressDialog":Landroid/app/ProgressDialog;
    if-eqz p1, :cond_3

    .line 2817
    :try_start_0
    new-instance v9, Landroid/app/ProgressDialog;

    invoke-direct {v9, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2818
    .end local v8    # "progressDialog":Landroid/app/ProgressDialog;
    .local v9, "progressDialog":Landroid/app/ProgressDialog;
    :try_start_1
    const-string/jumbo v0, "Loading"

    const v1, 0x7f0702d1

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2819
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 2820
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 2821
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 2822
    const/16 v0, 0x64

    invoke-virtual {v9, v0}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 2823
    invoke-virtual {v9}, Landroid/app/ProgressDialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, v9

    .line 2829
    .end local v9    # "progressDialog":Landroid/app/ProgressDialog;
    .restart local v8    # "progressDialog":Landroid/app/ProgressDialog;
    :cond_3
    :goto_1
    move-object v4, v8

    .line 2831
    .local v4, "finalProgress":Landroid/app/ProgressDialog;
    new-instance v10, Ljava/lang/Thread;

    new-instance v0, Lorg/telegram/messenger/MediaController$21;

    move v1, p2

    move-object v2, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MediaController$21;-><init>(ILjava/lang/String;Ljava/io/File;Landroid/app/ProgressDialog;Ljava/lang/String;)V

    invoke-direct {v10, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 2824
    .end local v4    # "finalProgress":Landroid/app/ProgressDialog;
    :catch_0
    move-exception v6

    .line 2825
    .local v6, "e":Ljava/lang/Exception;
    :goto_2
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2824
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "progressDialog":Landroid/app/ProgressDialog;
    .restart local v9    # "progressDialog":Landroid/app/ProgressDialog;
    :catch_1
    move-exception v6

    move-object v8, v9

    .end local v9    # "progressDialog":Landroid/app/ProgressDialog;
    .restart local v8    # "progressDialog":Landroid/app/ProgressDialog;
    goto :goto_2
.end method

.method private native seekOpusFile(F)I
.end method

.method private seekOpusPlayer(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 1956
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 1987
    :goto_0
    return-void

    .line 1959
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    if-nez v0, :cond_1

    .line 1960
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 1962
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 1963
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->fileDecodingQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MediaController$12;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MediaController$12;-><init>(Lorg/telegram/messenger/MediaController;F)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 12
    .param p0, "mimeType"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 3330
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v7

    .line 3331
    .local v7, "numCodecs":I
    const/4 v4, 0x0

    .line 3332
    .local v4, "lastCodecInfo":Landroid/media/MediaCodecInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v7, :cond_4

    .line 3333
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v1

    .line 3334
    .local v1, "codecInfo":Landroid/media/MediaCodecInfo;
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v10

    if-nez v10, :cond_1

    .line 3332
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3337
    :cond_1
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v9

    .line 3338
    .local v9, "types":[Ljava/lang/String;
    move-object v0, v9

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v6, :cond_0

    aget-object v8, v0, v3

    .line 3339
    .local v8, "type":Ljava/lang/String;
    invoke-virtual {v8, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 3340
    move-object v4, v1

    .line 3341
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "OMX.SEC.avc.enc"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    move-object v5, v4

    .line 3349
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v3    # "i$":I
    .end local v4    # "lastCodecInfo":Landroid/media/MediaCodecInfo;
    .end local v6    # "len$":I
    .end local v8    # "type":Ljava/lang/String;
    .end local v9    # "types":[Ljava/lang/String;
    .local v5, "lastCodecInfo":Landroid/media/MediaCodecInfo;
    :goto_2
    return-object v5

    .line 3343
    .end local v5    # "lastCodecInfo":Landroid/media/MediaCodecInfo;
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v3    # "i$":I
    .restart local v4    # "lastCodecInfo":Landroid/media/MediaCodecInfo;
    .restart local v6    # "len$":I
    .restart local v8    # "type":Ljava/lang/String;
    .restart local v9    # "types":[Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "OMX.SEC.AVC.Encoder"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v5, v4

    .line 3344
    .end local v4    # "lastCodecInfo":Landroid/media/MediaCodecInfo;
    .restart local v5    # "lastCodecInfo":Landroid/media/MediaCodecInfo;
    goto :goto_2

    .line 3338
    .end local v5    # "lastCodecInfo":Landroid/media/MediaCodecInfo;
    .restart local v4    # "lastCodecInfo":Landroid/media/MediaCodecInfo;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .end local v8    # "type":Ljava/lang/String;
    .end local v9    # "types":[Ljava/lang/String;
    :cond_4
    move-object v5, v4

    .line 3349
    .end local v4    # "lastCodecInfo":Landroid/media/MediaCodecInfo;
    .restart local v5    # "lastCodecInfo":Landroid/media/MediaCodecInfo;
    goto :goto_2
.end method

.method public static selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I
    .locals 6
    .param p0, "codecInfo"    # Landroid/media/MediaCodecInfo;
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 3367
    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    .line 3368
    .local v0, "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    const/4 v3, 0x0

    .line 3369
    .local v3, "lastColorFormat":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 3370
    iget-object v4, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    aget v1, v4, v2

    .line 3371
    .local v1, "colorFormat":I
    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->isRecognizedFormat(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3372
    move v3, v1

    .line 3373
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "OMX.SEC.AVC.Encoder"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x13

    if-eq v1, v4, :cond_1

    .line 3378
    .end local v1    # "colorFormat":I
    :cond_0
    :goto_1
    return v1

    .line 3369
    .restart local v1    # "colorFormat":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "colorFormat":I
    :cond_2
    move v1, v3

    .line 3378
    goto :goto_1
.end method

.method private selectTrack(Landroid/media/MediaExtractor;Z)I
    .locals 5
    .param p1, "extractor"    # Landroid/media/MediaExtractor;
    .param p2, "audio"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 3383
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v3

    .line 3384
    .local v3, "numTracks":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 3385
    invoke-virtual {p1, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    .line 3386
    .local v0, "format":Landroid/media/MediaFormat;
    const-string/jumbo v4, "mime"

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3387
    .local v2, "mime":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 3388
    const-string/jumbo v4, "audio/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3397
    .end local v0    # "format":Landroid/media/MediaFormat;
    .end local v1    # "i":I
    .end local v2    # "mime":Ljava/lang/String;
    :cond_0
    :goto_1
    return v1

    .line 3392
    .restart local v0    # "format":Landroid/media/MediaFormat;
    .restart local v1    # "i":I
    .restart local v2    # "mime":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "video/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3384
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3397
    .end local v0    # "format":Landroid/media/MediaFormat;
    .end local v2    # "mime":Ljava/lang/String;
    :cond_3
    const/4 v1, -0x5

    goto :goto_1
.end method

.method private setPlayerVolume()V
    .locals 4

    .prologue
    .line 734
    :try_start_0
    iget v2, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 735
    const/high16 v1, 0x3f800000    # 1.0f

    .line 739
    .local v1, "volume":F
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_2

    .line 740
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 747
    .end local v1    # "volume":F
    :cond_0
    :goto_1
    return-void

    .line 737
    :cond_1
    const v1, 0x3e4ccccd    # 0.2f

    .restart local v1    # "volume":F
    goto :goto_0

    .line 741
    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v2, :cond_0

    .line 742
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2, v1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 744
    .end local v1    # "volume":F
    :catch_0
    move-exception v0

    .line 745
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private startAudioAgain(Z)V
    .locals 9
    .param p1, "paused"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1756
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v5, :cond_1

    .line 1778
    :cond_0
    :goto_0
    return-void

    .line 1759
    :cond_1
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_2

    move v1, v3

    .line 1760
    .local v1, "post":Z
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->audioRouteChanged:I

    new-array v7, v3, [Ljava/lang/Object;

    iget-boolean v8, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1761
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1762
    .local v0, "currentMessageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v5, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 1763
    .local v2, "progress":F
    invoke-virtual {p0, v4, v3}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 1764
    iput v2, v0, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 1765
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    .line 1766
    if-eqz p1, :cond_0

    .line 1767
    if-eqz v1, :cond_3

    .line 1768
    new-instance v3, Lorg/telegram/messenger/MediaController$9;

    invoke-direct {v3, p0, v0}, Lorg/telegram/messenger/MediaController$9;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)V

    const-wide/16 v4, 0x64

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .end local v0    # "currentMessageObject":Lorg/telegram/messenger/MessageObject;
    .end local v1    # "post":Z
    .end local v2    # "progress":F
    :cond_2
    move v1, v4

    .line 1759
    goto :goto_1

    .line 1775
    .restart local v0    # "currentMessageObject":Lorg/telegram/messenger/MessageObject;
    .restart local v1    # "post":Z
    .restart local v2    # "progress":F
    :cond_3
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->pauseAudio(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_0
.end method

.method private startProgressTimer(Lorg/telegram/messenger/MessageObject;)V
    .locals 8
    .param p1, "currentPlayingMessageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 750
    iget-object v7, p0, Lorg/telegram/messenger/MediaController;->progressTimerSync:Ljava/lang/Object;

    monitor-enter v7

    .line 751
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 753
    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 754
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 759
    :cond_0
    :goto_0
    :try_start_2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;

    .line 760
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/messenger/MediaController$5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MediaController$5;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x11

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 801
    monitor-exit v7

    .line 802
    return-void

    .line 755
    :catch_0
    move-exception v6

    .line 756
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 801
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private native startRecord(Ljava/lang/String;)I
.end method

.method private startVideoConvertFromQueue()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3316
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3317
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    monitor-enter v3

    .line 3318
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->cancelCurrentVideoConversion:Z

    .line 3319
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3320
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 3321
    .local v1, "messageObject":Lorg/telegram/messenger/MessageObject;
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/messenger/VideoEncodingService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3322
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "path"

    iget-object v3, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3323
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3324
    invoke-static {v1}, Lorg/telegram/messenger/MediaController$VideoConvertRunnable;->runConversion(Lorg/telegram/messenger/MessageObject;)V

    .line 3326
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_0
    return-void

    .line 3319
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private stopProgressTimer()V
    .locals 3

    .prologue
    .line 805
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->progressTimerSync:Ljava/lang/Object;

    monitor-enter v2

    .line 806
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 808
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 809
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 814
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 815
    return-void

    .line 810
    :catch_0
    move-exception v0

    .line 811
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 814
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private native stopRecord()V
.end method

.method private stopRecordingInternal(I)V
    .locals 6
    .param p1, "send"    # I

    .prologue
    const/4 v5, 0x0

    .line 2710
    if-eqz p1, :cond_0

    .line 2711
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 2712
    .local v0, "audioToSend":Lorg/telegram/tgnet/TLRPC$TL_document;
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    .line 2713
    .local v2, "recordingAudioFileToSend":Ljava/io/File;
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->fileEncodingQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/messenger/MediaController$19;

    invoke-direct {v4, p0, v0, v2, p1}, Lorg/telegram/messenger/MediaController$19;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/io/File;I)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2745
    .end local v0    # "audioToSend":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v2    # "recordingAudioFileToSend":Ljava/io/File;
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    if-eqz v3, :cond_1

    .line 2746
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->release()V

    .line 2747
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2752
    :cond_1
    :goto_0
    iput-object v5, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 2753
    iput-object v5, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    .line 2754
    return-void

    .line 2749
    :catch_0
    move-exception v1

    .line 2750
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private native writeFrame(Ljava/nio/ByteBuffer;I)I
.end method


# virtual methods
.method public addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "observer"    # Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    .prologue
    .line 1213
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/messenger/MediaController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 1214
    return-void
.end method

.method public addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p3, "observer"    # Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    .prologue
    .line 1217
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    if-eqz v2, :cond_0

    .line 1218
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->addLaterArray:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    :goto_0
    return-void

    .line 1221
    :cond_0
    invoke-virtual {p0, p3}, Lorg/telegram/messenger/MediaController;->removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 1223
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1224
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    if-nez v0, :cond_1

    .line 1225
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1226
    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    :cond_1
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1229
    if-eqz p2, :cond_3

    .line 1230
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->loadingFileMessagesObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1231
    .local v1, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v1, :cond_2

    .line 1232
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1233
    .restart local v1    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->loadingFileMessagesObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    :cond_2
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1238
    .end local v1    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    invoke-interface {p3}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->getObserverTag()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addLoadingFileObserver2(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p3, "observer"    # Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    .prologue
    .line 1243
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    if-eqz v2, :cond_0

    .line 1244
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->addLaterArray:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    :goto_0
    return-void

    .line 1247
    :cond_0
    invoke-virtual {p0, p3}, Lorg/telegram/messenger/MediaController;->removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 1249
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1250
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    if-nez v0, :cond_1

    .line 1251
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1252
    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    :cond_1
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1255
    if-eqz p2, :cond_3

    .line 1256
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->loadingFileMessagesObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1257
    .local v1, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v1, :cond_2

    .line 1258
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1259
    .restart local v1    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->loadingFileMessagesObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    :cond_2
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1264
    .end local v1    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    invoke-interface {p3}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->getObserverTag()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public canAutoplayGifs()Z
    .locals 1

    .prologue
    .line 3125
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->autoplayGifs:Z

    return v0
.end method

.method public canCustomTabs()Z
    .locals 1

    .prologue
    .line 3133
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->customTabs:Z

    return v0
.end method

.method public canDirectShare()Z
    .locals 1

    .prologue
    .line 3137
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->directShare:Z

    return v0
.end method

.method public canDownloadMedia(I)Z
    .locals 8
    .param p1, "type"    # I

    .prologue
    const/4 v7, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 964
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "mainconfig"

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 965
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "fav_auto_download"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 966
    .local v0, "fav_autoDownload":Z
    if-eqz v0, :cond_1

    .line 967
    const-string/jumbo v5, "selected_tab"

    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 968
    .local v2, "selectedTab":I
    if-ne v2, v7, :cond_1

    .line 972
    .end local v2    # "selectedTab":I
    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->getCurrentDownloadMask()I

    move-result v5

    and-int/2addr v5, p1

    if-nez v5, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method public canRaiseToSpeak()Z
    .locals 1

    .prologue
    .line 3129
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    return v0
.end method

.method public canSaveToGallery()Z
    .locals 1

    .prologue
    .line 3121
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    return v0
.end method

.method public cancelVideoConvert(Lorg/telegram/messenger/MessageObject;)V
    .locals 2
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 3299
    if-nez p1, :cond_1

    .line 3300
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    monitor-enter v1

    .line 3301
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->cancelCurrentVideoConversion:Z

    .line 3302
    monitor-exit v1

    .line 3313
    :cond_0
    :goto_0
    return-void

    .line 3302
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3304
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3305
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 3306
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    monitor-enter v1

    .line 3307
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->cancelCurrentVideoConversion:Z

    .line 3308
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3310
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3308
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public checkAutodownloadSettings()V
    .locals 12

    .prologue
    const/16 v11, 0x10

    const/16 v10, 0x8

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 862
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->getCurrentDownloadMask()I

    move-result v1

    .line 863
    .local v1, "currentMask":I
    iget v5, p0, Lorg/telegram/messenger/MediaController;->lastCheckMask:I

    if-ne v1, v5, :cond_1

    .line 960
    :cond_0
    :goto_0
    return-void

    .line 866
    :cond_1
    iput v1, p0, Lorg/telegram/messenger/MediaController;->lastCheckMask:I

    .line 867
    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_8

    .line 868
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 869
    invoke-virtual {p0, v7}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    .line 878
    :cond_2
    :goto_1
    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_a

    .line 879
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 880
    invoke-virtual {p0, v8}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    .line 889
    :cond_3
    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_c

    .line 890
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 891
    invoke-virtual {p0, v10}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    .line 901
    :cond_4
    :goto_3
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_e

    .line 902
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 903
    invoke-virtual {p0, v9}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    .line 912
    :cond_5
    :goto_4
    and-int/lit8 v5, v1, 0x10

    if-eqz v5, :cond_10

    .line 913
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 914
    invoke-virtual {p0, v11}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    .line 924
    :cond_6
    :goto_5
    and-int/lit8 v5, v1, 0x20

    if-eqz v5, :cond_12

    .line 925
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 926
    const/16 v5, 0x20

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    .line 937
    :cond_7
    :goto_6
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getAutodownloadMask()I

    move-result v4

    .line 938
    .local v4, "mask":I
    if-nez v4, :cond_14

    .line 939
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    goto :goto_0

    .line 872
    .end local v4    # "mask":I
    :cond_8
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_7
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_9

    .line 873
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/DownloadObject;

    .line 874
    .local v3, "downloadObject":Lorg/telegram/messenger/DownloadObject;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    iget-object v5, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    .line 872
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 876
    .end local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    :cond_9
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 883
    .end local v0    # "a":I
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_8
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_b

    .line 884
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/DownloadObject;

    .line 885
    .restart local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    iget-object v5, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 883
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 887
    .end local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    :cond_b
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_2

    .line 894
    .end local v0    # "a":I
    :cond_c
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_9
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_d

    .line 895
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/DownloadObject;

    .line 896
    .restart local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    iget-object v2, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 897
    .local v2, "document":Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 894
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 899
    .end local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    :cond_d
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_3

    .line 906
    .end local v0    # "a":I
    :cond_e
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_a
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_f

    .line 907
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/DownloadObject;

    .line 908
    .restart local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    iget-object v5, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 906
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 910
    .end local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    :cond_f
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_4

    .line 917
    .end local v0    # "a":I
    :cond_10
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_b
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_11

    .line 918
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/DownloadObject;

    .line 919
    .restart local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    iget-object v2, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 920
    .restart local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 917
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 922
    .end local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    :cond_11
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_5

    .line 929
    .end local v0    # "a":I
    :cond_12
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_c
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_13

    .line 930
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/DownloadObject;

    .line 931
    .restart local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    iget-object v2, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 932
    .restart local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 929
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 934
    .end local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    :cond_13
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_6

    .line 941
    .end local v0    # "a":I
    .restart local v4    # "mask":I
    :cond_14
    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_15

    .line 942
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v7}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    .line 944
    :cond_15
    and-int/lit8 v5, v4, 0x2

    if-nez v5, :cond_16

    .line 945
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v8}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    .line 947
    :cond_16
    and-int/lit8 v5, v4, 0x4

    if-nez v5, :cond_17

    .line 948
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v9}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    .line 950
    :cond_17
    and-int/lit8 v5, v4, 0x8

    if-nez v5, :cond_18

    .line 951
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v10}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    .line 953
    :cond_18
    and-int/lit8 v5, v4, 0x10

    if-nez v5, :cond_19

    .line 954
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v11}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    .line 956
    :cond_19
    and-int/lit8 v5, v4, 0x20

    if-nez v5, :cond_0

    .line 957
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    goto/16 :goto_0
.end method

.method public checkSaveToGalleryFiles()V
    .locals 6

    .prologue
    .line 3094
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "Telegram"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3095
    .local v2, "telegramPath":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v4, "Telegram Images"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3096
    .local v1, "imagePath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 3097
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "Telegram Video"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3098
    .local v3, "videoPath":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 3100
    iget-boolean v4, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    if-eqz v4, :cond_2

    .line 3101
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3102
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, ".nomedia"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 3104
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3105
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, ".nomedia"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 3118
    .end local v1    # "imagePath":Ljava/io/File;
    .end local v2    # "telegramPath":Ljava/io/File;
    .end local v3    # "videoPath":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 3108
    .restart local v1    # "imagePath":Ljava/io/File;
    .restart local v2    # "telegramPath":Ljava/io/File;
    .restart local v3    # "videoPath":Ljava/io/File;
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3109
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, ".nomedia"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 3111
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3112
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, ".nomedia"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3115
    .end local v1    # "imagePath":Ljava/io/File;
    .end local v2    # "telegramPath":Ljava/io/File;
    .end local v3    # "videoPath":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 3116
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "tmessages"

    invoke-static {v4, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public cleanup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 818
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 819
    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

    .line 820
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    .line 821
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 822
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 823
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 824
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 825
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 826
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 827
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->downloadQueueKeys:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 828
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 829
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 830
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 831
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 832
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->typingTimes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 833
    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    .line 834
    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    .line 835
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MediaController;->cancelVideoConvert(Lorg/telegram/messenger/MessageObject;)V

    .line 836
    return-void
.end method

.method public cleanupPlayer(ZZ)V
    .locals 1
    .param p1, "notify"    # Z
    .param p2, "stopService"    # Z

    .prologue
    .line 1865
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZZ)V

    .line 1866
    return-void
.end method

.method public cleanupPlayer(ZZZ)V
    .locals 11
    .param p1, "notify"    # Z
    .param p2, "stopService"    # Z
    .param p3, "byVoiceEnd"    # Z

    .prologue
    .line 1869
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v6, :cond_6

    .line 1871
    :try_start_0
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1876
    :goto_0
    :try_start_1
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1881
    :goto_1
    :try_start_2
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->release()V

    .line 1882
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1902
    :cond_0
    :goto_2
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopProgressTimer()V

    .line 1903
    const/4 v6, 0x0

    iput v6, p0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    .line 1904
    const/4 v6, 0x0

    iput v6, p0, Lorg/telegram/messenger/MediaController;->buffersWrited:I

    .line 1905
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 1906
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_4

    .line 1907
    iget-boolean v6, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    if-eqz v6, :cond_1

    .line 1908
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 1910
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1911
    .local v3, "lastFile":Lorg/telegram/messenger/MessageObject;
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v7, 0x0

    iput v7, v6, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 1912
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v7, 0x0

    iput v7, v6, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    .line 1913
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1914
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1915
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    .line 1916
    if-eqz p1, :cond_3

    .line 1917
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1918
    const/4 v6, 0x0

    iput v6, p0, Lorg/telegram/messenger/MediaController;->hasAudioFocus:I

    .line 1919
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    .line 1920
    if-eqz p3, :cond_7

    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_7

    .line 1921
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1922
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1923
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1924
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    .line 1925
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    .line 1932
    :cond_2
    :goto_3
    const/4 v4, 0x0

    .line 1933
    .local v4, "next":Z
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    if-eqz v6, :cond_8

    .line 1934
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    .line 1935
    .local v5, "nextVoiceMessage":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {p0, v5}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    .line 1943
    .end local v4    # "next":Z
    .end local v5    # "nextVoiceMessage":Lorg/telegram/messenger/MessageObject;
    :cond_3
    :goto_4
    if-eqz p2, :cond_4

    .line 1944
    new-instance v2, Landroid/content/Intent;

    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v7, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1945
    .local v2, "intent":Landroid/content/Intent;
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1948
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "lastFile":Lorg/telegram/messenger/MessageObject;
    :cond_4
    iget-boolean v6, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    if-nez v6, :cond_5

    .line 1949
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    .line 1950
    .local v0, "chat":Lorg/telegram/ui/ChatActivity;
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/MediaController;->stopRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V

    .line 1951
    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    .line 1953
    .end local v0    # "chat":Lorg/telegram/ui/ChatActivity;
    :cond_5
    return-void

    .line 1872
    :catch_0
    move-exception v1

    .line 1873
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1877
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1878
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1883
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 1884
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 1886
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v6, :cond_0

    .line 1887
    iget-object v7, p0, Lorg/telegram/messenger/MediaController;->playerObjectSync:Ljava/lang/Object;

    monitor-enter v7

    .line 1889
    :try_start_3
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v6}, Landroid/media/AudioTrack;->pause()V

    .line 1890
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v6}, Landroid/media/AudioTrack;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1895
    :goto_5
    :try_start_4
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v6}, Landroid/media/AudioTrack;->release()V

    .line 1896
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1900
    :goto_6
    :try_start_5
    monitor-exit v7

    goto/16 :goto_2

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v6

    .line 1891
    :catch_3
    move-exception v1

    .line 1892
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 1897
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 1898
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    .line 1928
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "lastFile":Lorg/telegram/messenger/MessageObject;
    :cond_7
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    .line 1929
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    goto/16 :goto_3

    .line 1937
    .restart local v4    # "next":Z
    :cond_8
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    if-eqz v6, :cond_9

    .line 1938
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->startRecordingIfFromSpeaker()V

    .line 1940
    :cond_9
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_4
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 30
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1305
    sget v26, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    .line 1306
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    .line 1307
    const/16 v26, 0x0

    aget-object v18, p2, v26

    check-cast v18, Ljava/lang/String;

    .line 1308
    .local v18, "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileMessagesObservers:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1310
    .local v6, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    if-eqz v6, :cond_2

    .line 1311
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v4, v0, :cond_1

    .line 1312
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/ref/WeakReference;

    .line 1313
    .local v25, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v26

    if-eqz v26, :cond_0

    .line 1314
    invoke-virtual/range {v25 .. v25}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->onFailedDownload(Ljava/lang/String;)V

    .line 1315
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    invoke-interface/range {v26 .. v26}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->getObserverTag()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1311
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1318
    .end local v25    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1320
    .end local v4    # "a":I
    :cond_2
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    .line 1321
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->processLaterArrays()V

    .line 1322
    const/16 v26, 0x1

    aget-object v26, p2, v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/MediaController;->checkDownloadFinished(Ljava/lang/String;I)V

    .line 1462
    .end local v6    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    .end local v18    # "fileName":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 1323
    :cond_4
    sget v26, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    .line 1324
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    .line 1325
    const/16 v26, 0x0

    aget-object v18, p2, v26

    check-cast v18, Ljava/lang/String;

    .line 1326
    .restart local v18    # "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    move/from16 v26, v0

    if-eqz v26, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v26, v0

    if-eqz v26, :cond_5

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v17

    .line 1328
    .local v17, "file":Ljava/lang/String;
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 1329
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    .line 1330
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    .line 1333
    .end local v17    # "file":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileMessagesObservers:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/ArrayList;

    .line 1334
    .local v23, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-eqz v23, :cond_7

    .line 1335
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_2
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v4, v0, :cond_6

    .line 1336
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/messenger/MessageObject;

    .line 1337
    .local v22, "messageObject":Lorg/telegram/messenger/MessageObject;
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    .line 1335
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1339
    .end local v22    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileMessagesObservers:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1341
    .end local v4    # "a":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1342
    .restart local v6    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    if-eqz v6, :cond_a

    .line 1343
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v4, v0, :cond_9

    .line 1344
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/ref/WeakReference;

    .line 1345
    .restart local v25    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v26

    if-eqz v26, :cond_8

    .line 1346
    invoke-virtual/range {v25 .. v25}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->onSuccessDownload(Ljava/lang/String;)V

    .line 1347
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    invoke-interface/range {v26 .. v26}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->getObserverTag()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1350
    .end local v25    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1352
    .end local v4    # "a":I
    :cond_a
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    .line 1353
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->processLaterArrays()V

    .line 1354
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/MediaController;->checkDownloadFinished(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1355
    .end local v6    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    .end local v18    # "fileName":Ljava/lang/String;
    .end local v23    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_b
    sget v26, Lorg/telegram/messenger/NotificationCenter;->FileLoadProgressChanged:I

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_e

    .line 1356
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    .line 1357
    const/16 v26, 0x0

    aget-object v18, p2, v26

    check-cast v18, Ljava/lang/String;

    .line 1358
    .restart local v18    # "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1359
    .restart local v6    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    if-eqz v6, :cond_d

    .line 1360
    const/16 v26, 0x1

    aget-object v24, p2, v26

    check-cast v24, Ljava/lang/Float;

    .line 1361
    .local v24, "progress":Ljava/lang/Float;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_d

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/ref/WeakReference;

    .line 1362
    .restart local v25    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v26

    if-eqz v26, :cond_c

    .line 1363
    invoke-virtual/range {v25 .. v25}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v27

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->onProgressDownload(Ljava/lang/String;F)V

    goto :goto_4

    .line 1367
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v24    # "progress":Ljava/lang/Float;
    .end local v25    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    :cond_d
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    .line 1368
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->processLaterArrays()V

    goto/16 :goto_1

    .line 1369
    .end local v6    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    .end local v18    # "fileName":Ljava/lang/String;
    :cond_e
    sget v26, Lorg/telegram/messenger/NotificationCenter;->FileUploadProgressChanged:I

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_16

    .line 1370
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    .line 1371
    const/16 v26, 0x0

    aget-object v18, p2, v26

    check-cast v18, Ljava/lang/String;

    .line 1372
    .restart local v18    # "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1373
    .restart local v6    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    if-eqz v6, :cond_10

    .line 1374
    const/16 v26, 0x1

    aget-object v24, p2, v26

    check-cast v24, Ljava/lang/Float;

    .line 1375
    .restart local v24    # "progress":Ljava/lang/Float;
    const/16 v26, 0x2

    aget-object v16, p2, v26

    check-cast v16, Ljava/lang/Boolean;

    .line 1376
    .local v16, "enc":Ljava/lang/Boolean;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "i$":Ljava/util/Iterator;
    :cond_f
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_10

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/ref/WeakReference;

    .line 1377
    .restart local v25    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v26

    if-eqz v26, :cond_f

    .line 1378
    invoke-virtual/range {v25 .. v25}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v27

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->onProgressUpload(Ljava/lang/String;FZ)V

    goto :goto_5

    .line 1382
    .end local v16    # "enc":Ljava/lang/Boolean;
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v24    # "progress":Ljava/lang/Float;
    .end local v25    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    :cond_10
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    .line 1383
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->processLaterArrays()V

    .line 1385
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->getDelayedMessages(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 1386
    .local v10, "delayedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-eqz v10, :cond_3

    .line 1387
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v4, v0, :cond_3

    .line 1388
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .line 1389
    .local v9, "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    iget-object v0, v9, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-object/from16 v26, v0

    if-nez v26, :cond_13

    .line 1390
    iget-object v0, v9, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v12

    .line 1391
    .local v12, "dialog_id":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->typingTimes:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    .line 1392
    .local v20, "lastTime":Ljava/lang/Long;
    if-eqz v20, :cond_11

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide/16 v28, 0xfa0

    add-long v26, v26, v28

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    cmp-long v26, v26, v28

    if-gez v26, :cond_13

    .line 1393
    :cond_11
    iget-object v0, v9, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v26

    if-eqz v26, :cond_14

    .line 1394
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v26

    const/16 v27, 0x5

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v12, v13, v1, v2}, Lorg/telegram/messenger/MessagesController;->sendTyping(JII)V

    .line 1400
    :cond_12
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->typingTimes:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1387
    .end local v12    # "dialog_id":J
    .end local v20    # "lastTime":Ljava/lang/Long;
    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1395
    .restart local v12    # "dialog_id":J
    .restart local v20    # "lastTime":Ljava/lang/Long;
    :cond_14
    iget-object v0, v9, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v26, v0

    if-eqz v26, :cond_15

    .line 1396
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v26

    const/16 v27, 0x3

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v12, v13, v1, v2}, Lorg/telegram/messenger/MessagesController;->sendTyping(JII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 1405
    .end local v4    # "a":I
    .end local v9    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    .end local v10    # "delayedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v12    # "dialog_id":J
    .end local v20    # "lastTime":Ljava/lang/Long;
    :catch_0
    move-exception v11

    .line 1406
    .local v11, "e":Ljava/lang/Exception;
    const-string/jumbo v26, "tmessages"

    move-object/from16 v0, v26

    invoke-static {v0, v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1397
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v4    # "a":I
    .restart local v9    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    .restart local v10    # "delayedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .restart local v12    # "dialog_id":J
    .restart local v20    # "lastTime":Ljava/lang/Long;
    :cond_15
    :try_start_1
    iget-object v0, v9, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v26, v0

    if-eqz v26, :cond_12

    .line 1398
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v26

    const/16 v27, 0x4

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v12, v13, v1, v2}, Lorg/telegram/messenger/MessagesController;->sendTyping(JII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    .line 1408
    .end local v4    # "a":I
    .end local v6    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    .end local v9    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    .end local v10    # "delayedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v12    # "dialog_id":J
    .end local v18    # "fileName":Ljava/lang/String;
    .end local v20    # "lastTime":Ljava/lang/Long;
    :cond_16
    sget v26, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_19

    .line 1409
    const/16 v26, 0x1

    aget-object v26, p2, v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1410
    .local v8, "channelId":I
    const/16 v26, 0x0

    aget-object v21, p2, v26

    check-cast v21, Ljava/util/ArrayList;

    .line 1411
    .local v21, "markAsDeletedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v26, v0

    if-eqz v26, :cond_17

    .line 1412
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ne v8, v0, :cond_17

    .line 1413
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_17

    .line 1414
    const/16 v26, 0x1

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 1418
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_3

    .line 1419
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/messenger/MessageObject;

    .line 1420
    .restart local v22    # "messageObject":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ne v8, v0, :cond_3

    .line 1421
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_8
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v4, v0, :cond_3

    .line 1422
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "messageObject":Lorg/telegram/messenger/MessageObject;
    check-cast v22, Lorg/telegram/messenger/MessageObject;

    .line 1423
    .restart local v22    # "messageObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v22, :cond_18

    .line 1424
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1421
    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1429
    .end local v4    # "a":I
    .end local v8    # "channelId":I
    .end local v21    # "markAsDeletedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v22    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_19
    sget v26, Lorg/telegram/messenger/NotificationCenter;->removeAllMessagesFromDialog:I

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_1a

    .line 1430
    const/16 v26, 0x0

    aget-object v26, p2, v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1431
    .local v14, "did":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v26

    cmp-long v26, v26, v14

    if-nez v26, :cond_3

    .line 1432
    const/16 v26, 0x0

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    goto/16 :goto_1

    .line 1434
    .end local v14    # "did":J
    :cond_1a
    sget v26, Lorg/telegram/messenger/NotificationCenter;->musicDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_1c

    .line 1435
    const/16 v26, 0x0

    aget-object v26, p2, v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1436
    .restart local v14    # "did":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v26

    if-eqz v26, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v26

    cmp-long v26, v26, v14

    if-nez v26, :cond_3

    .line 1437
    const/16 v26, 0x1

    aget-object v7, p2, v26

    check-cast v7, Ljava/util/ArrayList;

    .line 1438
    .local v7, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 1439
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1b

    .line 1440
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->buildShuffledPlayList()V

    .line 1441
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    goto/16 :goto_1

    .line 1443
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    move/from16 v26, v0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v27

    add-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    goto/16 :goto_1

    .line 1446
    .end local v7    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v14    # "did":J
    :cond_1c
    sget v26, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    .line 1447
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_3

    .line 1448
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/messenger/MessageObject;

    .line 1449
    .restart local v22    # "messageObject":Lorg/telegram/messenger/MessageObject;
    const/16 v26, 0x0

    aget-object v26, p2, v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1450
    .restart local v14    # "did":J
    invoke-virtual/range {v22 .. v22}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v26

    cmp-long v26, v14, v26

    if-nez v26, :cond_3

    .line 1451
    const/16 v26, 0x1

    aget-object v5, p2, v26

    check-cast v5, Ljava/util/ArrayList;

    .line 1452
    .local v5, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v4, v0, :cond_3

    .line 1453
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "messageObject":Lorg/telegram/messenger/MessageObject;
    check-cast v22, Lorg/telegram/messenger/MessageObject;

    .line 1454
    .restart local v22    # "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v22 .. v22}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v26

    if-eqz v26, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistUnread:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1d

    invoke-virtual/range {v22 .. v22}, Lorg/telegram/messenger/MessageObject;->isContentUnread()Z

    move-result v26

    if-eqz v26, :cond_1e

    invoke-virtual/range {v22 .. v22}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v26

    if-nez v26, :cond_1e

    .line 1455
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1456
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v22 .. v22}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1452
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_9
.end method

.method public generateObserverTag()I
    .locals 2

    .prologue
    .line 1209
    iget v0, p0, Lorg/telegram/messenger/MediaController;->lastTag:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->lastTag:I

    return v0
.end method

.method public generateWaveform(Lorg/telegram/messenger/MessageObject;)V
    .locals 6
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 2670
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2671
    .local v0, "id":Ljava/lang/String;
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 2672
    .local v1, "path":Ljava/lang/String;
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2707
    :goto_0
    return-void

    .line 2675
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2676
    sget-object v2, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/MediaController$18;

    invoke-direct {v3, p0, v1, v0}, Lorg/telegram/messenger/MediaController$18;-><init>(Lorg/telegram/messenger/MediaController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getAudioInfo()Lorg/telegram/messenger/audioinfo/AudioInfo;
    .locals 1

    .prologue
    .line 2473
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

    return-object v0
.end method

.method protected getAutodownloadMask()I
    .locals 2

    .prologue
    .line 839
    const/4 v0, 0x0

    .line 840
    .local v0, "mask":I
    iget v1, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    iget v1, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    iget v1, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 841
    :cond_0
    or-int/lit8 v0, v0, 0x1

    .line 843
    :cond_1
    iget v1, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    iget v1, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    iget v1, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 844
    :cond_2
    or-int/lit8 v0, v0, 0x2

    .line 846
    :cond_3
    iget v1, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_4

    iget v1, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_4

    iget v1, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    .line 847
    :cond_4
    or-int/lit8 v0, v0, 0x4

    .line 849
    :cond_5
    iget v1, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_6

    iget v1, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_6

    iget v1, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    .line 850
    :cond_6
    or-int/lit8 v0, v0, 0x8

    .line 852
    :cond_7
    iget v1, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_8

    iget v1, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_8

    iget v1, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_9

    .line 853
    :cond_8
    or-int/lit8 v0, v0, 0x10

    .line 855
    :cond_9
    iget v1, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_a

    iget v1, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_a

    iget v1, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_b

    .line 856
    :cond_a
    or-int/lit8 v0, v0, 0x20

    .line 858
    :cond_b
    return v0
.end method

.method public getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    .prologue
    .line 2009
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getPlayingMessageObjectNum()I
    .locals 1

    .prologue
    .line 2013
    iget v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 2481
    iget v0, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    return v0
.end method

.method public native getWaveform(Ljava/lang/String;)[B
.end method

.method public native getWaveform2([SI)[B
.end method

.method public isAudioPaused()Z
    .locals 1

    .prologue
    .line 2565
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDownloadingCurrentMessage()Z
    .locals 1

    .prologue
    .line 2569
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    return v0
.end method

.method public isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z
    .locals 2
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 2561
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isRecordingAudio()Z
    .locals 1

    .prologue
    .line 1580
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShuffleMusic()Z
    .locals 1

    .prologue
    .line 2477
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    return v0
.end method

.method protected newDownloadObjectsAvailable(I)V
    .locals 3
    .param p1, "downloadMask"    # I

    .prologue
    .line 1033
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->getCurrentDownloadMask()I

    move-result v0

    .line 1034
    .local v0, "mask":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1035
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getDownloadQueue(I)V

    .line 1037
    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1038
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getDownloadQueue(I)V

    .line 1040
    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1041
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getDownloadQueue(I)V

    .line 1043
    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1044
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getDownloadQueue(I)V

    .line 1046
    :cond_3
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1047
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getDownloadQueue(I)V

    .line 1049
    :cond_4
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_5

    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1050
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getDownloadQueue(I)V

    .line 1052
    :cond_5
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1783
    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 3
    .param p1, "focusChange"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 705
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 706
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isAudioPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 707
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->pauseAudio(Lorg/telegram/messenger/MessageObject;)Z

    .line 709
    :cond_0
    iput v1, p0, Lorg/telegram/messenger/MediaController;->hasAudioFocus:I

    .line 710
    iput v1, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    .line 728
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->setPlayerVolume()V

    .line 729
    return-void

    .line 711
    :cond_2
    if-ne p1, v2, :cond_3

    .line 712
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    .line 713
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->resumeAudioOnFocusGain:Z

    if-eqz v0, :cond_1

    .line 714
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->resumeAudioOnFocusGain:Z

    .line 715
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isAudioPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 716
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_0

    .line 719
    :cond_3
    const/4 v0, -0x3

    if-ne p1, v0, :cond_4

    .line 720
    iput v2, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    goto :goto_0

    .line 721
    :cond_4
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 722
    iput v1, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    .line 723
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isAudioPaused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 724
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->pauseAudio(Lorg/telegram/messenger/MessageObject;)Z

    .line 725
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->resumeAudioOnFocusGain:Z

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 18
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 1589
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    if-nez v9, :cond_1

    .line 1744
    :cond_0
    :goto_0
    return-void

    .line 1592
    :cond_1
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    if-ne v9, v10, :cond_b

    .line 1593
    const-string/jumbo v9, "tmessages"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "proximity changed to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->lastProximityValue:F

    const/high16 v10, -0x3d380000    # -100.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_a

    .line 1595
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->lastProximityValue:F

    .line 1599
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v9, :cond_3

    .line 1600
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/telegram/messenger/MediaController;->isNearToSensor(F)Z

    move-result v9

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    .line 1626
    :cond_3
    :goto_2
    const/high16 v7, 0x41700000    # 15.0f

    .line 1627
    .local v7, "minDist":F
    const/4 v6, 0x6

    .line 1628
    .local v6, "minCount":I
    const/16 v5, 0xa

    .line 1629
    .local v5, "countLessMax":I
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    if-eq v9, v10, :cond_4

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-eq v9, v10, :cond_4

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    if-ne v9, v10, :cond_6

    .line 1630
    :cond_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    mul-float/2addr v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v12, 0x2

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v8, v9, v10

    .line 1631
    .local v8, "val":F
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    const/4 v10, 0x6

    if-eq v9, v10, :cond_5

    .line 1632
    const/4 v9, 0x0

    cmpl-float v9, v8, v9

    if-lez v9, :cond_12

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->previousAccValue:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_12

    .line 1633
    const/high16 v9, 0x41700000    # 15.0f

    cmpl-float v9, v8, v9

    if-lez v9, :cond_f

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    if-nez v9, :cond_f

    .line 1634
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v10, 0x6

    if-ge v9, v10, :cond_5

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    if-nez v9, :cond_5

    .line 1635
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1636
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_5

    .line 1637
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    .line 1673
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iput v8, v0, Lorg/telegram/messenger/MediaController;->previousAccValue:F

    .line 1674
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    const/high16 v10, 0x40200000    # 2.5f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_16

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x40800000    # 4.0f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_16

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x3fc00000    # 1.5f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_16

    const/4 v9, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->accelerometerVertical:Z

    .line 1677
    .end local v8    # "val":F
    :cond_6
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_19

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->accelerometerVertical:Z

    if-eqz v9, :cond_19

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    if-eqz v9, :cond_19

    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v9}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v9

    if-nez v9, :cond_19

    .line 1678
    const-string/jumbo v9, "tmessages"

    const-string/jumbo v10, "sensor values reached"

    invoke-static {v9, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v9, :cond_17

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    if-nez v9, :cond_17

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    if-nez v9, :cond_17

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v9

    if-nez v9, :cond_17

    sget-boolean v9, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-eqz v9, :cond_17

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->inputFieldHasText:Z

    if-nez v9, :cond_17

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->allowStartRecord:Z

    if-eqz v9, :cond_17

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    if-eqz v9, :cond_17

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->callInProgress:Z

    if-nez v9, :cond_17

    .line 1680
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    if-nez v9, :cond_8

    .line 1681
    const-string/jumbo v9, "tmessages"

    const-string/jumbo v10, "start record"

    invoke-static {v9, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    .line 1683
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ChatActivity;->playFirstUnreadVoiceMessage()Z

    move-result v9

    if-nez v9, :cond_7

    .line 1684
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    .line 1685
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    .line 1686
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v10

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v9}, Lorg/telegram/messenger/MediaController;->startRecording(JLorg/telegram/messenger/MessageObject;)V

    .line 1688
    :cond_7
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    .line 1689
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v9, :cond_8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v9, :cond_8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-nez v9, :cond_8

    .line 1690
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1704
    :cond_8
    :goto_5
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    .line 1705
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1706
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    .line 1738
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/MediaController;->timeSinceRaise:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/MediaController;->timeSinceRaise:J

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    cmp-long v9, v10, v12

    if-lez v9, :cond_0

    .line 1739
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    .line 1740
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1741
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    .line 1742
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/telegram/messenger/MediaController;->timeSinceRaise:J

    goto/16 :goto_0

    .line 1596
    .end local v5    # "countLessMax":I
    .end local v6    # "minCount":I
    .end local v7    # "minDist":F
    :cond_a
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->lastProximityValue:F

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_2

    .line 1597
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    goto/16 :goto_1

    .line 1602
    :cond_b
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    if-ne v9, v10, :cond_d

    .line 1604
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/MediaController;->lastTimestamp:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-nez v9, :cond_c

    const-wide v2, 0x3fef5c2900000000L    # 0.9800000190734863

    .line 1605
    .local v2, "alpha":D
    :goto_7
    const v4, 0x3f4ccccd    # 0.8f

    .line 1606
    .local v4, "alphaFast":F
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/telegram/messenger/MediaController;->lastTimestamp:J

    .line 1607
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    float-to-double v12, v11

    mul-double/2addr v12, v2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v14, v2

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v16, 0x0

    aget v11, v11, v16

    float-to-double v0, v11

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v11, v12

    aput v11, v9, v10

    .line 1608
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    float-to-double v12, v11

    mul-double/2addr v12, v2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v14, v2

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v16, 0x1

    aget v11, v11, v16

    float-to-double v0, v11

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v11, v12

    aput v11, v9, v10

    .line 1609
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v10, 0x2

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v12, 0x2

    aget v11, v11, v12

    float-to-double v12, v11

    mul-double/2addr v12, v2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v14, v2

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v16, 0x2

    aget v11, v11, v16

    float-to-double v0, v11

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v11, v12

    aput v11, v9, v10

    .line 1610
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v10, 0x0

    const v11, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v13, 0x0

    aget v12, v12, v13

    mul-float/2addr v11, v12

    const v12, 0x3e4ccccc    # 0.19999999f

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x0

    aget v13, v13, v14

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    aput v11, v9, v10

    .line 1611
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v10, 0x1

    const v11, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    mul-float/2addr v11, v12

    const v12, 0x3e4ccccc    # 0.19999999f

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x1

    aget v13, v13, v14

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    aput v11, v9, v10

    .line 1612
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v10, 0x2

    const v11, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v13, 0x2

    aget v12, v12, v13

    mul-float/2addr v11, v12

    const v12, 0x3e4ccccc    # 0.19999999f

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x2

    aget v13, v13, v14

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    aput v11, v9, v10

    .line 1614
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v10, 0x0

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v13, 0x0

    aget v12, v12, v13

    sub-float/2addr v11, v12

    aput v11, v9, v10

    .line 1615
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v10, 0x1

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    sub-float/2addr v11, v12

    aput v11, v9, v10

    .line 1616
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v10, 0x2

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x2

    aget v11, v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v13, 0x2

    aget v12, v12, v13

    sub-float/2addr v11, v12

    aput v11, v9, v10

    goto/16 :goto_2

    .line 1604
    .end local v2    # "alpha":D
    .end local v4    # "alphaFast":F
    :cond_c
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MediaController;->lastTimestamp:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-double v14, v14

    const-wide v16, 0x41cdcd6500000000L    # 1.0E9

    div-double v14, v14, v16

    add-double/2addr v12, v14

    div-double v2, v10, v12

    goto/16 :goto_7

    .line 1617
    :cond_d
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    if-ne v9, v10, :cond_e

    .line 1618
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v10, 0x0

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    aput v11, v9, v10

    .line 1619
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v10, 0x1

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    aput v11, v9, v10

    .line 1620
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v10, 0x2

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x2

    aget v11, v11, v12

    aput v11, v9, v10

    goto/16 :goto_2

    .line 1621
    :cond_e
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-ne v9, v10, :cond_3

    .line 1622
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x0

    aget v13, v13, v14

    aput v13, v11, v12

    aput v13, v9, v10

    .line 1623
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v12, 0x1

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x1

    aget v13, v13, v14

    aput v13, v11, v12

    aput v13, v9, v10

    .line 1624
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v10, 0x2

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v12, 0x2

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x2

    aget v13, v13, v14

    aput v13, v11, v12

    aput v13, v9, v10

    goto/16 :goto_2

    .line 1641
    .restart local v5    # "countLessMax":I
    .restart local v6    # "minCount":I
    .restart local v7    # "minDist":F
    .restart local v8    # "val":F
    :cond_f
    const/high16 v9, 0x41700000    # 15.0f

    cmpg-float v9, v8, v9

    if-gez v9, :cond_10

    .line 1642
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    .line 1644
    :cond_10
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    const/16 v10, 0xa

    if-eq v9, v10, :cond_11

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_11

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    if-eqz v9, :cond_5

    .line 1645
    :cond_11
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    .line 1646
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1647
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    goto/16 :goto_3

    .line 1650
    :cond_12
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_5

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->previousAccValue:F

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gez v9, :cond_5

    .line 1651
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_13

    const/high16 v9, -0x3e900000    # -15.0f

    cmpg-float v9, v8, v9

    if-gez v9, :cond_13

    .line 1652
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    const/4 v10, 0x6

    if-ge v9, v10, :cond_5

    .line 1653
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    .line 1654
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_5

    .line 1655
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1656
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    .line 1657
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/telegram/messenger/MediaController;->timeSinceRaise:J

    goto/16 :goto_3

    .line 1662
    :cond_13
    const/high16 v9, -0x3e900000    # -15.0f

    cmpl-float v9, v8, v9

    if-lez v9, :cond_14

    .line 1663
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    .line 1665
    :cond_14
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    const/16 v10, 0xa

    if-eq v9, v10, :cond_15

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_15

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    if-eqz v9, :cond_5

    .line 1666
    :cond_15
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1667
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    .line 1668
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    goto/16 :goto_3

    .line 1674
    :cond_16
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 1693
    .end local v8    # "val":F
    :cond_17
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v9, :cond_8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1694
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-nez v9, :cond_8

    .line 1695
    const-string/jumbo v9, "tmessages"

    const-string/jumbo v10, "start listen"

    invoke-static {v9, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v9, :cond_18

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v9, :cond_18

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-nez v9, :cond_18

    .line 1697
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1699
    :cond_18
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    .line 1700
    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/telegram/messenger/MediaController;->startAudioAgain(Z)V

    .line 1701
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    goto/16 :goto_5

    .line 1707
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    if-eqz v9, :cond_1b

    .line 1708
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1709
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-nez v9, :cond_9

    .line 1710
    const-string/jumbo v9, "tmessages"

    const-string/jumbo v10, "start listen by proximity only"

    invoke-static {v9, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v9, :cond_1a

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v9, :cond_1a

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-nez v9, :cond_1a

    .line 1712
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1714
    :cond_1a
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    .line 1715
    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/telegram/messenger/MediaController;->startAudioAgain(Z)V

    .line 1716
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    goto/16 :goto_6

    .line 1719
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    if-nez v9, :cond_9

    .line 1720
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    if-eqz v9, :cond_1c

    .line 1721
    const-string/jumbo v9, "tmessages"

    const-string/jumbo v10, "stop record"

    invoke-static {v9, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    const/4 v9, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/MediaController;->stopRecording(I)V

    .line 1723
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    .line 1724
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    .line 1725
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1726
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_6

    .line 1728
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v9, :cond_9

    .line 1729
    const-string/jumbo v9, "tmessages"

    const-string/jumbo v10, "stop listen"

    invoke-static {v9, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    .line 1731
    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/telegram/messenger/MediaController;->startAudioAgain(Z)V

    .line 1732
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    .line 1733
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1734
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_6
.end method

.method public pauseAudio(Lorg/telegram/messenger/MessageObject;)Z
    .locals 8
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2517
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 2534
    :cond_1
    :goto_0
    return v1

    .line 2520
    :cond_2
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopProgressTimer()V

    .line 2522
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_4

    .line 2523
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->pause()V

    .line 2527
    :cond_3
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 2528
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    move v1, v2

    .line 2534
    goto :goto_0

    .line 2524
    :cond_4
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v3, :cond_3

    .line 2525
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2529
    :catch_0
    move-exception v0

    .line 2530
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2531
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    goto :goto_0
.end method

.method public playAudio(Lorg/telegram/messenger/MessageObject;)Z
    .locals 19
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 2228
    if-nez p1, :cond_0

    .line 2229
    const/4 v2, 0x0

    .line 2428
    :goto_0
    return v2

    .line 2231
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_4

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 2232
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    if-eqz v2, :cond_2

    .line 2233
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/MediaController;->resumeAudio(Lorg/telegram/messenger/MessageObject;)Z

    .line 2235
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    if-nez v2, :cond_3

    .line 2236
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MediaController;->startRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V

    .line 2238
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 2240
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isContentUnread()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v2, :cond_5

    .line 2241
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->markMessageContentAsRead(Lorg/telegram/messenger/MessageObject;)V

    .line 2243
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    if-nez v2, :cond_8

    const/4 v14, 0x1

    .line 2244
    .local v14, "notify":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_6

    .line 2245
    const/4 v14, 0x0

    .line 2247
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v2}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 2248
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    .line 2249
    const/4 v12, 0x0

    .line 2250
    .local v12, "file":Ljava/io/File;
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v2, :cond_7

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 2251
    new-instance v12, Ljava/io/File;

    .end local v12    # "file":Ljava/io/File;
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v12, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2252
    .restart local v12    # "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7

    .line 2253
    const/4 v12, 0x0

    .line 2256
    :cond_7
    if-eqz v12, :cond_9

    move-object v9, v12

    .line 2257
    .local v9, "cacheFile":Ljava/io/File;
    :goto_2
    if-eqz v9, :cond_b

    if-eq v9, v12, :cond_b

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2258
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    .line 2259
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    .line 2260
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 2261
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    .line 2262
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/messenger/MediaController;->lastPlayPcm:J

    .line 2263
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

    .line 2264
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2265
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 2266
    new-instance v13, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v13, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2267
    .local v13, "intent":Landroid/content/Intent;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v13}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2272
    :goto_3
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2273
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2243
    .end local v9    # "cacheFile":Ljava/io/File;
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v14    # "notify":Z
    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 2256
    .restart local v12    # "file":Ljava/io/File;
    .restart local v14    # "notify":Z
    :cond_9
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v9

    goto :goto_2

    .line 2269
    .restart local v9    # "cacheFile":Ljava/io/File;
    :cond_a
    new-instance v13, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v13, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2270
    .restart local v13    # "intent":Landroid/content/Intent;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v13}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_3

    .line 2275
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    .line 2277
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2278
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkIsNextMusicFileDownloaded()V

    .line 2281
    :cond_c
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/messenger/MediaController;->isOpusFile(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 2282
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2283
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2284
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playerObjectSync:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 2286
    const/4 v2, 0x3

    :try_start_0
    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I

    .line 2287
    new-instance v17, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 2288
    .local v17, "semaphore":Ljava/util/concurrent/Semaphore;
    const/4 v2, 0x1

    new-array v15, v2, [Ljava/lang/Boolean;

    .line 2289
    .local v15, "result":[Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->fileDecodingQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/MediaController$13;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v15, v9, v1}, Lorg/telegram/messenger/MediaController$13;-><init>(Lorg/telegram/messenger/MediaController;[Ljava/lang/Boolean;Ljava/io/File;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2296
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 2298
    const/4 v2, 0x0

    aget-object v2, v15, v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_d

    .line 2299
    const/4 v2, 0x0

    :try_start_1
    monitor-exit v18

    goto/16 :goto_0

    .line 2328
    .end local v15    # "result":[Ljava/lang/Boolean;
    .end local v17    # "semaphore":Ljava/util/concurrent/Semaphore;
    :catchall_0
    move-exception v2

    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2301
    .restart local v15    # "result":[Ljava/lang/Boolean;
    .restart local v17    # "semaphore":Ljava/util/concurrent/Semaphore;
    :cond_d
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->getTotalPcmDuration()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/messenger/MediaController;->currentTotalPcmDuration:J

    .line 2303
    new-instance v2, Landroid/media/AudioTrack;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v3, :cond_10

    const/4 v3, 0x0

    :goto_4
    const v4, 0xbb80

    const/4 v5, 0x4

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    .line 2304
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 2305
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    new-instance v3, Lorg/telegram/messenger/MediaController$14;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/messenger/MediaController$14;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v2, v3}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    .line 2316
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->play()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2328
    :try_start_3
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2370
    .end local v15    # "result":[Ljava/lang/Boolean;
    .end local v17    # "semaphore":Ljava/util/concurrent/Semaphore;
    :goto_5
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/MediaController;->checkAudioFocus(Lorg/telegram/messenger/MessageObject;)V

    .line 2371
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->setPlayerVolume()V

    .line 2373
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 2374
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    .line 2375
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/messenger/MediaController;->lastPlayPcm:J

    .line 2376
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2377
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    if-nez v2, :cond_e

    .line 2378
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MediaController;->startRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V

    .line 2380
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/messenger/MediaController;->startProgressTimer(Lorg/telegram/messenger/MessageObject;)V

    .line 2381
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioDidStarted:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2383
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_17

    .line 2385
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_f

    .line 2386
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v3, v3, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v16, v0

    .line 2387
    .local v16, "seekTo":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 2420
    .end local v16    # "seekTo":I
    :cond_f
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2421
    new-instance v13, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v13, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2422
    .restart local v13    # "intent":Landroid/content/Intent;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v13}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2428
    :goto_7
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2303
    .end local v13    # "intent":Landroid/content/Intent;
    .restart local v15    # "result":[Ljava/lang/Boolean;
    .restart local v17    # "semaphore":Ljava/util/concurrent/Semaphore;
    :cond_10
    const/4 v3, 0x3

    goto/16 :goto_4

    .line 2317
    .end local v15    # "result":[Ljava/lang/Boolean;
    .end local v17    # "semaphore":Ljava/util/concurrent/Semaphore;
    :catch_0
    move-exception v10

    .line 2318
    .local v10, "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2319
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v2, :cond_11

    .line 2320
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    .line 2321
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    .line 2322
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 2323
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2324
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    .line 2326
    :cond_11
    const/4 v2, 0x0

    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 2331
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_12
    :try_start_6
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    .line 2332
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v3, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 2333
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 2334
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Lorg/telegram/messenger/MediaController$15;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/messenger/MediaController$15;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 2344
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 2345
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 2346
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2347
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

    .line 2348
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2349
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_5

    .line 2357
    :catch_1
    move-exception v10

    .line 2358
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2359
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    :goto_9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2360
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_13

    .line 2361
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 2362
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    .line 2363
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 2364
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2365
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    .line 2367
    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2332
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_14
    const/4 v2, 0x3

    goto/16 :goto_8

    .line 2352
    :cond_15
    :try_start_7
    invoke-static {v9}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getAudioInfo(Ljava/io/File;)Lorg/telegram/messenger/audioinfo/AudioInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_5

    .line 2353
    :catch_2
    move-exception v10

    .line 2354
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_8
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_5

    .line 2359
    :cond_16
    const/4 v2, 0x0

    goto :goto_9

    .line 2389
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v11

    .line 2390
    .local v11, "e2":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    iput v3, v2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 2391
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    iput v3, v2, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    .line 2392
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2393
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 2395
    .end local v11    # "e2":Ljava/lang/Exception;
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v2, :cond_f

    .line 2396
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_18

    .line 2397
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    iput v3, v2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 2399
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->fileDecodingQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/MediaController$16;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/messenger/MediaController$16;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    .line 2424
    :cond_19
    new-instance v13, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v13, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2425
    .restart local v13    # "intent":Landroid/content/Intent;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v13}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_7
.end method

.method public playMessageAtIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 2076
    iget v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 2082
    :cond_0
    :goto_0
    return-void

    .line 2079
    :cond_1
    iput p1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2080
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    .line 2081
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_0
.end method

.method public playNextMessage()V
    .locals 1

    .prologue
    .line 2072
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/MediaController;->playNextMessage(Z)V

    .line 2073
    return-void
.end method

.method public playPreviousMessage()V
    .locals 3

    .prologue
    .line 2150
    iget-boolean v1, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    .line 2152
    .local v0, "currentPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :goto_0
    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2153
    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-gez v1, :cond_0

    .line 2154
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2156
    :cond_0
    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-ltz v1, :cond_1

    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 2161
    :cond_1
    :goto_1
    return-void

    .line 2150
    .end local v0    # "currentPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    goto :goto_0

    .line 2159
    .restart local v0    # "currentPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    .line 2160
    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_1
.end method

.method protected processDownloadObjects(ILjava/util/ArrayList;)V
    .locals 10
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/DownloadObject;>;"
    const/4 v9, 0x0

    .line 986
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1030
    :cond_0
    return-void

    .line 989
    :cond_1
    const/4 v5, 0x0

    .line 990
    .local v5, "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/DownloadObject;>;"
    const/4 v6, 0x1

    if-ne p1, v6, :cond_4

    .line 991
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    .line 1003
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 1004
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/DownloadObject;

    .line 1006
    .local v3, "downloadObject":Lorg/telegram/messenger/DownloadObject;
    iget-object v6, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v6, :cond_9

    .line 1007
    iget-object v2, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1008
    .local v2, "document":Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v4

    .line 1012
    .end local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .local v4, "path":Ljava/lang/String;
    :goto_2
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->downloadQueueKeys:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1003
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 992
    .end local v0    # "a":I
    .end local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    .end local v4    # "path":Ljava/lang/String;
    :cond_4
    const/4 v6, 0x2

    if-ne p1, v6, :cond_5

    .line 993
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    goto :goto_0

    .line 994
    :cond_5
    const/4 v6, 0x4

    if-ne p1, v6, :cond_6

    .line 995
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    goto :goto_0

    .line 996
    :cond_6
    const/16 v6, 0x8

    if-ne p1, v6, :cond_7

    .line 997
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    goto :goto_0

    .line 998
    :cond_7
    const/16 v6, 0x10

    if-ne p1, v6, :cond_8

    .line 999
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    goto :goto_0

    .line 1000
    :cond_8
    const/16 v6, 0x20

    if-ne p1, v6, :cond_2

    .line 1001
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    goto :goto_0

    .line 1010
    .restart local v0    # "a":I
    .restart local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    :cond_9
    iget-object v6, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "path":Ljava/lang/String;
    goto :goto_2

    .line 1016
    :cond_a
    const/4 v1, 0x1

    .line 1017
    .local v1, "added":Z
    iget-object v6, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v6, :cond_b

    .line 1018
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    iget-object v6, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8, v9}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$PhotoSize;Ljava/lang/String;Z)V

    .line 1025
    :goto_4
    if-eqz v1, :cond_3

    .line 1026
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->downloadQueueKeys:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1019
    :cond_b
    iget-object v6, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v6, :cond_c

    .line 1020
    iget-object v2, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1021
    .restart local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    invoke-virtual {v6, v2, v9, v9}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    goto :goto_4

    .line 1023
    .end local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_c
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public processMediaObserver(Landroid/net/Uri;)V
    .locals 22
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1124
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v19

    .line 1126
    .local v19, "size":Landroid/graphics/Point;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MediaController;->mediaProjections:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "date_added DESC LIMIT 1"

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1127
    .local v10, "cursor":Landroid/database/Cursor;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1128
    .local v18, "screenshotDates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v10, :cond_c

    .line 1129
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1130
    const-string/jumbo v21, ""

    .line 1131
    .local v21, "val":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1132
    .local v11, "data":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1133
    .local v14, "display_name":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1134
    .local v8, "album_name":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1135
    .local v12, "date":J
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1136
    .local v20, "title":Ljava/lang/String;
    const/16 v17, 0x0

    .line 1137
    .local v17, "photoW":I
    const/16 v16, 0x0

    .line 1138
    .local v16, "photoH":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    .line 1139
    const/4 v2, 0x5

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1140
    const/4 v2, 0x6

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1142
    :cond_1
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "screenshot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_2
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "screenshot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "screenshot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "screenshot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    .line 1147
    :cond_5
    if-eqz v17, :cond_6

    if-nez v16, :cond_7

    .line 1148
    :cond_6
    :try_start_1
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1149
    .local v9, "bmOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1150
    invoke-static {v11, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1151
    iget v0, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v17, v0

    .line 1152
    iget v0, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    .line 1154
    .end local v9    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    :cond_7
    if-lez v17, :cond_9

    if-lez v16, :cond_9

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Point;->x:I

    move/from16 v0, v17

    if-ne v0, v2, :cond_8

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Point;->y:I

    move/from16 v0, v16

    if-eq v0, v2, :cond_9

    :cond_8
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Point;->x:I

    move/from16 v0, v16

    if-ne v0, v2, :cond_0

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Point;->y:I

    move/from16 v0, v17

    if-ne v0, v2, :cond_0

    .line 1155
    :cond_9
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1157
    :catch_0
    move-exception v15

    .line 1158
    .local v15, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1173
    .end local v8    # "album_name":Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "data":Ljava/lang/String;
    .end local v12    # "date":J
    .end local v14    # "display_name":Ljava/lang/String;
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v16    # "photoH":I
    .end local v17    # "photoW":I
    .end local v18    # "screenshotDates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v19    # "size":Landroid/graphics/Point;
    .end local v20    # "title":Ljava/lang/String;
    .end local v21    # "val":Ljava/lang/String;
    :catch_1
    move-exception v15

    .line 1174
    .restart local v15    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v15}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1176
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_a
    :goto_1
    return-void

    .line 1162
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "screenshotDates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v19    # "size":Landroid/graphics/Point;
    :cond_b
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1164
    :cond_c
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1165
    new-instance v2, Lorg/telegram/messenger/MediaController$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v1}, Lorg/telegram/messenger/MediaController$6;-><init>(Lorg/telegram/messenger/MediaController;Ljava/util/ArrayList;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V
    .locals 6
    .param p1, "observer"    # Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    .prologue
    .line 1268
    iget-boolean v4, p0, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    if-eqz v4, :cond_1

    .line 1269
    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->deleteLaterArray:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1289
    :cond_0
    :goto_0
    return-void

    .line 1272
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->getObserverTag()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1273
    .local v2, "fileName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1274
    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1275
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    if-eqz v1, :cond_5

    .line 1276
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 1277
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1278
    .local v3, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_3

    .line 1279
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1280
    add-int/lit8 v0, v0, -0x1

    .line 1276
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1283
    .end local v3    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1284
    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    .end local v0    # "a":I
    :cond_5
    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->getObserverTag()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public resumeAudio(Lorg/telegram/messenger/MessageObject;)Z
    .locals 8
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2538
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 2557
    :cond_1
    :goto_0
    return v1

    .line 2543
    :cond_2
    :try_start_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->startProgressTimer(Lorg/telegram/messenger/MessageObject;)V

    .line 2544
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_4

    .line 2545
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 2550
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->checkAudioFocus(Lorg/telegram/messenger/MessageObject;)V

    .line 2551
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 2552
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    move v1, v2

    .line 2557
    goto :goto_0

    .line 2546
    :cond_4
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v3, :cond_3

    .line 2547
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->play()V

    .line 2548
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->checkPlayerQueue()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2553
    :catch_0
    move-exception v0

    .line 2554
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;)V
    .locals 2
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 3292
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3293
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3294
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->startVideoConvertFromQueue()V

    .line 3296
    :cond_0
    return-void
.end method

.method public seekToProgress(Lorg/telegram/messenger/MessageObject;F)Z
    .locals 5
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "progress"    # F

    .prologue
    const/4 v2, 0x0

    .line 1990
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 2005
    :cond_1
    :goto_0
    return v2

    .line 1994
    :cond_2
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_4

    .line 1995
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v1, v3

    .line 1996
    .local v1, "seekTo":I
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 1997
    iput v1, p0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    .line 2005
    .end local v1    # "seekTo":I
    :cond_3
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 1998
    :cond_4
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v3, :cond_3

    .line 1999
    invoke-direct {p0, p2}, Lorg/telegram/messenger/MediaController;->seekOpusPlayer(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2001
    :catch_0
    move-exception v0

    .line 2002
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setAllowStartRecord(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1790
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->allowStartRecord:Z

    .line 1791
    return-void
.end method

.method public setInputFieldHasText(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1786
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->inputFieldHasText:Z

    .line 1787
    return-void
.end method

.method public setLastEncryptedChatParams(JJLorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "enterTime"    # J
    .param p3, "leaveTime"    # J
    .param p5, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1202
    .local p6, "visibleMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatEnterTime:J

    .line 1203
    iput-wide p3, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatLeaveTime:J

    .line 1204
    iput-object p5, p0, Lorg/telegram/messenger/MediaController;->lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 1205
    iput-object p6, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatVisibleMessages:Ljava/util/ArrayList;

    .line 1206
    return-void
.end method

.method public setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;)Z
    .locals 1
    .param p2, "current"    # Lorg/telegram/messenger/MessageObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Lorg/telegram/messenger/MessageObject;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2036
    .local p1, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/MediaController;->setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;Z)Z

    move-result v0

    return v0
.end method

.method public setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;Z)Z
    .locals 8
    .param p2, "current"    # Lorg/telegram/messenger/MessageObject;
    .param p3, "loadMusic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Lorg/telegram/messenger/MessageObject;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .local p1, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2040
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v2, p2, :cond_0

    .line 2041
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    .line 2068
    :goto_0
    return v2

    .line 2043
    :cond_0
    if-nez p3, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->forceLoopCurrentPlaylist:Z

    .line 2044
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    :goto_2
    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    .line 2045
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2046
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "a":I
    :goto_3
    if-ltz v0, :cond_4

    .line 2047
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 2048
    .local v1, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2049
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2046
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .end local v0    # "a":I
    .end local v1    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_2
    move v2, v4

    .line 2043
    goto :goto_1

    :cond_3
    move v3, v4

    .line 2044
    goto :goto_2

    .line 2052
    .restart local v0    # "a":I
    :cond_4
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2053
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 2054
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2055
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2056
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2057
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2059
    :cond_5
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2060
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    if-eqz v2, :cond_6

    .line 2061
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->buildShuffledPlayList()V

    .line 2062
    iput v4, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2064
    :cond_6
    if-eqz p3, :cond_7

    .line 2065
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-static {v6, v7, v2}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMusic(JI)V

    .line 2068
    :cond_7
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public setVoiceMessagesPlaylist(Ljava/util/ArrayList;Z)V
    .locals 4
    .param p2, "unread"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2191
    .local p1, "playlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    .line 2192
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 2193
    iput-boolean p2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistUnread:Z

    .line 2194
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    .line 2195
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2196
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 2197
    .local v1, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2200
    .end local v0    # "a":I
    .end local v1    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_0
    return-void
.end method

.method public startMediaObserver()V
    .locals 5

    .prologue
    .line 1096
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1097
    iget v1, p0, Lorg/telegram/messenger/MediaController;->startObserverToken:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->startObserverToken:I

    .line 1099
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

    if-nez v1, :cond_0

    .line 1100
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Lorg/telegram/messenger/MediaController$ExternalObserver;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/MediaController$ExternalObserver;-><init>(Lorg/telegram/messenger/MediaController;)V

    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1106
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

    if-nez v1, :cond_1

    .line 1107
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Lorg/telegram/messenger/MediaController$InternalObserver;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/MediaController$InternalObserver;-><init>(Lorg/telegram/messenger/MediaController;)V

    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1112
    :cond_1
    :goto_1
    return-void

    .line 1102
    :catch_0
    move-exception v0

    .line 1103
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1109
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1110
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public startRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V
    .locals 7
    .param p1, "chatActivity"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1794
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    .line 1827
    :cond_1
    :goto_0
    return-void

    .line 1797
    :cond_2
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    .line 1798
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1801
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    if-nez v0, :cond_1

    .line 1802
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    aput v4, v2, v6

    aput v4, v1, v5

    aput v4, v0, v3

    .line 1803
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    aput v4, v2, v6

    aput v4, v1, v5

    aput v4, v0, v3

    .line 1804
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    aput v4, v2, v6

    aput v4, v1, v5

    aput v4, v0, v3

    .line 1805
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/MediaController;->lastTimestamp:J

    .line 1806
    iput v4, p0, Lorg/telegram/messenger/MediaController;->previousAccValue:F

    .line 1807
    iput v3, p0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1808
    iput v3, p0, Lorg/telegram/messenger/MediaController;->countLess:I

    .line 1809
    iput v3, p0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    .line 1810
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MediaController$10;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$10;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1825
    iput-boolean v5, p0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    goto :goto_0
.end method

.method public startRecording(JLorg/telegram/messenger/MessageObject;)V
    .locals 9
    .param p1, "dialog_id"    # J
    .param p3, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const-wide/16 v4, 0x32

    .line 2573
    const/4 v1, 0x0

    .line 2574
    .local v1, "paused":Z
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/MediaController;->isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isAudioPaused()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2575
    const/4 v1, 0x1

    .line 2576
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/MediaController;->pauseAudio(Lorg/telegram/messenger/MessageObject;)Z

    .line 2580
    :cond_0
    :try_start_0
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "vibrator"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 2581
    .local v2, "v":Landroid/os/Vibrator;
    const-wide/16 v6, 0x32

    invoke-virtual {v2, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2587
    .end local v2    # "v":Landroid/os/Vibrator;
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v6, Lorg/telegram/messenger/MediaController$17;

    invoke-direct {v6, p0, p1, p2, p3}, Lorg/telegram/messenger/MediaController$17;-><init>(Lorg/telegram/messenger/MediaController;JLorg/telegram/messenger/MessageObject;)V

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    const-wide/16 v4, 0x1f4

    :cond_1
    invoke-virtual {v3, v6, v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)V

    .line 2667
    return-void

    .line 2583
    :catch_0
    move-exception v0

    .line 2584
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public startRecordingIfFromSpeaker()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1747
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->allowStartRecord:Z

    if-nez v0, :cond_1

    .line 1753
    :cond_0
    :goto_0
    return-void

    .line 1750
    :cond_1
    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    .line 1751
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/MediaController;->startRecording(JLorg/telegram/messenger/MessageObject;)V

    .line 1752
    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    goto :goto_0
.end method

.method public stopAudio()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2432
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v2, :cond_2

    .line 2470
    :cond_1
    :goto_0
    return-void

    .line 2436
    :cond_2
    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_5

    .line 2438
    :try_start_1
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2442
    :goto_1
    :try_start_2
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2451
    :cond_3
    :goto_2
    :try_start_3
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_6

    .line 2452
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 2453
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2463
    :cond_4
    :goto_3
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopProgressTimer()V

    .line 2464
    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2465
    iput-boolean v5, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    .line 2466
    iput-boolean v5, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 2468
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2469
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    .line 2439
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 2440
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 2447
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2448
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 2443
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_5
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v2, :cond_3

    .line 2444
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->pause()V

    .line 2445
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 2454
    :cond_6
    :try_start_6
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v2, :cond_4

    .line 2455
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playerObjectSync:Ljava/lang/Object;

    monitor-enter v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 2456
    :try_start_7
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    .line 2457
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    .line 2458
    monitor-exit v3

    goto :goto_3

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 2460
    :catch_2
    move-exception v0

    .line 2461
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public stopMediaObserver()V
    .locals 4

    .prologue
    .line 1115
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    if-nez v0, :cond_0

    .line 1116
    new-instance v0, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MediaController$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    .line 1118
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    iget v1, p0, Lorg/telegram/messenger/MediaController;->startObserverToken:I

    iput v1, v0, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;->currentObserverToken:I

    .line 1119
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1120
    return-void
.end method

.method public stopRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V
    .locals 2
    .param p1, "chatActivity"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    const/4 v1, 0x0

    .line 1830
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    if-eqz v0, :cond_1

    .line 1831
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    .line 1862
    :cond_0
    :goto_0
    return-void

    .line 1834
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    if-ne v0, p1, :cond_0

    .line 1837
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    .line 1838
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MediaController;->stopRecording(I)V

    .line 1839
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    .line 1840
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->accelerometerVertical:Z

    .line 1841
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    .line 1842
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    .line 1843
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    .line 1844
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MediaController$11;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$11;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1859
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1860
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public stopRecording(I)V
    .locals 2
    .param p1, "send"    # I

    .prologue
    .line 2757
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2758
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 2759
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    .line 2761
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MediaController$20;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MediaController$20;-><init>(Lorg/telegram/messenger/MediaController;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2793
    return-void
.end method

.method public toggleAutoplayGifs()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 3061
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->autoplayGifs:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->autoplayGifs:Z

    .line 3062
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "mainconfig"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3063
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3064
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "autoplay_gif"

    iget-boolean v3, p0, Lorg/telegram/messenger/MediaController;->autoplayGifs:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3065
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3066
    return-void

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    move v2, v3

    .line 3061
    goto :goto_0
.end method

.method public toggleCustomTabs()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 3077
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->customTabs:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->customTabs:Z

    .line 3078
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "mainconfig"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3079
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3080
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "custom_tabs"

    iget-boolean v3, p0, Lorg/telegram/messenger/MediaController;->customTabs:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3081
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3082
    return-void

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    move v2, v3

    .line 3077
    goto :goto_0
.end method

.method public toggleDirectShare()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 3085
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->directShare:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->directShare:Z

    .line 3086
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "mainconfig"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3087
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3088
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "direct_share"

    iget-boolean v3, p0, Lorg/telegram/messenger/MediaController;->directShare:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3089
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3090
    return-void

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    move v2, v3

    .line 3085
    goto :goto_0
.end method

.method public toggleRepeatMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2506
    iget v2, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    .line 2507
    iget v2, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 2508
    iput v4, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    .line 2510
    :cond_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "mainconfig"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2511
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2512
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "repeatMode"

    iget v3, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2513
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2514
    return-void
.end method

.method public toggleSaveToGallery()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 3052
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    .line 3053
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "mainconfig"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3054
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3055
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "save_gallery"

    iget-boolean v3, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3056
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3057
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->checkSaveToGalleryFiles()V

    .line 3058
    return-void

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    move v2, v3

    .line 3052
    goto :goto_0
.end method

.method public toggleShuffleMusic()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2485
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    .line 2486
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "mainconfig"

    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2487
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2488
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "shuffleMusic"

    iget-boolean v5, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2489
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2490
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    if-eqz v2, :cond_2

    .line 2491
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->buildShuffledPlayList()V

    .line 2492
    iput v4, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2503
    :cond_0
    :goto_1
    return-void

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_1
    move v2, v4

    .line 2485
    goto :goto_0

    .line 2494
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_0

    .line 2495
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2496
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 2497
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2498
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2499
    invoke-virtual {p0, v3, v3}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    goto :goto_1
.end method

.method public toogleRaiseToSpeak()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 3069
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    .line 3070
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "mainconfig"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3071
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3072
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "raise_to_speak"

    iget-boolean v3, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3073
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3074
    return-void

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    move v2, v3

    .line 3069
    goto :goto_0
.end method
