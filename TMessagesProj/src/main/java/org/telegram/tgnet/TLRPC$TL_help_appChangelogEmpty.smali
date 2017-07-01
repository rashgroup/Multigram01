.class public Lorg/telegram/tgnet/TLRPC$TL_help_appChangelogEmpty;
.super Lorg/telegram/tgnet/TLRPC$help_AppChangelog;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_help_appChangelogEmpty"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1119
    const v0, -0x5081fc6c

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_help_appChangelogEmpty;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1118
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$help_AppChangelog;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 1123
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_help_appChangelogEmpty;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1124
    return-void
.end method
