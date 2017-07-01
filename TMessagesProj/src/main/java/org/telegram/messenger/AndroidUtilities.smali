.class public Lorg/telegram/messenger/AndroidUtilities;
.super Ljava/lang/Object;
.source "AndroidUtilities.java"


# static fields
.field public static final FLAG_TAG_ALL:I = 0x7

.field public static final FLAG_TAG_BOLD:I = 0x2

.field public static final FLAG_TAG_BR:I = 0x1

.field public static final FLAG_TAG_COLOR:I = 0x4

.field public static WEB_URL:Ljava/util/regex/Pattern;

.field private static adjustOwnerClassGuid:I

.field private static bitmapRect:Landroid/graphics/RectF;

.field private static final callLock:Ljava/lang/Object;

.field public static density:F

.field public static displayMetrics:Landroid/util/DisplayMetrics;

.field public static displaySize:Landroid/graphics/Point;

.field private static isTablet:Ljava/lang/Boolean;

.field public static leftBaseline:I

.field public static photoSize:Ljava/lang/Integer;

.field private static prevOrientation:I

.field private static roundPaint:Landroid/graphics/Paint;

.field private static final smsLock:Ljava/lang/Object;

.field public static statusBarHeight:I

.field private static final typefaceCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field public static usingHardwareInput:Z

.field private static waitingForCall:Z

