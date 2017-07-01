.class public final Lorg/telegram/messenger/exoplayer/chunk/Format$DecreasingBandwidthComparator;
.super Ljava/lang/Object;
.source "Format.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/chunk/Format;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DecreasingBandwidthComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/telegram/messenger/exoplayer/chunk/Format;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Lorg/telegram/messenger/exoplayer/chunk/Format;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/telegram/messenger/exoplayer/chunk/Format;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/exoplayer/chunk/Format$DecreasingBandwidthComparator;->compare(Lorg/telegram/messenger/exoplayer/chunk/Format;Lorg/telegram/messenger/exoplayer/chunk/Format;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/messenger/exoplayer/chunk/Format;Lorg/telegram/messenger/exoplayer/chunk/Format;)I
    .locals 2
    .param p1, "a"    # Lorg/telegram/messenger/exoplayer/chunk/Format;
    .param p2, "b"    # Lorg/telegram/messenger/exoplayer/chunk/Format;

    .prologue
    .line 34
    iget v0, p2, Lorg/telegram/messenger/exoplayer/chunk/Format;->bitrate:I

    iget v1, p1, Lorg/telegram/messenger/exoplayer/chunk/Format;->bitrate:I

    sub-int/2addr v0, v1

    return v0
.end method
