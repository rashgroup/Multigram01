.class public final Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;
.super Ljava/lang/Object;
.source "ChunkOperationHolder.java"


# instance fields
.field public chunk:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

.field public endOfStream:Z

.field public queueSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    iput v1, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->chunk:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    .line 50
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->endOfStream:Z

    .line 51
    return-void
.end method