.field private static waitingForSms:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 93
    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    sput-object v8, Lorg/telegram/messenger/AndroidUtilities;->typefaceCache:Ljava/util/Hashtable;

    .line 94
    const/16 v8, -0xa

    sput v8, Lorg/telegram/messenger/AndroidUtilities;->prevOrientation:I

    .line 95
    sput-boolean v9, Lorg/telegram/messenger/AndroidUtilities;->waitingForSms:Z

    .line 96
    sput-boolean v9, Lorg/telegram/messenger/AndroidUtilities;->waitingForCall:Z

    .line 97
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    sput-object v8, Lorg/telegram/messenger/AndroidUtilities;->smsLock:Ljava/lang/Object;

    .line 98
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    sput-object v8, Lorg/telegram/messenger/AndroidUtilities;->callLock:Ljava/lang/Object;

    .line 100
    sput v9, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 101
    const/high16 v8, 0x3f800000    # 1.0f

    sput v8, Lorg/telegram/messenger/AndroidUtilities;->density:F

    .line 102
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    sput-object v8, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    .line 103
    sput-object v10, Lorg/telegram/messenger/AndroidUtilities;->photoSize:Ljava/lang/Integer;

    .line 104
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v8, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 107
    sput-object v10, Lorg/telegram/messenger/AndroidUtilities;->isTablet:Ljava/lang/Boolean;

    .line 108
    sput v9, Lorg/telegram/messenger/AndroidUtilities;->adjustOwnerClassGuid:I

    .line 113
    sput-object v10, Lorg/telegram/messenger/AndroidUtilities;->WEB_URL:Ljava/util/regex/Pattern;

    .line 116
    :try_start_0
    const-string/jumbo v2, "a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef"

    .line 117
    .local v2, "GOOD_IRI_CHAR":Ljava/lang/String;
    const-string/jumbo v8, "((25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9]))"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 122
    .local v5, "IP_ADDRESS":Ljava/util/regex/Pattern;
    const-string/jumbo v6, "[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\-]{0,61}[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]){0,1}"

    .line 123
    .local v6, "IRI":Ljava/lang/String;
    const-string/jumbo v1, "a-zA-Z\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef"

    .line 124
    .local v1, "GOOD_GTLD_CHAR":Ljava/lang/String;
    const-string/jumbo v3, "[a-zA-Z\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]{2,63}"

    .line 125
    .local v3, "GTLD":Ljava/lang/String;
    const-string/jumbo v4, "([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\-]{0,61}[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]){0,1}\\.)+[a-zA-Z\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]{2,63}"

    .line 126
    .local v4, "HOST_NAME":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "(([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\-]{0,61}[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]){0,1}\\.)+[a-zA-Z\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]{2,63}|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 127
    .local v0, "DOMAIN_NAME":Ljava/util/regex/Pattern;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "((?:(http|https|Http|Https):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?(?:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "(?:\\:\\d{1,5})?)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "(\\/(?:(?:["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\\;\\/\\?\\:\\@\\&\\=\\#\\~"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\\-\\.\\+\\!\\*\\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "(?:\\b|$)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    sput-object v8, Lorg/telegram/messenger/AndroidUtilities;->WEB_URL:Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v0    # "DOMAIN_NAME":Ljava/util/regex/Pattern;
    .end local v1    # "GOOD_GTLD_CHAR":Ljava/lang/String;
    .end local v3    # "GTLD":Ljava/lang/String;
    .end local v4    # "HOST_NAME":Ljava/lang/String;
    .end local v5    # "IP_ADDRESS":Ljava/util/regex/Pattern;
    .end local v6    # "IRI":Ljava/lang/String;
    :goto_0
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    sput v8, Lorg/telegram/messenger/AndroidUtilities;->density:F

    .line 143
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v8, 0x50

    :goto_1
    sput v8, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    .line 144
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->checkDisplaySize()V

    .line 145
    return-void

    .line 136
    :catch_0
    move-exception v7

    .line 137
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "tmessages"

    invoke-static {v8, v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 143
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_0
    const/16 v8, 0x48

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMediaToGallery(Landroid/net/Uri;)V
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1183
    if-nez p0, :cond_0

    .line 1193
    :goto_0
    return-void

    .line 1187
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1188
    .local v1, "mediaScanIntent":Landroid/content/Intent;
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1189
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1190
    .end local v1    # "mediaScanIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1191
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static addMediaToGallery(Ljava/lang/String;)V
    .locals 2
    .param p0, "fromPath"    # Ljava/lang/String;

    .prologue
    .line 1174
    if-nez p0, :cond_0

    .line 1180
    :goto_0
    return-void

    .line 1177
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1178
    .local v1, "f":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 1179
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->addMediaToGallery(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public static addToClipboard(Ljava/lang/CharSequence;)V
    .locals 5
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 1165
    :try_start_0
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 1166
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    const-string/jumbo v3, "label"

    invoke-static {v3, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 1167
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1171
    .end local v0    # "clip":Landroid/content/ClipData;
    .end local v1    # "clipboard":Landroid/content/ClipboardManager;
    :goto_0
    return-void

    .line 1168
    :catch_0
    move-exception v2

    .line 1169
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static buildTTLAlert(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)Landroid/app/AlertDialog$Builder;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .prologue
    const/16 v6, 0x14

    const/16 v5, 0x10

    const/4 v4, 0x0

    .line 677
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 678
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v2, "MessageLifetime"

    const v3, 0x7f0702f6

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 679
    new-instance v1, Lorg/telegram/ui/Components/NumberPicker;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 680
    .local v1, "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 681
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 682
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    if-lez v2, :cond_1

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    if-ge v2, v5, :cond_1

    .line 683
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 697
    :cond_0
    :goto_0
    new-instance v2, Lorg/telegram/messenger/AndroidUtilities$2;

    invoke-direct {v2}, Lorg/telegram/messenger/AndroidUtilities$2;-><init>()V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberPicker;->setFormatter(Lorg/telegram/ui/Components/NumberPicker$Formatter;)V

    .line 718
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 719
    const-string/jumbo v2, "Done"

    const v3, 0x7f0701c2

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/AndroidUtilities$3;

    invoke-direct {v3, p1, v1}, Lorg/telegram/messenger/AndroidUtilities$3;-><init>(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/ui/Components/NumberPicker;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 743
    return-object v0

    .line 684
    :cond_1
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_2

    .line 685
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_0

    .line 686
    :cond_2
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_3

    .line 687
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_0

    .line 688
    :cond_3
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    const/16 v3, 0xe10

    if-ne v2, v3, :cond_4

    .line 689
    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_0

    .line 690
    :cond_4
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    const v3, 0x15180

    if-ne v2, v3, :cond_5

    .line 691
    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_0

    .line 692
    :cond_5
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    const v3, 0x93a80

    if-ne v2, v3, :cond_6

    .line 693
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_0

    .line 694
    :cond_6
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    if-nez v2, :cond_0

    .line 695
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_0
.end method

.method public static calcAuthKeyHash([B)[B
    .locals 4
    .param p0, "auth_key"    # [B

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x0

    .line 1450
    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v1

    .line 1451
    .local v1, "sha1":[B
    new-array v0, v3, [B

    .line 1452
    .local v0, "key_hash":[B
    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1453
    return-object v0
.end method

.method public static calcDrawableColor(Landroid/graphics/drawable/Drawable;)[I
    .locals 22
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 148
    const/high16 v10, -0x1000000

    .line 149
    .local v10, "bitmapColor":I
    const/4 v2, 0x2

    new-array v13, v2, [I

    .line 151
    .local v13, "result":[I
    :try_start_0
    move-object/from16 v0, p0

    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 152
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 153
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_0

    .line 154
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v9, v2, v3, v4}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 155
    .local v8, "b":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_0

    .line 156
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    .line 157
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v8    # "b":Landroid/graphics/Bitmap;
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    shr-int/lit8 v2, v10, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, v10, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v4, v10, 0xff

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->rgbToHsv(III)[D

    move-result-object v12

    .line 168
    .local v12, "hsv":[D
    const/4 v2, 0x1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x1

    aget-wide v6, v12, v3

    const-wide v16, 0x3fa999999999999aL    # 0.05

    add-double v6, v6, v16

    const-wide v16, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x1

    aget-wide v20, v12, v3

    sub-double v18, v18, v20

    mul-double v16, v16, v18

    add-double v6, v6, v16

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    aput-wide v4, v12, v2

    .line 169
    const/4 v2, 0x2

    const-wide/16 v4, 0x0

    const/4 v3, 0x2

    aget-wide v6, v12, v3

    const-wide v16, 0x3fe4cccccccccccdL    # 0.65

    mul-double v6, v6, v16

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    aput-wide v4, v12, v2

    .line 170
    const/4 v2, 0x0

    aget-wide v2, v12, v2

    const/4 v4, 0x1

    aget-wide v4, v12, v4

    const/4 v6, 0x2

    aget-wide v6, v12, v6

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/AndroidUtilities;->hsvToRgb(DDD)[I

    move-result-object v14

    .line 171
    .local v14, "rgb":[I
    const/4 v2, 0x0

    const/16 v3, 0x66

    const/4 v4, 0x0

    aget v4, v14, v4

    const/4 v5, 0x1

    aget v5, v14, v5

    const/4 v6, 0x2

    aget v6, v14, v6

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v13, v2

    .line 172
    const/4 v2, 0x1

    const/16 v3, 0x88

    const/4 v4, 0x0

    aget v4, v14, v4

    const/4 v5, 0x1

    aget v5, v14, v5

    const/4 v6, 0x2

    aget v6, v14, v6

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v13, v2

    .line 173
    return-object v13

    .line 160
    .end local v12    # "hsv":[D
    .end local v14    # "rgb":[I
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    instance-of v2, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_0

    .line 161
    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    goto/16 :goto_0

    .line 163
    :catch_0
    move-exception v11

    .line 164
    .local v11, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static cancelRunOnUIThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 598
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 599
    return-void
.end method

.method public static checkDisplaySize()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 545
    :try_start_0
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 546
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v5, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v5, v4, :cond_1

    iget v5, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v5, v4, :cond_1

    :goto_0
    sput-boolean v4, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    .line 547
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 548
    .local v3, "manager":Landroid/view/WindowManager;
    if-eqz v3, :cond_0

    .line 549
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 550
    .local v1, "display":Landroid/view/Display;
    if-eqz v1, :cond_0

    .line 551
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 552
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 553
    const-string/jumbo v4, "tmessages"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "display size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    .end local v1    # "display":Landroid/view/Display;
    .end local v3    # "manager":Landroid/view/WindowManager;
    :cond_0
    :goto_1
    return-void

    .line 546
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 556
    :catch_0
    move-exception v2

    .line 557
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "tmessages"

    invoke-static {v4, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static checkForCrashes(Landroid/app/Activity;)V
    .locals 2
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 1143
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/BuildVars;->HOCKEY_APP_HASH_DEBUG:Ljava/lang/String;

    :goto_0
    new-instance v1, Lorg/telegram/messenger/AndroidUtilities$5;

    invoke-direct {v1}, Lorg/telegram/messenger/AndroidUtilities$5;-><init>()V

    invoke-static {p0, v0, v1}, Lnet/hockeyapp/android/CrashManager;->register(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;)V

    .line 1149
    return-void

    .line 1143
    :cond_0
    sget-object v0, Lorg/telegram/messenger/BuildVars;->HOCKEY_APP_HASH:Ljava/lang/String;

    goto :goto_0
.end method

.method public static checkForUpdates(Landroid/app/Activity;)V
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 1152
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_0

    .line 1153
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/BuildVars;->HOCKEY_APP_HASH_DEBUG:Ljava/lang/String;

    :goto_0
    invoke-static {p0, v0}, Lnet/hockeyapp/android/UpdateManager;->register(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1155
    :cond_0
    return-void

    .line 1153
    :cond_1
    sget-object v0, Lorg/telegram/messenger/BuildVars;->HOCKEY_APP_HASH:Ljava/lang/String;

    goto :goto_0
.end method

.method public static clearCursorDrawable(Landroid/widget/EditText;)V
    .locals 4
    .param p0, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 747
    if-nez p0, :cond_0

    .line 757
    :goto_0
    return-void

    .line 751
    :cond_0
    :try_start_0
    const-class v2, Landroid/widget/TextView;

    const-string/jumbo v3, "mCursorDrawableRes"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 752
    .local v1, "mCursorDrawableRes":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 753
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 754
    .end local v1    # "mCursorDrawableRes":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 755
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static clearDrawableAnimation(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 982
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    if-nez p0, :cond_1

    .line 998
    .end local p0    # "view":Landroid/view/View;
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 986
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local p0    # "view":Landroid/view/View;
    :cond_1
    instance-of v1, p0, Landroid/widget/ListView;

    if-eqz v1, :cond_2

    .line 987
    check-cast p0, Landroid/widget/ListView;

    .end local p0    # "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 988
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 989
    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 992
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local p0    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 993
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 994
    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 995
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    goto :goto_0
.end method

.method public static compare(II)I
    .locals 1
    .param p0, "lhs"    # I
    .param p1, "rhs"    # I

    .prologue
    .line 528
    if-ne p0, p1, :cond_0

    .line 529
    const/4 v0, 0x0

    .line 533
    :goto_0
    return v0

    .line 530
    :cond_0
    if-le p0, p1, :cond_1

    .line 531
    const/4 v0, 0x1

    goto :goto_0

    .line 533
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 11
    .param p0, "sourceFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1426
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1427
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 1429
    :cond_0
    const/4 v9, 0x0

    .line 1430
    .local v9, "source":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 1432
    .local v6, "destination":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1433
    .end local v9    # "source":Ljava/io/FileInputStream;
    .local v10, "source":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1434
    .end local v6    # "destination":Ljava/io/FileOutputStream;
    .local v7, "destination":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v10}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v10}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1439
    if-eqz v10, :cond_1

    .line 1440
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 1442
    :cond_1
    if-eqz v7, :cond_2

    .line 1443
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 1446
    :cond_2
    const/4 v0, 0x1

    move-object v6, v7

    .end local v7    # "destination":Ljava/io/FileOutputStream;
    .restart local v6    # "destination":Ljava/io/FileOutputStream;
    move-object v9, v10

    .end local v10    # "source":Ljava/io/FileInputStream;
    .restart local v9    # "source":Ljava/io/FileInputStream;
    :cond_3
    :goto_0
    return v0

    .line 1435
    :catch_0
    move-exception v8

    .line 1436
    .local v8, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1437
    const/4 v0, 0x0

    .line 1439
    if-eqz v9, :cond_4

    .line 1440
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 1442
    :cond_4
    if-eqz v6, :cond_3

    .line 1443
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 1439
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v9, :cond_5

    .line 1440
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 1442
    :cond_5
    if-eqz v6, :cond_6

    .line 1443
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    :cond_6
    throw v0

    .line 1439
    .end local v9    # "source":Ljava/io/FileInputStream;
    .restart local v10    # "source":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10    # "source":Ljava/io/FileInputStream;
    .restart local v9    # "source":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v6    # "destination":Ljava/io/FileOutputStream;
    .end local v9    # "source":Ljava/io/FileInputStream;
    .restart local v7    # "destination":Ljava/io/FileOutputStream;
    .restart local v10    # "source":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v0

    move-object v6, v7

    .end local v7    # "destination":Ljava/io/FileOutputStream;
    .restart local v6    # "destination":Ljava/io/FileOutputStream;
    move-object v9, v10

    .end local v10    # "source":Ljava/io/FileInputStream;
    .restart local v9    # "source":Ljava/io/FileInputStream;
    goto :goto_2

    .line 1435
    .end local v9    # "source":Ljava/io/FileInputStream;
    .restart local v10    # "source":Ljava/io/FileInputStream;
    :catch_1
    move-exception v8

    move-object v9, v10

    .end local v10    # "source":Ljava/io/FileInputStream;
    .restart local v9    # "source":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v6    # "destination":Ljava/io/FileOutputStream;
    .end local v9    # "source":Ljava/io/FileInputStream;
    .restart local v7    # "destination":Ljava/io/FileOutputStream;
    .restart local v10    # "source":Ljava/io/FileInputStream;
    :catch_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "destination":Ljava/io/FileOutputStream;
    .restart local v6    # "destination":Ljava/io/FileOutputStream;
    move-object v9, v10

    .end local v10    # "source":Ljava/io/FileInputStream;
    .restart local v9    # "source":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 4
    .param p0, "sourceFile"    # Ljava/io/InputStream;
    .param p1, "destFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1414
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1415
    .local v2, "out":Ljava/io/OutputStream;
    const/16 v3, 0x1000

    new-array v0, v3, [B

    .line 1417
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "len":I
    if-lez v1, :cond_0

    .line 1418
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 1419
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 1421
    :cond_0
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 1422
    const/4 v3, 0x1

    return v3
.end method

.method private static createShortcutIntent(JZ)Landroid/content/Intent;
    .locals 30
    .param p0, "did"    # J
    .param p2, "forDelete"    # Z

    .prologue
    .line 773
    new-instance v20, Landroid/content/Intent;

    sget-object v25, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v26, Lorg/telegram/messenger/OpenChatReceiver;

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 775
    .local v20, "shortcutIntent":Landroid/content/Intent;
    move-wide/from16 v0, p0

    long-to-int v13, v0

    .line 776
    .local v13, "lower_id":I
    const/16 v25, 0x20

    shr-long v26, p0, v25

    move-wide/from16 v0, v26

    long-to-int v11, v0

    .line 778
    .local v11, "high_id":I
    const/16 v23, 0x0

    .line 779
    .local v23, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v7, 0x0

    .line 780
    .local v7, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-nez v13, :cond_2

    .line 781
    const-string/jumbo v25, "encId"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 782
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v25

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v10

    .line 783
    .local v10, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-nez v10, :cond_1

    .line 784
    const/4 v4, 0x0

    .line 880
    .end local v10    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    :cond_0
    :goto_0
    return-object v4

    .line 786
    .restart local v10    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v25

    iget v0, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v23

    .line 796
    .end local v10    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    :goto_1
    if-nez v23, :cond_5

    if-nez v7, :cond_5

    .line 797
    const/4 v4, 0x0

    goto :goto_0

    .line 787
    :cond_2
    if-lez v13, :cond_3

    .line 788
    const-string/jumbo v25, "userId"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 789
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v25

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v23

    goto :goto_1

    .line 790
    :cond_3
    if-gez v13, :cond_4

    .line 791
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v25

    neg-int v0, v13

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    .line 792
    const-string/jumbo v25, "chatId"

    neg-int v0, v13

    move/from16 v26, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 794
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 801
    :cond_5
    const/16 v16, 0x0

    .line 803
    .local v16, "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    if-eqz v23, :cond_9

    .line 804
    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 805
    .local v14, "name":Ljava/lang/String;
    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v25, v0

    if-eqz v25, :cond_6

    .line 806
    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v16, v0

    .line 815
    :cond_6
    :goto_2
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "com.tmessages.openchat"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 816
    const/high16 v25, 0x4000000

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 818
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 819
    .local v4, "addIntent":Landroid/content/Intent;
    const-string/jumbo v25, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 820
    const-string/jumbo v25, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 821
    const-string/jumbo v25, "duplicate"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 822
    if-nez p2, :cond_0

    .line 823
    const/4 v5, 0x0

    .line 824
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v16, :cond_8

    .line 826
    const/16 v25, 0x1

    :try_start_0
    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v15

    .line 827
    .local v15, "path":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 828
    if-eqz v5, :cond_8

    .line 829
    const/high16 v25, 0x42680000    # 58.0f

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v21

    .line 830
    .local v21, "size":I
    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v21

    move/from16 v1, v21

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 831
    .local v17, "result":Landroid/graphics/Bitmap;
    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 832
    new-instance v6, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 833
    .local v6, "canvas":Landroid/graphics/Canvas;
    new-instance v19, Landroid/graphics/BitmapShader;

    sget-object v25, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v26, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v5, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 834
    .local v19, "shader":Landroid/graphics/BitmapShader;
    sget-object v25, Lorg/telegram/messenger/AndroidUtilities;->roundPaint:Landroid/graphics/Paint;

    if-nez v25, :cond_7

    .line 835
    new-instance v25, Landroid/graphics/Paint;

    const/16 v26, 0x1

    invoke-direct/range {v25 .. v26}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v25, Lorg/telegram/messenger/AndroidUtilities;->roundPaint:Landroid/graphics/Paint;

    .line 836
    new-instance v25, Landroid/graphics/RectF;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/RectF;-><init>()V

    sput-object v25, Lorg/telegram/messenger/AndroidUtilities;->bitmapRect:Landroid/graphics/RectF;

    .line 838
    :cond_7
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v25, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v18, v25, v26

    .line 839
    .local v18, "scale":F
    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 840
    move/from16 v0, v18

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 841
    sget-object v25, Lorg/telegram/messenger/AndroidUtilities;->roundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 842
    sget-object v25, Lorg/telegram/messenger/AndroidUtilities;->bitmapRect:Landroid/graphics/RectF;

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v25 .. v29}, Landroid/graphics/RectF;->set(FFFF)V

    .line 843
    sget-object v25, Lorg/telegram/messenger/AndroidUtilities;->bitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    sget-object v28, Lorg/telegram/messenger/AndroidUtilities;->roundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 844
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 845
    sget-object v25, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f02007f

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 846
    .local v8, "drawable":Landroid/graphics/drawable/Drawable;
    const/high16 v25, 0x41700000    # 15.0f

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v24

    .line 847
    .local v24, "w":I
    sub-int v25, v21, v24

    const/high16 v26, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v26

    sub-int v12, v25, v26

    .line 848
    .local v12, "left":I
    sub-int v25, v21, v24

    const/high16 v26, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v26

    sub-int v22, v25, v26

    .line 849
    .local v22, "top":I
    add-int v25, v12, v24

    add-int v26, v22, v24

    move/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v8, v12, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 850
    invoke-virtual {v8, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    const/16 v25, 0x0

    :try_start_1
    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 856
    :goto_3
    move-object/from16 v5, v17

    .line 862
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v12    # "left":I
    .end local v15    # "path":Ljava/io/File;
    .end local v17    # "result":Landroid/graphics/Bitmap;
    .end local v18    # "scale":F
    .end local v19    # "shader":Landroid/graphics/BitmapShader;
    .end local v21    # "size":I
    .end local v22    # "top":I
    .end local v24    # "w":I
    :cond_8
    :goto_4
    if-eqz v5, :cond_a

    .line 863
    const-string/jumbo v25, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 809
    .end local v4    # "addIntent":Landroid/content/Intent;
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v14    # "name":Ljava/lang/String;
    :cond_9
    iget-object v14, v7, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 810
    .restart local v14    # "name":Ljava/lang/String;
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v25, v0

    if-eqz v25, :cond_6

    .line 811
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v16, v0

    goto/16 :goto_2

    .line 858
    .restart local v4    # "addIntent":Landroid/content/Intent;
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v9

    .line 859
    .local v9, "e":Ljava/lang/Throwable;
    const-string/jumbo v25, "tmessages"

    move-object/from16 v0, v25

    invoke-static {v0, v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 865
    .end local v9    # "e":Ljava/lang/Throwable;
    :cond_a
    if-eqz v23, :cond_c

    .line 866
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    move/from16 v25, v0

    if-eqz v25, :cond_b

    .line 867
    const-string/jumbo v25, "android.intent.extra.shortcut.ICON_RESOURCE"

    sget-object v26, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const v27, 0x7f02007c

    invoke-static/range {v26 .. v27}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 869
    :cond_b
    const-string/jumbo v25, "android.intent.extra.shortcut.ICON_RESOURCE"

    sget-object v26, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const v27, 0x7f020080

    invoke-static/range {v26 .. v27}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 871
    :cond_c
    if-eqz v7, :cond_0

    .line 872
    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v25

    if-eqz v25, :cond_d

    iget-boolean v0, v7, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v25, v0

    if-nez v25, :cond_d

    .line 873
    const-string/jumbo v25, "android.intent.extra.shortcut.ICON_RESOURCE"

    sget-object v26, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const v27, 0x7f02007d

    invoke-static/range {v26 .. v27}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 875
    :cond_d
    const-string/jumbo v25, "android.intent.extra.shortcut.ICON_RESOURCE"

    sget-object v26, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const v27, 0x7f02007e

    invoke-static/range {v26 .. v27}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 853
    .restart local v6    # "canvas":Landroid/graphics/Canvas;
    .restart local v8    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "left":I
    .restart local v15    # "path":Ljava/io/File;
    .restart local v17    # "result":Landroid/graphics/Bitmap;
    .restart local v18    # "scale":F
    .restart local v19    # "shader":Landroid/graphics/BitmapShader;
    .restart local v21    # "size":I
    .restart local v22    # "top":I
    .restart local v24    # "w":I
    :catch_1
    move-exception v25

    goto/16 :goto_3
.end method

.method public static decodeQuotedPrintable([B)[B
    .locals 9
    .param p0, "bytes"    # [B

    .prologue
    const/4 v0, 0x0

    .line 1385
    if-nez p0, :cond_0

    .line 1410
    :goto_0
    return-object v0

    .line 1388
    :cond_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1389
    .local v2, "buffer":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v7, p0

    if-ge v4, v7, :cond_2

    .line 1390
    aget-byte v1, p0, v4

    .line 1391
    .local v1, "b":I
    const/16 v7, 0x3d

    if-ne v1, v7, :cond_1

    .line 1393
    add-int/lit8 v4, v4, 0x1

    :try_start_0
    aget-byte v7, p0, v4

    int-to-char v7, v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 1394
    .local v6, "u":I
    add-int/lit8 v4, v4, 0x1

    aget-byte v7, p0, v4

    int-to-char v7, v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 1395
    .local v5, "l":I
    shl-int/lit8 v7, v6, 0x4

    add-int/2addr v7, v5

    int-to-char v7, v7

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1389
    .end local v5    # "l":I
    .end local v6    # "u":I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1396
    :catch_0
    move-exception v3

    .line 1397
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "tmessages"

    invoke-static {v7, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1401
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 1404
    .end local v1    # "b":I
    :cond_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 1406
    .local v0, "array":[B
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1407
    :catch_1
    move-exception v3

    .line 1408
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "tmessages"

    invoke-static {v7, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static dp(F)I
    .locals 2
    .param p0, "value"    # F

    .prologue
    .line 521
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    .line 522
    const/4 v0, 0x0

    .line 524
    :goto_0
    return v0

    :cond_0
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method public static dpf2(F)F
    .locals 2
    .param p0, "value"    # F

    .prologue
    const/4 v0, 0x0

    .line 537
    cmpl-float v1, p0, v0

    if-nez v1, :cond_0

    .line 540
    :goto_0
    return v0

    :cond_0
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v0, p0

    goto :goto_0
.end method

.method public static formatFileSize(J)Ljava/lang/String;
    .locals 6
    .param p0, "size"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x44800000    # 1024.0f

    .line 1373
    const-wide/16 v0, 0x400

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 1374
    const-string/jumbo v0, "%d B"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1380
    :goto_0
    return-object v0

    .line 1375
    :cond_0
    const-wide/32 v0, 0x100000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 1376
    const-string/jumbo v0, "%.1f KB"

    new-array v1, v2, [Ljava/lang/Object;

    long-to-float v2, p0

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1377
    :cond_1
    const-wide/32 v0, 0x40000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_2

    .line 1378
    const-string/jumbo v0, "%.1f MB"

    new-array v1, v2, [Ljava/lang/Object;

    long-to-float v2, p0

    div-float/2addr v2, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1380
    :cond_2
    const-string/jumbo v0, "%.1f GB"

    new-array v1, v2, [Ljava/lang/Object;

    long-to-float v2, p0

    div-float/2addr v2, v3

    div-float/2addr v2, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatTTLString(I)Ljava/lang/String;
    .locals 6
    .param p0, "ttl"    # I

    .prologue
    .line 658
    const/16 v1, 0x3c

    if-ge p0, v1, :cond_0

    .line 659
    const-string/jumbo v1, "Seconds"

    invoke-static {v1, p0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 671
    :goto_0
    return-object v1

    .line 660
    :cond_0
    const/16 v1, 0xe10

    if-ge p0, v1, :cond_1

    .line 661
    const-string/jumbo v1, "Minutes"

    div-int/lit8 v2, p0, 0x3c

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 662
    :cond_1
    const v1, 0x15180

    if-ge p0, v1, :cond_2

    .line 663
    const-string/jumbo v1, "Hours"

    div-int/lit8 v2, p0, 0x3c

    div-int/lit8 v2, v2, 0x3c

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 664
    :cond_2
    const v1, 0x93a80

    if-ge p0, v1, :cond_3

    .line 665
    const-string/jumbo v1, "Days"

    div-int/lit8 v2, p0, 0x3c

    div-int/lit8 v2, v2, 0x3c

    div-int/lit8 v2, v2, 0x18

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 667
    :cond_3
    div-int/lit8 v1, p0, 0x3c

    div-int/lit8 v1, v1, 0x3c

    div-int/lit8 v0, v1, 0x18

    .line 668
    .local v0, "days":I
    rem-int/lit8 v1, p0, 0x7

    if-nez v1, :cond_4

    .line 669
    const-string/jumbo v1, "Weeks"

    div-int/lit8 v2, v0, 0x7

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 671
    :cond_4
    const-string/jumbo v1, "%s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "Weeks"

    div-int/lit8 v5, v0, 0x7

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "Days"

    rem-int/lit8 v5, v0, 0x7

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static generatePicturePath()Ljava/io/File;
    .locals 6

    .prologue
    .line 1309
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getAlbumDir()Ljava/io/File;

    move-result-object v1

    .line 1310
    .local v1, "storageDir":Ljava/io/File;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMdd_HHmmss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1311
    .local v2, "timeStamp":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IMG_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1315
    .end local v2    # "timeStamp":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1312
    :catch_0
    move-exception v0

    .line 1313
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1315
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 13
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "name2"    # Ljava/lang/String;
    .param p2, "q"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v12, -0x1

    const/4 v9, 0x0

    .line 1319
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 1320
    const-string/jumbo v0, ""

    .line 1358
    :cond_0
    :goto_0
    return-object v0

    .line 1322
    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1323
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    move-object v7, p0

    .line 1324
    .local v7, "wholeString":Ljava/lang/String;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_6

    .line 1325
    :cond_2
    move-object v7, p1

    .line 1329
    :cond_3
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1330
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1333
    .local v5, "lower":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1334
    .local v4, "lastIndex":I
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .local v3, "index":I
    if-eq v3, v12, :cond_a

    .line 1335
    if-nez v3, :cond_7

    move v8, v9

    :goto_3
    sub-int v2, v3, v8

    .line 1336
    .local v2, "idx":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v3, :cond_8

    move v8, v9

    :goto_4
    add-int/2addr v8, v11

    add-int v1, v8, v2

    .line 1338
    .local v1, "end":I
    if-eqz v4, :cond_9

    add-int/lit8 v8, v2, 0x1

    if-eq v4, v8, :cond_9

    .line 1339
    invoke-virtual {v7, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1344
    :cond_4
    :goto_5
    invoke-virtual {v7, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1345
    .local v6, "query":Ljava/lang/String;
    const-string/jumbo v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1346
    const-string/jumbo v8, " "

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1348
    :cond_5
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1349
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "<c#ff4d83b3>"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, "</c>"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1351
    move v4, v1

    .line 1352
    goto :goto_2

    .line 1326
    .end local v1    # "end":I
    .end local v2    # "idx":I
    .end local v3    # "index":I
    .end local v4    # "lastIndex":I
    .end local v5    # "lower":Ljava/lang/String;
    .end local v6    # "query":Ljava/lang/String;
    :cond_6
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_3

    .line 1327
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .restart local v3    # "index":I
    .restart local v4    # "lastIndex":I
    .restart local v5    # "lower":Ljava/lang/String;
    :cond_7
    move v8, v10

    .line 1335
    goto :goto_3

    .restart local v2    # "idx":I
    :cond_8
    move v8, v10

    .line 1336
    goto :goto_4

    .line 1340
    .restart local v1    # "end":I
    :cond_9
    if-nez v4, :cond_4

    if-eqz v2, :cond_4

    .line 1341
    invoke-virtual {v7, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_5

    .line 1354
    .end local v1    # "end":I
    .end local v2    # "idx":I
    :cond_a
    if-eq v4, v12, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v4, v8, :cond_0

    .line 1355
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0
.end method

.method public static generateVideoPath()Ljava/io/File;
    .locals 6

    .prologue
    .line 1363
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getAlbumDir()Ljava/io/File;

    move-result-object v1

    .line 1364
    .local v1, "storageDir":Ljava/io/File;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMdd_HHmmss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1365
    .local v2, "timeStamp":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "VID_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".mp4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1369
    .end local v2    # "timeStamp":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1366
    :catch_0
    move-exception v0

    .line 1367
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1369
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static getAlbumDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 1196
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 1197
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 1212
    .local v0, "storageDir":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v0

    .line 1199
    .end local v0    # "storageDir":Ljava/io/File;
    :cond_1
    const/4 v0, 0x0

    .line 1200
    .restart local v0    # "storageDir":Ljava/io/File;
    const-string/jumbo v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1201
    new-instance v0, Ljava/io/File;

    .end local v0    # "storageDir":Ljava/io/File;
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "Telegram"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1202
    .restart local v0    # "storageDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1203
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1204
    const-string/jumbo v1, "tmessages"

    const-string/jumbo v2, "failed to create directory"

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    const/4 v0, 0x0

    goto :goto_0

    .line 1209
    :cond_2
    const-string/jumbo v1, "tmessages"

    const-string/jumbo v2, "External storage is not mounted READ/WRITE."

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCacheDir()Ljava/io/File;
    .locals 4

    .prologue
    .line 493
    const/4 v2, 0x0

    .line 495
    .local v2, "state":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 499
    :goto_0
    if-eqz v2, :cond_0

    const-string/jumbo v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 501
    :cond_0
    :try_start_1
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 502
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_2

    .line 517
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    :goto_1
    return-object v1

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 505
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 506
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 510
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    .line 511
    .restart local v1    # "file":Ljava/io/File;
    if-nez v1, :cond_1

    .line 517
    .end local v1    # "file":Ljava/io/File;
    :goto_2
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, ""

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 514
    :catch_2
    move-exception v0

    .line 515
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 1269
    const/4 v8, 0x0

    .line 1270
    .local v8, "cursor":Landroid/database/Cursor;
    const-string/jumbo v6, "_data"

    .line 1271
    .local v6, "column":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    .line 1276
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1277
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1278
    const-string/jumbo v0, "_data"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 1279
    .local v7, "column_index":I
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1280
    .local v10, "value":Ljava/lang/String;
    const-string/jumbo v0, "content://"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "file://"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 1288
    :cond_0
    if-eqz v8, :cond_1

    .line 1289
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v10, v11

    .line 1292
    .end local v7    # "column_index":I
    .end local v10    # "value":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v10

    .line 1288
    .restart local v7    # "column_index":I
    .restart local v10    # "value":Ljava/lang/String;
    :cond_3
    if-eqz v8, :cond_2

    .line 1289
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1288
    .end local v7    # "column_index":I
    .end local v10    # "value":Ljava/lang/String;
    :cond_4
    if-eqz v8, :cond_5

    .line 1289
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_1
    move-object v10, v11

    .line 1292
    goto :goto_0

    .line 1285
    :catch_0
    move-exception v9

    .line 1286
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1288
    if-eqz v8, :cond_5

    .line 1289
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1288
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_6

    .line 1289
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public static getMinTabletSide()I
    .locals 6

    .prologue
    const/high16 v5, 0x43a00000    # 320.0f

    .line 628
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v3

    if-nez v3, :cond_1

    .line 629
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 630
    .local v2, "smallSide":I
    mul-int/lit8 v3, v2, 0x23

    div-int/lit8 v0, v3, 0x64

    .line 631
    .local v0, "leftSide":I
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 632
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 634
    :cond_0
    sub-int v3, v2, v0

    .line 642
    :goto_0
    return v3

    .line 636
    .end local v0    # "leftSide":I
    .end local v2    # "smallSide":I
    :cond_1
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 637
    .restart local v2    # "smallSide":I
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 638
    .local v1, "maxSide":I
    mul-int/lit8 v3, v1, 0x23

    div-int/lit8 v0, v3, 0x64

    .line 639
    .restart local v0    # "leftSide":I
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 640
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 642
    :cond_2
    sub-int v3, v1, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0
.end method

.method public static getMyLayerVersion(I)I
    .locals 1
    .param p0, "layer"    # I

    .prologue
    .line 570
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static getPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 14
    .param p0, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x1

    const/4 v10, 0x0

    .line 1218
    :try_start_0
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x13

    if-lt v11, v13, :cond_1

    move v4, v12

    .line 1219
    .local v4, "isKitKat":Z
    :goto_0
    if-eqz v4, :cond_5

    sget-object v11, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v11, p0}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1220
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1221
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1222
    .local v1, "docId":Ljava/lang/String;
    const-string/jumbo v10, ":"

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1223
    .local v7, "split":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v8, v7, v10

    .line 1224
    .local v8, "type":Ljava/lang/String;
    const-string/jumbo v10, "primary"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1225
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1264
    .end local v1    # "docId":Ljava/lang/String;
    .end local v4    # "isKitKat":Z
    .end local v7    # "split":[Ljava/lang/String;
    .end local v8    # "type":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v9

    :cond_1
    move v4, v10

    .line 1218
    goto :goto_0

    .line 1227
    .restart local v4    # "isKitKat":Z
    :cond_2
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1228
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 1229
    .local v3, "id":Ljava/lang/String;
    const-string/jumbo v10, "content://downloads/public_downloads"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v10, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1230
    .local v0, "contentUri":Landroid/net/Uri;
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v0, v11, v12}, Lorg/telegram/messenger/AndroidUtilities;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 1231
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v3    # "id":Ljava/lang/String;
    :cond_3
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1232
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1233
    .restart local v1    # "docId":Ljava/lang/String;
    const-string/jumbo v11, ":"

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1234
    .restart local v7    # "split":[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v8, v7, v11

    .line 1236
    .restart local v8    # "type":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1237
    .restart local v0    # "contentUri":Landroid/net/Uri;
    const/4 v11, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    :cond_4
    move v10, v11

    :goto_2
    packed-switch v10, :pswitch_data_0

    .line 1249
    :goto_3
    const-string/jumbo v5, "_id=?"

    .line 1250
    .local v5, "selection":Ljava/lang/String;
    const/4 v10, 0x1

    new-array v6, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x1

    aget-object v11, v7, v11

    aput-object v11, v6, v10

    .line 1254
    .local v6, "selectionArgs":[Ljava/lang/String;
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v11, "_id=?"

    invoke-static {v10, v0, v11, v6}, Lorg/telegram/messenger/AndroidUtilities;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 1237
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v12, "image"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_2

    :sswitch_1
    const-string/jumbo v10, "video"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v10, v12

    goto :goto_2

    :sswitch_2
    const-string/jumbo v10, "audio"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x2

    goto :goto_2

    .line 1239
    :pswitch_0
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1240
    goto :goto_3

    .line 1242
    :pswitch_1
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1243
    goto :goto_3

    .line 1245
    :pswitch_2
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_3

    .line 1256
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "docId":Ljava/lang/String;
    .end local v7    # "split":[Ljava/lang/String;
    .end local v8    # "type":Ljava/lang/String;
    :cond_5
    const-string/jumbo v10, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1257
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, p0, v11, v12}, Lorg/telegram/messenger/AndroidUtilities;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 1258
    :cond_6
    const-string/jumbo v10, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1259
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto/16 :goto_1

    .line 1261
    .end local v4    # "isKitKat":Z
    :catch_0
    move-exception v2

    .line 1262
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "tmessages"

    invoke-static {v10, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1237
    :sswitch_data_0
    .sparse-switch
        0x58d9bd6 -> :sswitch_2
        0x5faa95b -> :sswitch_0
        0x6b0147b -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getPeerLayerVersion(I)I
    .locals 2
    .param p0, "layer"    # I

    .prologue
    .line 574
    shr-int/lit8 v0, p0, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public static getPhotoSize()I
    .locals 2

    .prologue
    .line 647
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->photoSize:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 648
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 649
    const/16 v0, 0x500

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->photoSize:Ljava/lang/Integer;

    .line 654
    :cond_0
    :goto_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->photoSize:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 651
    :cond_1
    const/16 v0, 0x320

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->photoSize:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public static getPixelsInCM(FZ)F
    .locals 2
    .param p0, "cm"    # F
    .param p1, "isX"    # Z

    .prologue
    .line 562
    const v0, 0x40228f5c    # 2.54f

    div-float v1, p0, v0

    if-eqz p1, :cond_0

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    :goto_0
    mul-float/2addr v0, v1

    return v0

    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    goto :goto_0
.end method

.method public static getRealScreenSize()Landroid/graphics/Point;
    .locals 8

    .prologue
    .line 924
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 926
    .local v3, "size":Landroid/graphics/Point;
    :try_start_0
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 927
    .local v4, "windowManager":Landroid/view/WindowManager;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_0

    .line 928
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 942
    .end local v4    # "windowManager":Landroid/view/WindowManager;
    :goto_0
    return-object v3

    .line 931
    .restart local v4    # "windowManager":Landroid/view/WindowManager;
    :cond_0
    :try_start_1
    const-class v5, Landroid/view/Display;

    const-string/jumbo v6, "getRawWidth"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 932
    .local v2, "mGetRawW":Ljava/lang/reflect/Method;
    const-class v5, Landroid/view/Display;

    const-string/jumbo v6, "getRawHeight"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 933
    .local v1, "mGetRawH":Ljava/lang/reflect/Method;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v6, v5}, Landroid/graphics/Point;->set(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 934
    .end local v1    # "mGetRawH":Ljava/lang/reflect/Method;
    .end local v2    # "mGetRawW":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 935
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Point;->set(II)V

    .line 936
    const-string/jumbo v5, "tmessages"

    invoke-static {v5, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 939
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "windowManager":Landroid/view/WindowManager;
    :catch_1
    move-exception v0

    .line 940
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "tmessages"

    invoke-static {v5, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getTrimmedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "src"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v4, 0x20

    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 946
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 955
    :cond_0
    return-object p0

    .line 949
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_2

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_3

    .line 950
    :cond_2
    const/4 v0, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    .line 952
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_0

    .line 953
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_1
.end method

.method public static getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 10
    .param p0, "assetPath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 359
    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->typefaceCache:Ljava/util/Hashtable;

    monitor-enter v7

    .line 361
    const/4 v3, 0x0

    .line 362
    .local v3, "systemFont":Z
    :try_start_0
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v8, "ApoTheme"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 363
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "font_type"

    const-string/jumbo v8, "\u0627\u06cc\u0631\u0627\u0646 \u0633\u0627\u0646\u0633 \u0645\u062a\u0648\u0633\u0637"

    invoke-interface {v2, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "font":Ljava/lang/String;
    const/4 v6, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_0
    move v5, v6

    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 408
    :goto_1
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->typefaceCache:Ljava/util/Hashtable;

    invoke-virtual {v5, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_2

    .line 410
    :try_start_1
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 411
    .local v4, "t":Landroid/graphics/Typeface;
    if-nez v3, :cond_1

    .line 412
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-static {v5, p0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 414
    :cond_1
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->typefaceCache:Ljava/util/Hashtable;

    invoke-virtual {v5, p0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    .end local v4    # "t":Landroid/graphics/Typeface;
    :cond_2
    :try_start_2
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->typefaceCache:Ljava/util/Hashtable;

    invoke-virtual {v5, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Typeface;

    monitor-exit v7

    :goto_2
    return-object v5

    .line 364
    :sswitch_0
    const-string/jumbo v8, "\u067e\u06cc\u0634 \u0641\u0631\u0636 \u0633\u06cc\u0633\u062a\u0645"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "\u062a\u0644\u06af\u0631\u0627\u0645"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "\u0627\u06cc\u0631\u0627\u0646 \u0633\u0627\u0646\u0633 \u0646\u0627\u0632\u06a9"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v5, "\u0627\u06cc\u0631\u0627\u0646 \u0633\u0627\u0646\u0633 \u0645\u0639\u0645\u0648\u0644\u06cc"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v5, "\u0627\u06cc\u0631\u0627\u0646 \u0633\u0627\u0646\u0633 \u0645\u062a\u0648\u0633\u0637"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v5, "\u0627\u06cc\u0631\u0627\u0646 \u0633\u0627\u0646\u0633 \u0636\u062e\u06cc\u0645"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v5, "\u0627\u0641\u0633\u0627\u0646\u0647"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v5, "\u062f\u0633\u062a \u0646\u0648\u06cc\u0633"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v5, "\u0647\u0645\u0627"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x8

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v5, "\u0645\u0631\u0648\u0627\u0631\u06cc\u062f"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v5, "\u06cc\u06a9\u0627\u0646"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v5, "\u062a\u06cc\u062a\u0631"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v5, "\u0634\u0645\u0633"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xc

    goto/16 :goto_0

    .line 366
    :pswitch_0
    const/4 v3, 0x1

    .line 367
    goto/16 :goto_1

    .line 369
    :pswitch_1
    const-string/jumbo p0, "fonts/rmedium.ttf"

    .line 370
    goto/16 :goto_1

    .line 372
    :pswitch_2
    const-string/jumbo p0, "fonts/iransans_light.ttf"

    .line 373
    goto/16 :goto_1

    .line 375
    :pswitch_3
    const-string/jumbo p0, "fonts/iransans.ttf"

    .line 376
    goto/16 :goto_1

    .line 378
    :pswitch_4
    const-string/jumbo p0, "fonts/iransans_medium.ttf"

    .line 379
    goto/16 :goto_1

    .line 381
    :pswitch_5
    const-string/jumbo p0, "fonts/iransans_bold.ttf"

    .line 382
    goto/16 :goto_1

    .line 384
    :pswitch_6
    const-string/jumbo p0, "fonts/afsaneh.ttf"

    .line 385
    goto/16 :goto_1

    .line 387
    :pswitch_7
    const-string/jumbo p0, "fonts/dastnevis.ttf"

    .line 388
    goto/16 :goto_1

    .line 390
    :pswitch_8
    const-string/jumbo p0, "fonts/hama.ttf"

    .line 391
    goto/16 :goto_1

    .line 393
    :pswitch_9
    const-string/jumbo p0, "fonts/morvarid.ttf"

    .line 394
    goto/16 :goto_1

    .line 396
    :pswitch_a
    const-string/jumbo p0, "fonts/yekan.ttf"

    .line 397
    goto/16 :goto_1

    .line 399
    :pswitch_b
    const-string/jumbo p0, "fonts/titr.ttf"

    .line 400
    goto/16 :goto_1

    .line 402
    :pswitch_c
    const-string/jumbo p0, "fonts/shams.ttf"

    .line 403
    goto/16 :goto_1

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "Typefaces"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Could not get typeface \'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "\' because "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const/4 v5, 0x0

    monitor-exit v7

    goto/16 :goto_2

    .line 421
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "font":Ljava/lang/String;
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 364
    :sswitch_data_0
    .sparse-switch
        -0x6c75a377 -> :sswitch_9
        -0x2de587bd -> :sswitch_7
        -0x2554fdf1 -> :sswitch_6
        -0x1fd3adc6 -> :sswitch_1
        0x1811c2 -> :sswitch_c
        0x185909 -> :sswitch_8
        0x2e79aa9 -> :sswitch_b
        0x320791d -> :sswitch_4
        0x330bb1c -> :sswitch_a
        0x61c10529 -> :sswitch_3
        0x632be5db -> :sswitch_5
        0x6332ff42 -> :sswitch_2
        0x6e220901 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public static getViewInset(Landroid/view/View;)I
    .locals 9
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 904
    if-eqz p0, :cond_0

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    if-eq v6, v7, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v7, v8

    if-ne v6, v7, :cond_1

    .line 920
    :cond_0
    :goto_0
    return v5

    .line 908
    :cond_1
    :try_start_0
    const-class v6, Landroid/view/View;

    const-string/jumbo v7, "mAttachInfo"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 909
    .local v3, "mAttachInfoField":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 910
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 911
    .local v2, "mAttachInfo":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 912
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string/jumbo v7, "mStableInsets"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 913
    .local v4, "mStableInsetsField":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 914
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 915
    .local v1, "insets":Landroid/graphics/Rect;
    iget v5, v1, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 917
    .end local v1    # "insets":Landroid/graphics/Rect;
    .end local v2    # "mAttachInfo":Ljava/lang/Object;
    .end local v3    # "mAttachInfoField":Ljava/lang/reflect/Field;
    .end local v4    # "mStableInsetsField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 918
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static hideKeyboard(Landroid/view/View;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 478
    if-nez p0, :cond_1

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 483
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 486
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 487
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static hsvToRgb(DDD)[I
    .locals 22
    .param p0, "h"    # D
    .param p2, "s"    # D
    .param p4, "v"    # D

    .prologue
    .line 201
    const-wide/16 v14, 0x0

    .local v14, "r":D
    const-wide/16 v6, 0x0

    .local v6, "g":D
    const-wide/16 v2, 0x0

    .line 202
    .local v2, "b":D
    const-wide/high16 v18, 0x4018000000000000L    # 6.0

    mul-double v18, v18, p0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->floor(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v8, v0

    .line 203
    .local v8, "i":D
    const-wide/high16 v18, 0x4018000000000000L    # 6.0

    mul-double v18, v18, p0

    sub-double v4, v18, v8

    .line 204
    .local v4, "f":D
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v18, v18, p2

    mul-double v10, p4, v18

    .line 205
    .local v10, "p":D
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    mul-double v20, v4, p2

    sub-double v18, v18, v20

    mul-double v12, p4, v18

    .line 206
    .local v12, "q":D
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sub-double v20, v20, v4

    mul-double v20, v20, p2

    sub-double v18, v18, v20

    mul-double v16, p4, v18

    .line 207
    .local v16, "t":D
    double-to-int v0, v8

    move/from16 v18, v0

    rem-int/lit8 v18, v18, 0x6

    packed-switch v18, :pswitch_data_0

    .line 239
    :goto_0
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-wide v20, 0x406fe00000000000L    # 255.0

    mul-double v20, v20, v14

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    aput v20, v18, v19

    const/16 v19, 0x1

    const-wide v20, 0x406fe00000000000L    # 255.0

    mul-double v20, v20, v6

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    aput v20, v18, v19

    const/16 v19, 0x2

    const-wide v20, 0x406fe00000000000L    # 255.0

    mul-double v20, v20, v2

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    aput v20, v18, v19

    return-object v18

    .line 209
    :pswitch_0
    move-wide/from16 v14, p4

    .line 210
    move-wide/from16 v6, v16

    .line 211
    move-wide v2, v10

    .line 212
    goto :goto_0

    .line 214
    :pswitch_1
    move-wide v14, v12

    .line 215
    move-wide/from16 v6, p4

    .line 216
    move-wide v2, v10

    .line 217
    goto :goto_0

    .line 219
    :pswitch_2
    move-wide v14, v10

    .line 220
    move-wide/from16 v6, p4

    .line 221
    move-wide/from16 v2, v16

    .line 222
    goto :goto_0

    .line 224
    :pswitch_3
    move-wide v14, v10

    .line 225
    move-wide v6, v12

    .line 226
    move-wide/from16 v2, p4

    .line 227
    goto :goto_0

    .line 229
    :pswitch_4
    move-wide/from16 v14, v16

    .line 230
    move-wide v6, v10

    .line 231
    move-wide/from16 v2, p4

    .line 232
    goto :goto_0

    .line 234
    :pswitch_5
    move-wide/from16 v14, p4

    .line 235
    move-wide v6, v10

    .line 236
    move-wide v2, v12

    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static installShortcut(J)V
    .locals 4
    .param p0, "did"    # J

    .prologue
    .line 885
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, p1, v2}, Lorg/telegram/messenger/AndroidUtilities;->createShortcutIntent(JZ)Landroid/content/Intent;

    move-result-object v0

    .line 886
    .local v0, "addIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 887
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    .end local v0    # "addIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 888
    :catch_0
    move-exception v1

    .line 889
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isDownloadsDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1300
    const-string/jumbo v0, "com.android.providers.downloads.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1296
    const-string/jumbo v0, "com.android.externalstorage.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isGoogleMapsInstalled(Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 7
    .param p0, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 261
    :try_start_0
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "com.google.android.apps.maps"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    return v2

    .line 263
    :catch_0
    move-exception v1

    .line 264
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_0

    move v2, v3

    .line 265
    goto :goto_0

    .line 267
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 268
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v4, "Install Google Maps?"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 269
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 270
    const-string/jumbo v2, "OK"

    const v4, 0x7f07039f

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lorg/telegram/messenger/AndroidUtilities$1;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/AndroidUtilities$1;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 281
    const-string/jumbo v2, "Cancel"

    const v4, 0x7f0700f2

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 282
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move v2, v3

    .line 283
    goto :goto_0
.end method

.method public static isInternalUri(Landroid/net/Uri;)Z
    .locals 6
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 288
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "pathString":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 299
    :cond_0
    :goto_0
    return v2

    .line 297
    .local v0, "newPath":Ljava/lang/String;
    :cond_1
    move-object v1, v0

    .line 293
    .end local v0    # "newPath":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .restart local v0    # "newPath":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 299
    :cond_3
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/data/data/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/files"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isKeyboardShowed(Landroid/view/View;)Z
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 465
    if-nez p0, :cond_0

    .line 474
    :goto_0
    return v2

    .line 469
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 470
    .local v1, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 471
    .end local v1    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :catch_0
    move-exception v0

    .line 472
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isMediaDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1304
    const-string/jumbo v0, "com.android.providers.media.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSmallTablet()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 617
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "mainconfig"

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 618
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "tablet_mode"

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 619
    .local v2, "tabletMode":Z
    if-eqz v2, :cond_0

    .line 623
    :goto_0
    return v4

    .line 622
    :cond_0
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float v0, v5, v6

    .line 623
    .local v0, "minSide":F
    const/high16 v5, 0x442f0000    # 700.0f

    cmpg-float v5, v0, v5

    if-gtz v5, :cond_1

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method public static isTablet()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 603
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "mainconfig"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 604
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "tablet_mode"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 605
    .local v1, "tabletMode":Z
    if-eqz v1, :cond_1

    .line 606
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->isTablet:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    .line 607
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/AndroidUtilities;->isTablet:Ljava/lang/Boolean;

    .line 609
    :cond_0
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 611
    :cond_1
    return v2
.end method

.method public static isWaitingForCall()Z
    .locals 3

    .prologue
    .line 440
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->callLock:Ljava/lang/Object;

    monitor-enter v2

    .line 441
    :try_start_0
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->waitingForCall:Z

    .line 442
    .local v0, "value":Z
    monitor-exit v2

    .line 443
    return v0

    .line 442
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isWaitingForSms()Z
    .locals 3

    .prologue
    .line 426
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->smsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 427
    :try_start_0
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->waitingForSms:Z

    .line 428
    .local v0, "value":Z
    monitor-exit v2

    .line 429
    return v0

    .line 428
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static lockOrientation(Landroid/app/Activity;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 303
    if-eqz p0, :cond_0

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->prevOrientation:I

    const/16 v5, -0xa

    if-eq v4, v5, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v4

    sput v4, Lorg/telegram/messenger/AndroidUtilities;->prevOrientation:I

    .line 308
    const-string/jumbo v4, "window"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 309
    .local v1, "manager":Landroid/view/WindowManager;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 310
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 311
    .local v3, "rotation":I
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->orientation:I

    .line 313
    .local v2, "orientation":I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 314
    if-ne v2, v6, :cond_2

    .line 315
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 339
    .end local v1    # "manager":Landroid/view/WindowManager;
    .end local v2    # "orientation":I
    .end local v3    # "rotation":I
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "tmessages"

    invoke-static {v4, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 317
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "manager":Landroid/view/WindowManager;
    .restart local v2    # "orientation":I
    .restart local v3    # "rotation":I
    :cond_2
    const/16 v4, 0x8

    :try_start_1
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 319
    :cond_3
    if-ne v3, v6, :cond_5

    .line 320
    if-ne v2, v6, :cond_4

    .line 321
    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 323
    :cond_4
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 325
    :cond_5
    if-nez v3, :cond_7

    .line 326
    if-ne v2, v7, :cond_6

    .line 327
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 329
    :cond_6
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 332
    :cond_7
    if-ne v2, v7, :cond_8

    .line 333
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 335
    :cond_8
    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static makeBroadcastId(I)J
    .locals 6
    .param p0, "id"    # I

    .prologue
    .line 566
    const-wide v0, 0x100000000L

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static needShowPasscode(Z)Z
    .locals 3
    .param p0, "reset"    # Z

    .prologue
    .line 1068
    invoke-static {}, Lorg/telegram/ui/Components/ForegroundDetector;->getInstance()Lorg/telegram/ui/Components/ForegroundDetector;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/ForegroundDetector;->isWasInBackground(Z)Z

    move-result v0

    .line 1069
    .local v0, "wasInBackground":Z
    if-eqz p0, :cond_0

    .line 1070
    invoke-static {}, Lorg/telegram/ui/Components/ForegroundDetector;->getInstance()Lorg/telegram/ui/Components/ForegroundDetector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ForegroundDetector;->resetBackgroundVar()V

    .line 1072
    :cond_0
    sget-object v1, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    if-eqz v0, :cond_2

    sget-boolean v1, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    if-nez v1, :cond_1

    sget v1, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    if-eqz v1, :cond_2

    sget v1, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    if-eqz v1, :cond_2

    sget-boolean v1, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    if-nez v1, :cond_2

    sget v1, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    sget v2, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    add-int/2addr v1, v2

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    if-gt v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static openForView(Lorg/telegram/messenger/MessageObject;Landroid/app/Activity;)V
    .locals 11
    .param p0, "message"    # Lorg/telegram/messenger/MessageObject;
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v10, 0x1f4

    .line 1457
    const/4 v2, 0x0

    .line 1458
    .local v2, "f":Ljava/io/File;
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 1459
    .local v3, "fileName":Ljava/lang/String;
    iget-object v8, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    .line 1460
    new-instance v2, Ljava/io/File;

    .end local v2    # "f":Ljava/io/File;
    iget-object v8, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1462
    .restart local v2    # "f":Ljava/io/File;
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1463
    :cond_1
    iget-object v8, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v8}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v2

    .line 1465
    :cond_2
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1466
    const/4 v7, 0x0

    .line 1467
    .local v7, "realMimeType":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.VIEW"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1468
    .local v5, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v6

    .line 1469
    .local v6, "myMime":Landroid/webkit/MimeTypeMap;
    const/16 v8, 0x2e

    invoke-virtual {v3, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 1470
    .local v4, "idx":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_9

    .line 1471
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1472
    .local v1, "ext":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1473
    if-nez v7, :cond_6

    .line 1474
    iget v8, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v9, 0x9

    if-eq v8, v9, :cond_3

    iget v8, p0, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v8, :cond_4

    .line 1475
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v8

    iget-object v7, v8, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 1477
    :cond_4
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_6

    .line 1478
    :cond_5
    const/4 v7, 0x0

    .line 1481
    :cond_6
    if-eqz v7, :cond_8

    .line 1482
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1489
    .end local v1    # "ext":Ljava/lang/String;
    :goto_0
    if-eqz v7, :cond_a

    .line 1491
    const/16 v8, 0x1f4

    :try_start_0
    invoke-virtual {p1, v5, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1500
    .end local v4    # "idx":I
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "myMime":Landroid/webkit/MimeTypeMap;
    .end local v7    # "realMimeType":Ljava/lang/String;
    :cond_7
    :goto_1
    return-void

    .line 1484
    .restart local v1    # "ext":Ljava/lang/String;
    .restart local v4    # "idx":I
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "myMime":Landroid/webkit/MimeTypeMap;
    .restart local v7    # "realMimeType":Ljava/lang/String;
    :cond_8
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    const-string/jumbo v9, "text/plain"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1487
    .end local v1    # "ext":Ljava/lang/String;
    :cond_9
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    const-string/jumbo v9, "text/plain"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1492
    :catch_0
    move-exception v0

    .line 1493
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    const-string/jumbo v9, "text/plain"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1494
    invoke-virtual {p1, v5, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1497
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_a
    invoke-virtual {p1, v5, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method public static removeAdjustResize(Landroid/app/Activity;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "classGuid"    # I

    .prologue
    .line 251
    if-eqz p0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->adjustOwnerClassGuid:I

    if-ne v0, p1, :cond_0

    .line 255
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

.method public static replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1006
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static replaceTags(Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;
    .locals 13
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "flag"    # I

    .prologue
    const/4 v11, -0x1

    .line 1013
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1014
    .local v8, "stringBuilder":Ljava/lang/StringBuilder;
    and-int/lit8 v9, p1, 0x1

    if-eqz v9, :cond_2

    .line 1015
    :goto_0
    const-string/jumbo v9, "<br>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v7

    .local v7, "start":I
    if-eq v7, v11, :cond_1

    .line 1016
    add-int/lit8 v9, v7, 0x4

    const-string/jumbo v10, "\n"

    invoke-virtual {v8, v7, v9, v10}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1061
    .end local v7    # "start":I
    .end local v8    # "stringBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v4

    .line 1062
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "tmessages"

    invoke-static {v9, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1064
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v6

    .line 1018
    .restart local v7    # "start":I
    .restart local v8    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_1
    :goto_1
    :try_start_1
    const-string/jumbo v9, "<br/>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v11, :cond_2

    .line 1019
    add-int/lit8 v9, v7, 0x5

    const-string/jumbo v10, "\n"

    invoke-virtual {v8, v7, v9, v10}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1022
    .end local v7    # "start":I
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1023
    .local v1, "bolds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    and-int/lit8 v9, p1, 0x2

    if-eqz v9, :cond_4

    .line 1024
    :goto_2
    const-string/jumbo v9, "<b>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v7

    .restart local v7    # "start":I
    if-eq v7, v11, :cond_4

    .line 1025
    add-int/lit8 v9, v7, 0x3

    const-string/jumbo v10, ""

    invoke-virtual {v8, v7, v9, v10}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    const-string/jumbo v9, "</b>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1027
    .local v5, "end":I
    if-ne v5, v11, :cond_3

    .line 1028
    const-string/jumbo v9, "<b>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1030
    :cond_3
    add-int/lit8 v9, v5, 0x4

    const-string/jumbo v10, ""

    invoke-virtual {v8, v5, v9, v10}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1032
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1035
    .end local v5    # "end":I
    .end local v7    # "start":I
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1036
    .local v3, "colors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    and-int/lit8 v9, p1, 0x4

    if-eqz v9, :cond_5

    .line 1037
    :goto_3
    const-string/jumbo v9, "<c#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v7

    .restart local v7    # "start":I
    if-eq v7, v11, :cond_5

    .line 1038
    add-int/lit8 v9, v7, 0x2

    const-string/jumbo v10, ""

    invoke-virtual {v8, v7, v9, v10}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    const-string/jumbo v9, ">"

    invoke-virtual {v8, v9, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 1040
    .restart local v5    # "end":I
    invoke-virtual {v8, v7, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 1045
    .local v2, "color":I
    add-int/lit8 v9, v5, 0x1

    const-string/jumbo v10, ""

    invoke-virtual {v8, v7, v9, v10}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    const-string/jumbo v9, "</c>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1047
    add-int/lit8 v9, v5, 0x4

    const-string/jumbo v10, ""

    invoke-virtual {v8, v5, v9, v10}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1048
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1049
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1050
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1053
    .end local v2    # "color":I
    .end local v5    # "end":I
    .end local v7    # "start":I
    :cond_5
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1054
    .local v6, "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    if-ge v0, v9, :cond_6

    .line 1055
    new-instance v10, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string/jumbo v9, "fonts/rmedium.ttf"

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-direct {v10, v9}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    mul-int/lit8 v9, v0, 0x2

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    mul-int/lit8 v9, v0, 0x2

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v12, 0x21

    invoke-virtual {v6, v10, v11, v9, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1054
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1057
    :cond_6
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    div-int/lit8 v9, v9, 0x3

    if-ge v0, v9, :cond_0

    .line 1058
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    mul-int/lit8 v9, v0, 0x3

    add-int/lit8 v9, v9, 0x2

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v10, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    mul-int/lit8 v9, v0, 0x3

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    mul-int/lit8 v9, v0, 0x3

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v12, 0x21

    invoke-virtual {v6, v10, v11, v9, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1057
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public static requestAdjustResize(Landroid/app/Activity;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "classGuid"    # I

    .prologue
    .line 243
    if-eqz p0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 247
    sput p1, Lorg/telegram/messenger/AndroidUtilities;->adjustOwnerClassGuid:I

    goto :goto_0
.end method

.method private static rgbToHsv(III)[D
    .locals 22
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I

    .prologue
    .line 177
    move/from16 v0, p0

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x406fe00000000000L    # 255.0

    div-double v14, v18, v20

    .line 178
    .local v14, "rf":D
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x406fe00000000000L    # 255.0

    div-double v6, v18, v20

    .line 179
    .local v6, "gf":D
    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x406fe00000000000L    # 255.0

    div-double v2, v18, v20

    .line 180
    .local v2, "bf":D
    cmpl-double v18, v14, v6

    if-lez v18, :cond_0

    cmpl-double v18, v14, v2

    if-lez v18, :cond_0

    move-wide v10, v14

    .line 181
    .local v10, "max":D
    :goto_0
    cmpg-double v18, v14, v6

    if-gez v18, :cond_2

    cmpg-double v18, v14, v2

    if-gez v18, :cond_2

    move-wide v12, v14

    .line 183
    .local v12, "min":D
    :goto_1
    sub-double v4, v10, v12

    .line 184
    .local v4, "d":D
    const-wide/16 v18, 0x0

    cmpl-double v18, v10, v18

    if-nez v18, :cond_4

    const-wide/16 v16, 0x0

    .line 185
    .local v16, "s":D
    :goto_2
    cmpl-double v18, v10, v12

    if-nez v18, :cond_5

    .line 186
    const-wide/16 v8, 0x0

    .line 197
    .local v8, "h":D
    :goto_3
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [D

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-wide v8, v18, v19

    const/16 v19, 0x1

    aput-wide v16, v18, v19

    const/16 v19, 0x2

    aput-wide v10, v18, v19

    return-object v18

    .line 180
    .end local v4    # "d":D
    .end local v8    # "h":D
    .end local v10    # "max":D
    .end local v12    # "min":D
    .end local v16    # "s":D
    :cond_0
    cmpl-double v18, v6, v2

    if-lez v18, :cond_1

    move-wide v10, v6

    goto :goto_0

    :cond_1
    move-wide v10, v2

    goto :goto_0

    .line 181
    .restart local v10    # "max":D
    :cond_2
    cmpg-double v18, v6, v2

    if-gez v18, :cond_3

    move-wide v12, v6

    goto :goto_1

    :cond_3
    move-wide v12, v2

    goto :goto_1

    .line 184
    .restart local v4    # "d":D
    .restart local v12    # "min":D
    :cond_4
    div-double v16, v4, v10

    goto :goto_2

    .line 188
    .restart local v16    # "s":D
    :cond_5
    cmpl-double v18, v14, v6

    if-lez v18, :cond_7

    cmpl-double v18, v14, v2

    if-lez v18, :cond_7

    .line 189
    sub-double v18, v6, v2

    div-double v20, v18, v4

    cmpg-double v18, v6, v2

    if-gez v18, :cond_6

    const/16 v18, 0x6

    :goto_4
    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    add-double v8, v20, v18

    .line 195
    .restart local v8    # "h":D
    :goto_5
    const-wide/high16 v18, 0x4018000000000000L    # 6.0

    div-double v8, v8, v18

    goto :goto_3

    .line 189
    .end local v8    # "h":D
    :cond_6
    const/16 v18, 0x0

    goto :goto_4

    .line 190
    :cond_7
    cmpl-double v18, v6, v2

    if-lez v18, :cond_8

    .line 191
    sub-double v18, v2, v14

    div-double v18, v18, v4

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    add-double v8, v18, v20

    .restart local v8    # "h":D
    goto :goto_5

    .line 193
    .end local v8    # "h":D
    :cond_8
    sub-double v18, v14, v6

    div-double v18, v18, v4

    const-wide/high16 v20, 0x4010000000000000L    # 4.0

    add-double v8, v18, v20

    .restart local v8    # "h":D
    goto :goto_5
.end method

.method public static runOnUIThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 586
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 587
    return-void
.end method

.method public static runOnUIThread(Ljava/lang/Runnable;J)V
    .locals 3
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delay"    # J

    .prologue
    .line 590
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 591
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 595
    :goto_0
    return-void

    .line 593
    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static setListViewEdgeEffectColor(Landroid/widget/AbsListView;I)V
    .locals 6
    .param p0, "listView"    # Landroid/widget/AbsListView;
    .param p1, "color"    # I

    .prologue
    .line 959
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_1

    .line 961
    :try_start_0
    const-class v4, Landroid/widget/AbsListView;

    const-string/jumbo v5, "mEdgeGlowTop"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 962
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 963
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EdgeEffect;

    .line 964
    .local v3, "mEdgeGlowTop":Landroid/widget/EdgeEffect;
    if-eqz v3, :cond_0

    .line 965
    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 968
    :cond_0
    const-class v4, Landroid/widget/AbsListView;

    const-string/jumbo v5, "mEdgeGlowBottom"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 969
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 970
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EdgeEffect;

    .line 971
    .local v2, "mEdgeGlowBottom":Landroid/widget/EdgeEffect;
    if-eqz v2, :cond_1

    .line 972
    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 978
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "mEdgeGlowBottom":Landroid/widget/EdgeEffect;
    .end local v3    # "mEdgeGlowTop":Landroid/widget/EdgeEffect;
    :cond_1
    :goto_0
    return-void

    .line 974
    :catch_0
    move-exception v0

    .line 975
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "tmessages"

    invoke-static {v4, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setMyLayerVersion(II)I
    .locals 1
    .param p0, "layer"    # I
    .param p1, "version"    # I

    .prologue
    .line 578
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    or-int/2addr v0, p1

    return v0
.end method

.method public static setPeerLayerVersion(II)I
    .locals 2
    .param p0, "layer"    # I
    .param p1, "version"    # I

    .prologue
    .line 582
    const v0, 0xffff

    and-int/2addr v0, p0

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method public static setProgressBarAnimationDuration(Landroid/widget/ProgressBar;I)V
    .locals 4
    .param p0, "progressBar"    # Landroid/widget/ProgressBar;
    .param p1, "duration"    # I

    .prologue
    .line 760
    if-nez p0, :cond_0

    .line 770
    :goto_0
    return-void

    .line 764
    :cond_0
    :try_start_0
    const-class v2, Landroid/widget/ProgressBar;

    const-string/jumbo v3, "mDuration"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 765
    .local v1, "mCursorDrawableRes":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 766
    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 767
    .end local v1    # "mCursorDrawableRes":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 768
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setWaitingForCall(Z)V
    .locals 2
    .param p0, "value"    # Z

    .prologue
    .line 447
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->callLock:Ljava/lang/Object;

    monitor-enter v1

    .line 448
    :try_start_0
    sput-boolean p0, Lorg/telegram/messenger/AndroidUtilities;->waitingForCall:Z

    .line 449
    monitor-exit v1

    .line 450
    return-void

    .line 449
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setWaitingForSms(Z)V
    .locals 2
    .param p0, "value"    # Z

    .prologue
    .line 433
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->smsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 434
    :try_start_0
    sput-boolean p0, Lorg/telegram/messenger/AndroidUtilities;->waitingForSms:Z

    .line 435
    monitor-exit v1

    .line 436
    return-void

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static shakeView(Landroid/view/View;FI)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "x"    # F
    .param p2, "num"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1077
    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    .line 1078
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1091
    :goto_0
    return-void

    .line 1081
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1082
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    new-array v1, v3, [Landroid/animation/Animator;

    const-string/jumbo v2, "translationX"

    new-array v3, v3, [F

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1083
    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1084
    new-instance v1, Lorg/telegram/messenger/AndroidUtilities$4;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/AndroidUtilities$4;-><init>(Landroid/view/View;IF)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1090
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public static showKeyboard(Landroid/view/View;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 453
    if-nez p0, :cond_0

    .line 462
    :goto_0
    return-void

    .line 457
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 458
    .local v1, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 459
    .end local v1    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static uninstallShortcut(J)V
    .locals 4
    .param p0, "did"    # J

    .prologue
    .line 895
    const/4 v2, 0x1

    :try_start_0
    invoke-static {p0, p1, v2}, Lorg/telegram/messenger/AndroidUtilities;->createShortcutIntent(JZ)Landroid/content/Intent;

    move-result-object v0

    .line 896
    .local v0, "addIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 897
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 901
    .end local v0    # "addIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 898
    :catch_0
    move-exception v1

    .line 899
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static unlockOrientation(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v2, -0xa

    .line 345
    if-nez p0, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    :try_start_0
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->prevOrientation:I

    if-eq v1, v2, :cond_0

    .line 350
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->prevOrientation:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 351
    const/16 v1, -0xa

    sput v1, Lorg/telegram/messenger/AndroidUtilities;->prevOrientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static unregisterUpdates()V
    .locals 1

    .prologue
    .line 1158
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_0

    .line 1159
    invoke-static {}, Lnet/hockeyapp/android/UpdateManager;->unregister()V

    .line 1161
    :cond_0
    return-void
.end method
