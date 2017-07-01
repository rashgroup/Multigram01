.class final Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionList;
.super Ljava/lang/Object;
.source "ClosedCaptionList.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionList;",
        ">;"
    }
.end annotation


# instance fields
.field public final captions:[Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaption;

.field public final decodeOnly:Z

.field public final timeUs:J


# direct methods
.method public constructor <init>(JZ[Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaption;)V
    .locals 1
    .param p1, "timeUs"    # J
    .param p3, "decodeOnly"    # Z
    .param p4, "captions"    # [Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaption;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionList;->timeUs:J

    .line 26
    iput-boolean p3, p0, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionList;->decodeOnly:Z

    .line 27
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionList;->captions:[Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaption;

    .line 28
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 18
    check-cast p1, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionList;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionList;->compareTo(Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionList;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionList;)I
    .locals 8
    .param p1, "other"    # Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionList;

    .prologue
    const-wide/16 v6, 0x0

    .line 32
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionList;->timeUs:J

    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionList;->timeUs:J

    sub-long v0, v2, v4

    .line 33
    .local v0, "delta":J
    cmp-long v2, v0, v6

    if-nez v2, :cond_0

    .line 34
    const/4 v2, 0x0

    .line 36
    :goto_0
    return v2

    :cond_0
    cmp-long v2, v0, v6

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method
