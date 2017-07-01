.class public abstract Lorg/telegram/messenger/exoplayer/chunk/Chunk;
.super Ljava/lang/Object;
.source "Chunk.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;


# static fields
.field public static final NO_PARENT_ID:I = -0x1

.field public static final TRIGGER_ADAPTIVE:I = 0x3

.field public static final TRIGGER_CUSTOM_BASE:I = 0x2710

.field public static final TRIGGER_INITIAL:I = 0x1

.field public static final TRIGGER_MANUAL:I = 0x2

.field public static final TRIGGER_TRICK_PLAY:I = 0x4

.field public static final TRIGGER_UNSPECIFIED:I = 0x0

.field public static final TYPE_CUSTOM_BASE:I = 0x2710

.field public static final TYPE_DRM:I = 0x3

.field public static final TYPE_MANIFEST:I = 0x4

.field public static final TYPE_MEDIA:I = 0x1

.field public static final TYPE_MEDIA_INITIALIZATION:I = 0x2

.field public static final TYPE_UNSPECIFIED:I


# instance fields
.field protected final dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

.field public final dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

.field public final format:Lorg/telegram/messenger/exoplayer/chunk/Format;

.field public final parentId:I

.field public final trigger:I

.field public final type:I


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;IILorg/telegram/messenger/exoplayer/chunk/Format;I)V
    .locals 1
    .param p1, "dataSource"    # Lorg/telegram/messenger/exoplayer/upstream/DataSource;
    .param p2, "dataSpec"    # Lorg/telegram/messenger/exoplayer/upstream/DataSpec;
    .param p3, "type"    # I
    .param p4, "trigger"    # I
    .param p5, "format"    # Lorg/telegram/messenger/exoplayer/chunk/Format;
    .param p6, "parentId"    # I

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/Chunk;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    .line 121
    invoke-static {p2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/Chunk;->dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    .line 122
    iput p3, p0, Lorg/telegram/messenger/exoplayer/chunk/Chunk;->type:I

    .line 123
    iput p4, p0, Lorg/telegram/messenger/exoplayer/chunk/Chunk;->trigger:I

    .line 124
    iput-object p5, p0, Lorg/telegram/messenger/exoplayer/chunk/Chunk;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    .line 125
    iput p6, p0, Lorg/telegram/messenger/exoplayer/chunk/Chunk;->parentId:I

    .line 126
    return-void
.end method


# virtual methods
.method public abstract bytesLoaded()J
.end method
