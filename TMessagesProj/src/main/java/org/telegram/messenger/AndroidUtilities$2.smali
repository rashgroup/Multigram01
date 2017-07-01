.class final Lorg/telegram/messenger/AndroidUtilities$2;
.super Ljava/lang/Object;
.source "AndroidUtilities.java"

# interfaces
.implements Lorg/telegram/ui/Components/NumberPicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/AndroidUtilities;->buildTTLAlert(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/16 v1, 0x10

    .line 700
    if-nez p1, :cond_0

    .line 701
    const-string/jumbo v0, "ShortMessageLifetimeForever"

    const v1, 0x7f070481

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 715
    :goto_0
    return-object v0

    .line 702
    :cond_0
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    if-ge p1, v1, :cond_1

    .line 703
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->formatTTLString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 704
    :cond_1
    if-ne p1, v1, :cond_2

    .line 705
    const/16 v0, 0x1e

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->formatTTLString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 706
    :cond_2
    const/16 v0, 0x11

    if-ne p1, v0, :cond_3

    .line 707
    const/16 v0, 0x3c

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->formatTTLString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 708
    :cond_3
    const/16 v0, 0x12

    if-ne p1, v0, :cond_4

    .line 709
    const/16 v0, 0xe10

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->formatTTLString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 710
    :cond_4
    const/16 v0, 0x13

    if-ne p1, v0, :cond_5

    .line 711
    const v0, 0x15180

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->formatTTLString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 712
    :cond_5
    const/16 v0, 0x14

    if-ne p1, v0, :cond_6

    .line 713
    const v0, 0x93a80

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->formatTTLString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 715
    :cond_6
    const-string/jumbo v0, ""

    goto :goto_0
.end method
