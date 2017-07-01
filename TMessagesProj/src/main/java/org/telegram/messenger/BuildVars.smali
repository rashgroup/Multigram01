.class public Lorg/telegram/messenger/BuildVars;
.super Ljava/lang/Object;
.source "BuildVars.java"


# static fields
.field public static APP_HASH:Ljava/lang/String;

.field public static APP_ID:I

.field public static BING_SEARCH_KEY:Ljava/lang/String;

.field public static BUILD_VERSION:I

.field public static BUILD_VERSION_STRING:Ljava/lang/String;

.field public static DEBUG_VERSION:Z

.field public static FOURSQUARE_API_ID:Ljava/lang/String;

.field public static FOURSQUARE_API_KEY:Ljava/lang/String;

.field public static FOURSQUARE_API_VERSION:Ljava/lang/String;

.field public static GCM_SENDER_ID:Ljava/lang/String;

.field public static HOCKEY_APP_HASH:Ljava/lang/String;

.field public static HOCKEY_APP_HASH_DEBUG:Ljava/lang/String;

.field public static SEND_LOGS_EMAIL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    .line 13
    const/16 v0, 0x335

    sput v0, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION:I

    .line 14
    const-string/jumbo v0, "3.10"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION_STRING:Ljava/lang/String;

    .line 15
    const/4 v0, 0x6

    sput v0, Lorg/telegram/messenger/BuildVars;->APP_ID:I

    .line 16
    const-string v0, "eb06d4abfb49dc3eeb1aeb98ae0f581e"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->APP_HASH:Ljava/lang/String;

    .line 17
    const-string v0, "a5b5c4f551dadedc9918d9766a22ca7c"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->HOCKEY_APP_HASH:Ljava/lang/String;

    .line 18
    const-string v0, "dc3b3c6317af4a3caa5269a58697e088"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->HOCKEY_APP_HASH_DEBUG:Ljava/lang/String;

    .line 19
    const-string v0, "drklo.2kb@gmail.com"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->SEND_LOGS_EMAIL:Ljava/lang/String;

    .line 20
    const-string v0, "dKYt6BjhkmFnJABZI/nWs++mx7owYEKZLcdA3DTOO1s"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->BING_SEARCH_KEY:Ljava/lang/String;

    .line 21
    const-string v0, "KNMWIDXUJGWOHEBRHPLX5VVNGU0HQOLQGTD4GG53ST5JOUBD"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->FOURSQUARE_API_KEY:Ljava/lang/String;

    .line 22
    const-string v0, "WQFF4AJFCITFSTBAU2H2UPLCBNPP3TMAZH5XLR1AHZ0AN3EH"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->FOURSQUARE_API_ID:Ljava/lang/String;

    .line 23
    const-string v0, "20150326"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->FOURSQUARE_API_ID:Ljava/lang/String;

    sput-object v0, Lorg/telegram/messenger/BuildVars;->FOURSQUARE_API_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
