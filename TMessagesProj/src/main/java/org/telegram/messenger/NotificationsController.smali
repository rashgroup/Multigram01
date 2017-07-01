.class public Lorg/telegram/messenger/NotificationsController;
.super Ljava/lang/Object;
.source "NotificationsController.java"


# static fields
.field public static final EXTRA_VOICE_REPLY:Ljava/lang/String; = "extra_voice_reply"

.field private static volatile Instance:Lorg/telegram/messenger/NotificationsController;


# instance fields
.field private alarmManager:Landroid/app/AlarmManager;

.field protected audioManager:Landroid/media/AudioManager;

.field private autoNotificationId:I

.field private autoNotificationsIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private delayedPushMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private inChatSoundEnabled:Z

.field private lastBadgeCount:I

.field private lastOnlineFromOtherDevice:I

.field private lastSoundOutPlay:J

.field private lastSoundPlay:J

.field private launcherClassName:Ljava/lang/String;

.field private notificationDelayRunnable:Ljava/lang/Runnable;

.field private notificationDelayWakelock:Landroid/os/PowerManager$WakeLock;

.field private notificationManager:Landroid/support/v4/app/NotificationManagerCompat;

.field private notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

.field private notifyCheck:Z

.field private opened_dialog_id:J

.field private personal_count:I

.field public popupMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private pushDialogs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pushDialogsOverrideMention:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pushMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private pushMessagesDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private smartNotificationsDialogs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private soundIn:I

.field private soundInLoaded:Z

.field private soundOut:I

.field private soundOutLoaded:Z

.field private soundPool:Landroid/media/SoundPool;

.field private soundRecord:I

.field private soundRecordLoaded:Z

.field private total_unread_count:I

.field private wearNotificationId:I

.field private wearNotificationsIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/NotificationsController;->Instance:Lorg/telegram/messenger/NotificationsController;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v3, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v4, "notificationsQueue"

    invoke-direct {v3, v4}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 54
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    .line 55
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    .line 56
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Ljava/util/HashMap;

    .line 57
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->smartNotificationsDialogs:Ljava/util/HashMap;

    .line 58
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroid/support/v4/app/NotificationManagerCompat;

    .line 59
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Ljava/util/HashMap;

    .line 60
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Ljava/util/HashMap;

    .line 61
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->autoNotificationsIds:Ljava/util/HashMap;

    .line 62
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->pushDialogsOverrideMention:Ljava/util/HashMap;

    .line 63
    const/16 v3, 0x2710

    iput v3, p0, Lorg/telegram/messenger/NotificationsController;->wearNotificationId:I

    .line 64
    const/16 v3, 0x4e20

    iput v3, p0, Lorg/telegram/messenger/NotificationsController;->autoNotificationId:I

    .line 65
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    .line 66
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/telegram/messenger/NotificationsController;->opened_dialog_id:J

    .line 67
    iput v6, p0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 68
    iput v6, p0, Lorg/telegram/messenger/NotificationsController;->personal_count:I

    .line 69
    iput-boolean v6, p0, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    .line 70
    iput v6, p0, Lorg/telegram/messenger/NotificationsController;->lastOnlineFromOtherDevice:I

    .line 71
    iput-boolean v7, p0, Lorg/telegram/messenger/NotificationsController;->inChatSoundEnabled:Z

    .line 105
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroid/support/v4/app/NotificationManagerCompat;

    .line 106
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "Notifications"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 107
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "EnableInChatSound"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lorg/telegram/messenger/NotificationsController;->inChatSoundEnabled:Z

    .line 110
    :try_start_0
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    :try_start_1
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->alarmManager:Landroid/app/AlarmManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 121
    :goto_1
    :try_start_2
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 122
    .local v1, "pm":Landroid/os/PowerManager;
    const/4 v3, 0x1

    const-string/jumbo v4, "lock"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->notificationDelayWakelock:Landroid/os/PowerManager$WakeLock;

    .line 123
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController;->notificationDelayWakelock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 128
    .end local v1    # "pm":Landroid/os/PowerManager;
    :goto_2
    new-instance v3, Lorg/telegram/messenger/NotificationsController$1;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/NotificationsController$1;-><init>(Lorg/telegram/messenger/NotificationsController;)V

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->notificationDelayRunnable:Ljava/lang/Runnable;

    .line 145
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 116
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 117
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 124
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 125
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method static synthetic access$000(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/NotificationsController;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/telegram/messenger/NotificationsController;->showOrUpdateNotification(Z)V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->autoNotificationsIds:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/NotificationsController;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 49
    iget-boolean v0, p0, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    return v0
.end method

.method static synthetic access$1102(Lorg/telegram/messenger/NotificationsController;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/NotificationsController;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 49
    iget v0, p0, Lorg/telegram/messenger/NotificationsController;->lastBadgeCount:I

    return v0
.end method

.method static synthetic access$1202(Lorg/telegram/messenger/NotificationsController;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lorg/telegram/messenger/NotificationsController;->lastBadgeCount:I

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/NotificationsController;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/telegram/messenger/NotificationsController;->setBadge(I)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/NotificationsController;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 49
    iget v0, p0, Lorg/telegram/messenger/NotificationsController;->lastOnlineFromOtherDevice:I

    return v0
.end method

.method static synthetic access$1402(Lorg/telegram/messenger/NotificationsController;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lorg/telegram/messenger/NotificationsController;->lastOnlineFromOtherDevice:I

    return p1
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/NotificationsController;Lorg/telegram/messenger/MessageObject;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/telegram/messenger/NotificationsController;->isPersonalMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->smartNotificationsDialogs:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->pushDialogsOverrideMention:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/messenger/NotificationsController;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/telegram/messenger/NotificationsController;->scheduleNotificationDelay(Z)V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/messenger/NotificationsController;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsController;->playInChatSound()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/messenger/NotificationsController;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationDelayWakelock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/messenger/NotificationsController;Landroid/content/SharedPreferences;J)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # Landroid/content/SharedPreferences;
    .param p2, "x2"    # J

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/NotificationsController;->getNotifyOverride(Landroid/content/SharedPreferences;J)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lorg/telegram/messenger/NotificationsController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->launcherClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Lorg/telegram/messenger/NotificationsController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController;->launcherClassName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-static {p0}, Lorg/telegram/messenger/NotificationsController;->getLauncherClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/messenger/NotificationsController;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 49
    iget-wide v0, p0, Lorg/telegram/messenger/NotificationsController;->lastSoundPlay:J

    return-wide v0
.end method

.method static synthetic access$2400(Lorg/telegram/messenger/NotificationsController;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->soundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$2402(Lorg/telegram/messenger/NotificationsController;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 49
    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController;->soundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$2500(Lorg/telegram/messenger/NotificationsController;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 49
    iget v0, p0, Lorg/telegram/messenger/NotificationsController;->soundIn:I

    return v0
.end method

.method static synthetic access$2502(Lorg/telegram/messenger/NotificationsController;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lorg/telegram/messenger/NotificationsController;->soundIn:I

    return p1
.end method

.method static synthetic access$2600(Lorg/telegram/messenger/NotificationsController;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 49
    iget-boolean v0, p0, Lorg/telegram/messenger/NotificationsController;->soundInLoaded:Z

    return v0
.end method

.method static synthetic access$2602(Lorg/telegram/messenger/NotificationsController;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lorg/telegram/messenger/NotificationsController;->soundInLoaded:Z

    return p1
.end method

.method static synthetic access$2700(Lorg/telegram/messenger/NotificationsController;)Landroid/support/v4/app/NotificationManagerCompat;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroid/support/v4/app/NotificationManagerCompat;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/telegram/messenger/NotificationsController;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsController;->scheduleNotificationRepeat()V

    return-void
.end method

.method static synthetic access$2900(Lorg/telegram/messenger/NotificationsController;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 49
    iget-wide v0, p0, Lorg/telegram/messenger/NotificationsController;->lastSoundOutPlay:J

    return-wide v0
.end method

.method static synthetic access$2902(Lorg/telegram/messenger/NotificationsController;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # J

    .prologue
    .line 49
    iput-wide p1, p0, Lorg/telegram/messenger/NotificationsController;->lastSoundOutPlay:J

    return-wide p1
.end method

.method static synthetic access$300(Lorg/telegram/messenger/NotificationsController;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 49
    iget-wide v0, p0, Lorg/telegram/messenger/NotificationsController;->opened_dialog_id:J

    return-wide v0
.end method

.method static synthetic access$3000(Lorg/telegram/messenger/NotificationsController;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 49
    iget v0, p0, Lorg/telegram/messenger/NotificationsController;->soundOut:I

    return v0
.end method

.method static synthetic access$3002(Lorg/telegram/messenger/NotificationsController;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lorg/telegram/messenger/NotificationsController;->soundOut:I

    return p1
.end method

.method static synthetic access$302(Lorg/telegram/messenger/NotificationsController;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # J

    .prologue
    .line 49
    iput-wide p1, p0, Lorg/telegram/messenger/NotificationsController;->opened_dialog_id:J

    return-wide p1
.end method

.method static synthetic access$3100(Lorg/telegram/messenger/NotificationsController;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 49
    iget-boolean v0, p0, Lorg/telegram/messenger/NotificationsController;->soundOutLoaded:Z

    return v0
.end method

.method static synthetic access$3102(Lorg/telegram/messenger/NotificationsController;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lorg/telegram/messenger/NotificationsController;->soundOutLoaded:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/messenger/NotificationsController;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 49
    iget v0, p0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    return v0
.end method

.method static synthetic access$402(Lorg/telegram/messenger/NotificationsController;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    return p1
.end method

.method static synthetic access$412(Lorg/telegram/messenger/NotificationsController;I)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iget v0, p0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    return v0
.end method

.method static synthetic access$420(Lorg/telegram/messenger/NotificationsController;I)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iget v0, p0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    return v0
.end method

.method static synthetic access$502(Lorg/telegram/messenger/NotificationsController;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lorg/telegram/messenger/NotificationsController;->personal_count:I

    return p1
.end method

.method static synthetic access$508(Lorg/telegram/messenger/NotificationsController;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 49
    iget v0, p0, Lorg/telegram/messenger/NotificationsController;->personal_count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/NotificationsController;->personal_count:I

    return v0
.end method

.method static synthetic access$510(Lorg/telegram/messenger/NotificationsController;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 49
    iget v0, p0, Lorg/telegram/messenger/NotificationsController;->personal_count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/messenger/NotificationsController;->personal_count:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Ljava/util/HashMap;

    return-object v0
.end method

.method private dismissNotification()V
    .locals 5

    .prologue
    .line 1133
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroid/support/v4/app/NotificationManagerCompat;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationManagerCompat;->cancel(I)V

    .line 1134
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1135
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1136
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController;->autoNotificationsIds:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1137
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-object v4, p0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroid/support/v4/app/NotificationManagerCompat;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationManagerCompat;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1150
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 1151
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1153
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 1139
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController;->autoNotificationsIds:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1140
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1141
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-object v4, p0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroid/support/v4/app/NotificationManagerCompat;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationManagerCompat;->cancel(I)V

    goto :goto_2

    .line 1143
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1144
    new-instance v3, Lorg/telegram/messenger/NotificationsController$11;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/NotificationsController$11;-><init>(Lorg/telegram/messenger/NotificationsController;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getInstance()Lorg/telegram/messenger/NotificationsController;
    .locals 4

    .prologue
    .line 92
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->Instance:Lorg/telegram/messenger/NotificationsController;

    .line 93
    .local v0, "localInstance":Lorg/telegram/messenger/NotificationsController;
    if-nez v0, :cond_1

    .line 94
    const-class v3, Lorg/telegram/messenger/MessagesController;

    monitor-enter v3

    .line 95
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->Instance:Lorg/telegram/messenger/NotificationsController;

    .line 96
    if-nez v0, :cond_0

    .line 97
    new-instance v1, Lorg/telegram/messenger/NotificationsController;

    invoke-direct {v1}, Lorg/telegram/messenger/NotificationsController;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Lorg/telegram/messenger/NotificationsController;
    .local v1, "localInstance":Lorg/telegram/messenger/NotificationsController;
    :try_start_1
    sput-object v1, Lorg/telegram/messenger/NotificationsController;->Instance:Lorg/telegram/messenger/NotificationsController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 99
    .end local v1    # "localInstance":Lorg/telegram/messenger/NotificationsController;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/NotificationsController;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 101
    :cond_1
    return-object v0

    .line 99
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/messenger/NotificationsController;
    .restart local v1    # "localInstance":Lorg/telegram/messenger/NotificationsController;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/messenger/NotificationsController;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/NotificationsController;
    goto :goto_0
.end method

.method private static getLauncherClassName(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1097
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1099
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.MAIN"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1100
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1102
    const/4 v7, 0x0

    invoke-virtual {v4, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 1103
    .local v6, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 1104
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1105
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1106
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1112
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return-object v7

    .line 1109
    :catch_0
    move-exception v0

    .line 1110
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "tmessages"

    invoke-static {v7, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1112
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private getNotifyOverride(Landroid/content/SharedPreferences;J)I
    .locals 6
    .param p1, "preferences"    # Landroid/content/SharedPreferences;
    .param p2, "dialog_id"    # J

    .prologue
    const/4 v4, 0x0

    .line 1121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notify2_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1122
    .local v1, "notifyOverride":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyuntil_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1124
    .local v0, "muteUntil":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 1125
    const/4 v1, 0x2

    .line 1128
    .end local v0    # "muteUntil":I
    :cond_0
    return v1
.end method

.method private getStringForMessage(Lorg/telegram/messenger/MessageObject;Z)Ljava/lang/String;
    .locals 32
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "shortMessage"    # Z

    .prologue
    .line 691
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 692
    .local v8, "dialog_id":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    move/from16 v22, v0

    if-eqz v22, :cond_5

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    .line 693
    .local v6, "chat_id":I
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v11, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 694
    .local v11, "from_id":I
    if-nez v11, :cond_7

    .line 695
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v22

    if-nez v22, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v22

    if-gez v22, :cond_6

    .line 696
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v11, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 704
    :cond_1
    :goto_1
    const-wide/16 v22, 0x0

    cmp-long v22, v8, v22

    if-nez v22, :cond_2

    .line 705
    if-eqz v6, :cond_8

    .line 706
    neg-int v0, v6

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v8, v0

    .line 712
    :cond_2
    :goto_2
    const/4 v14, 0x0

    .line 713
    .local v14, "name":Ljava/lang/String;
    if-lez v11, :cond_9

    .line 714
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v22

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v21

    .line 715
    .local v21, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v21, :cond_3

    .line 716
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v14

    .line 725
    .end local v21    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_3
    :goto_3
    if-nez v14, :cond_a

    .line 726
    const/4 v13, 0x0

    .line 1077
    :cond_4
    :goto_4
    return-object v13

    .line 692
    .end local v6    # "chat_id":I
    .end local v11    # "from_id":I
    .end local v14    # "name":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    goto :goto_0

    .line 698
    .restart local v6    # "chat_id":I
    .restart local v11    # "from_id":I
    :cond_6
    neg-int v11, v6

    goto :goto_1

    .line 700
    :cond_7
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v22

    move/from16 v0, v22

    if-ne v11, v0, :cond_1

    .line 701
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v11, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    goto :goto_1

    .line 707
    :cond_8
    if-eqz v11, :cond_2

    .line 708
    int-to-long v8, v11

    goto :goto_2

    .line 719
    .restart local v14    # "name":Ljava/lang/String;
    :cond_9
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v22

    neg-int v0, v11

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    .line 720
    .local v5, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v5, :cond_3

    .line 721
    iget-object v14, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_3

    .line 728
    .end local v5    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_a
    const/4 v5, 0x0

    .line 729
    .restart local v5    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v6, :cond_b

    .line 730
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v22

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    .line 731
    if-nez v5, :cond_b

    .line 732
    const/4 v13, 0x0

    goto :goto_4

    .line 736
    :cond_b
    const/4 v13, 0x0

    .line 737
    .local v13, "msg":Ljava/lang/String;
    long-to-int v0, v8

    move/from16 v22, v0

    if-eqz v22, :cond_c

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v22

    if-nez v22, :cond_c

    sget-boolean v22, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    if-eqz v22, :cond_e

    .line 738
    :cond_c
    const-string/jumbo v22, "YouHaveNewMessage"

    const v23, 0x7f07051e

    invoke-static/range {v22 .. v23}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 1073
    :cond_d
    :goto_5
    sget-object v22, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v23, "mainconfig"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 1074
    .local v18, "preferences":Landroid/content/SharedPreferences;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "hide_"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 1075
    const-string/jumbo v22, "ShowNewHiddenMessage"

    const v23, 0x7f0705ba

    invoke-static/range {v22 .. v23}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 740
    .end local v18    # "preferences":Landroid/content/SharedPreferences;
    :cond_e
    if-nez v6, :cond_20

    if-eqz v11, :cond_20

    .line 741
    sget-object v22, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v23, "Notifications"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 742
    .restart local v18    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v22, "EnablePreviewAll"

    const/16 v23, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    if-eqz v22, :cond_1f

    .line 743
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move/from16 v22, v0

    if-eqz v22, :cond_11

    .line 744
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserJoined;

    move/from16 v22, v0

    if-eqz v22, :cond_f

    .line 745
    const-string/jumbo v22, "NotificationContactJoined"

    const v23, 0x7f07036b

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 746
    :cond_f
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserUpdatedPhoto;

    move/from16 v22, v0

    if-eqz v22, :cond_10

    .line 747
    const-string/jumbo v22, "NotificationContactNewPhoto"

    const v23, 0x7f07036c

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 748
    :cond_10
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionLoginUnknownLocation;

    move/from16 v22, v0

    if-eqz v22, :cond_d

    .line 749
    const-string/jumbo v22, "formatDateAtTime"

    const v23, 0x7f070536

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x3e8

    mul-long v28, v28, v30

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x3e8

    mul-long v28, v28, v30

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 750
    .local v7, "date":Ljava/lang/String;
    const-string/jumbo v22, "NotificationUnrecognizedDevice"

    const v23, 0x7f070390

    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    const/16 v25, 0x1

    aput-object v7, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    const/16 v25, 0x3

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->address:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 751
    goto/16 :goto_5

    .line 753
    .end local v7    # "date":Ljava/lang/String;
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v22

    if-eqz v22, :cond_14

    .line 754
    if-nez p2, :cond_13

    .line 755
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_12

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-eqz v22, :cond_12

    .line 756
    const-string/jumbo v22, "NotificationMessageText"

    const v23, 0x7f07038d

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 758
    :cond_12
    const-string/jumbo v22, "NotificationMessageNoText"

    const v23, 0x7f070389

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 761
    :cond_13
    const-string/jumbo v22, "NotificationMessageNoText"

    const v23, 0x7f070389

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 763
    :cond_14
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    move/from16 v22, v0

    if-eqz v22, :cond_15

    .line 764
    const-string/jumbo v22, "NotificationMessagePhoto"

    const v23, 0x7f07038a

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 765
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v22

    if-eqz v22, :cond_16

    .line 766
    const-string/jumbo v22, "NotificationMessageVideo"

    const v23, 0x7f07038e

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 767
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v22

    if-eqz v22, :cond_17

    .line 768
    const-string/jumbo v22, "NotificationMessageAudio"

    const v23, 0x7f070377

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 769
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v22

    if-eqz v22, :cond_18

    .line 770
    const-string/jumbo v22, "NotificationMessageMusic"

    const v23, 0x7f070388

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 771
    :cond_18
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    move/from16 v22, v0

    if-eqz v22, :cond_19

    .line 772
    const-string/jumbo v22, "NotificationMessageContact"

    const v23, 0x7f070378

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 773
    :cond_19
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    move/from16 v22, v0

    if-nez v22, :cond_1a

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    move/from16 v22, v0

    if-eqz v22, :cond_1b

    .line 774
    :cond_1a
    const-string/jumbo v22, "NotificationMessageMap"

    const v23, 0x7f070387

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 775
    :cond_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    move/from16 v22, v0

    if-eqz v22, :cond_d

    .line 776
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v22

    if-eqz v22, :cond_1d

    .line 777
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v10

    .line 778
    .local v10, "emoji":Ljava/lang/String;
    if-eqz v10, :cond_1c

    .line 779
    const-string/jumbo v22, "NotificationMessageStickerEmoji"

    const v23, 0x7f07038c

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    aput-object v10, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 781
    :cond_1c
    const-string/jumbo v22, "NotificationMessageSticker"

    const v23, 0x7f07038b

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 783
    .end local v10    # "emoji":Ljava/lang/String;
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v22

    if-eqz v22, :cond_1e

    .line 784
    const-string/jumbo v22, "NotificationMessageGif"

    const v23, 0x7f07037a

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 786
    :cond_1e
    const-string/jumbo v22, "NotificationMessageDocument"

    const v23, 0x7f070379

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 791
    :cond_1f
    const-string/jumbo v22, "NotificationMessageNoText"

    const v23, 0x7f070389

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 793
    .end local v18    # "preferences":Landroid/content/SharedPreferences;
    :cond_20
    if-eqz v6, :cond_d

    .line 794
    sget-object v22, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v23, "Notifications"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 795
    .restart local v18    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v22, "EnablePreviewGroup"

    const/16 v23, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    if-eqz v22, :cond_87

    .line 796
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move/from16 v22, v0

    if-eqz v22, :cond_60

    .line 797
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;

    move/from16 v22, v0

    if-eqz v22, :cond_2b

    .line 798
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    move/from16 v19, v0

    .line 799
    .local v19, "singleUserId":I
    if-nez v19, :cond_21

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_21

    .line 800
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 802
    :cond_21
    if-eqz v19, :cond_27

    .line 803
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v22, v0

    if-eqz v22, :cond_22

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMegagroup()Z

    move-result v22

    if-nez v22, :cond_22

    .line 804
    const-string/jumbo v22, "ChannelAddedByNotification"

    const v23, 0x7f070105

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 806
    :cond_22
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v22

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_23

    .line 807
    const-string/jumbo v22, "NotificationInvitedToGroup"

    const v23, 0x7f070375

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 809
    :cond_23
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v22

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v20

    .line 810
    .local v20, "u2":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v20, :cond_24

    .line 811
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 813
    :cond_24
    move-object/from16 v0, v20

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v11, v0, :cond_26

    .line 814
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMegagroup()Z

    move-result v22

    if-eqz v22, :cond_25

    .line 815
    const-string/jumbo v22, "NotificationGroupAddSelfMega"

    const v23, 0x7f070371

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 817
    :cond_25
    const-string/jumbo v22, "NotificationGroupAddSelf"

    const v23, 0x7f070370

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 820
    :cond_26
    const-string/jumbo v22, "NotificationGroupAddMember"

    const v23, 0x7f07036f

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 825
    .end local v20    # "u2":Lorg/telegram/tgnet/TLRPC$User;
    :cond_27
    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v22, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 826
    .local v16, "names":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v4, v0, :cond_2a

    .line 827
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v21

    .line 828
    .restart local v21    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v21, :cond_29

    .line 829
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v15

    .line 830
    .local v15, "name2":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    if-eqz v22, :cond_28

    .line 831
    const-string/jumbo v22, ", "

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    :cond_28
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    .end local v15    # "name2":Ljava/lang/String;
    :cond_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 836
    .end local v21    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2a
    const-string/jumbo v22, "NotificationGroupAddMember"

    const v23, 0x7f07036f

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 838
    .end local v4    # "a":I
    .end local v16    # "names":Ljava/lang/StringBuilder;
    .end local v19    # "singleUserId":I
    :cond_2b
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByLink;

    move/from16 v22, v0

    if-eqz v22, :cond_2c

    .line 839
    const-string/jumbo v22, "NotificationInvitedToGroupByLink"

    const v23, 0x7f070376

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 840
    :cond_2c
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditTitle;

    move/from16 v22, v0

    if-eqz v22, :cond_2d

    .line 841
    const-string/jumbo v22, "NotificationEditedGroupName"

    const v23, 0x7f07036d

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 842
    :cond_2d
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditPhoto;

    move/from16 v22, v0

    if-nez v22, :cond_2e

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeletePhoto;

    move/from16 v22, v0

    if-eqz v22, :cond_30

    .line 843
    :cond_2e
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v22, v0

    if-eqz v22, :cond_2f

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMegagroup()Z

    move-result v22

    if-nez v22, :cond_2f

    .line 844
    const-string/jumbo v22, "ChannelPhotoEditNotification"

    const v23, 0x7f070140

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 846
    :cond_2f
    const-string/jumbo v22, "NotificationEditedGroupPhoto"

    const v23, 0x7f07036e

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 848
    :cond_30
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser;

    move/from16 v22, v0

    if-eqz v22, :cond_34

    .line 849
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    move/from16 v22, v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_31

    .line 850
    const-string/jumbo v22, "NotificationGroupKickYou"

    const v23, 0x7f070373

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 851
    :cond_31
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v0, v11, :cond_32

    .line 852
    const-string/jumbo v22, "NotificationGroupLeftMember"

    const v23, 0x7f070374

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 854
    :cond_32
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v22

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v20

    .line 855
    .restart local v20    # "u2":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v20, :cond_33

    .line 856
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 858
    :cond_33
    const-string/jumbo v22, "NotificationGroupKickMember"

    const v23, 0x7f070372

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 859
    goto/16 :goto_5

    .line 860
    .end local v20    # "u2":Lorg/telegram/tgnet/TLRPC$User;
    :cond_34
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatCreate;

    move/from16 v22, v0

    if-eqz v22, :cond_35

    .line 861
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 862
    :cond_35
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;

    move/from16 v22, v0

    if-eqz v22, :cond_36

    .line 863
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 864
    :cond_36
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo;

    move/from16 v22, v0

    if-eqz v22, :cond_37

    .line 865
    const-string/jumbo v22, "ActionMigrateFromGroupNotify"

    const v23, 0x7f070056

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 866
    :cond_37
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelMigrateFrom;

    move/from16 v22, v0

    if-eqz v22, :cond_38

    .line 867
    const-string/jumbo v22, "ActionMigrateFromGroupNotify"

    const v23, 0x7f070056

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 868
    :cond_38
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;

    move/from16 v22, v0

    if-eqz v22, :cond_d

    .line 869
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v22, v0

    if-nez v22, :cond_3b

    .line 870
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v22

    if-eqz v22, :cond_39

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3a

    .line 871
    :cond_39
    const-string/jumbo v22, "NotificationActionPinnedNoText"

    const v23, 0x7f07035d

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 873
    :cond_3a
    const-string/jumbo v22, "NotificationActionPinnedNoTextChannel"

    const v23, 0x7f07035e

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 876
    :cond_3b
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v17, v0

    .line 877
    .local v17, "object":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v22

    if-eqz v22, :cond_3e

    .line 878
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v22

    if-eqz v22, :cond_3c

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3d

    .line 879
    :cond_3c
    const-string/jumbo v22, "NotificationActionPinnedMusic"

    const v23, 0x7f07035b

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 881
    :cond_3d
    const-string/jumbo v22, "NotificationActionPinnedMusicChannel"

    const v23, 0x7f07035c

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 883
    :cond_3e
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v22

    if-eqz v22, :cond_41

    .line 884
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v22

    if-eqz v22, :cond_3f

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v22, v0

    if-eqz v22, :cond_40

    .line 885
    :cond_3f
    const-string/jumbo v22, "NotificationActionPinnedVideo"

    const v23, 0x7f070367

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 887
    :cond_40
    const-string/jumbo v22, "NotificationActionPinnedVideoChannel"

    const v23, 0x7f070368

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 889
    :cond_41
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v22

    if-eqz v22, :cond_44

    .line 890
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v22

    if-eqz v22, :cond_42

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v22, v0

    if-eqz v22, :cond_43

    .line 891
    :cond_42
    const-string/jumbo v22, "NotificationActionPinnedGif"

    const v23, 0x7f070359

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 893
    :cond_43
    const-string/jumbo v22, "NotificationActionPinnedGifChannel"

    const v23, 0x7f07035a

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 895
    :cond_44
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v22

    if-eqz v22, :cond_47

    .line 896
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v22

    if-eqz v22, :cond_45

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v22, v0

    if-eqz v22, :cond_46

    .line 897
    :cond_45
    const-string/jumbo v22, "NotificationActionPinnedVoice"

    const v23, 0x7f070369

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 899
    :cond_46
    const-string/jumbo v22, "NotificationActionPinnedVoiceChannel"

    const v23, 0x7f07036a

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 901
    :cond_47
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v22

    if-eqz v22, :cond_4d

    .line 902
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v10

    .line 903
    .restart local v10    # "emoji":Ljava/lang/String;
    if-eqz v10, :cond_4a

    .line 904
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v22

    if-eqz v22, :cond_48

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v22, v0

    if-eqz v22, :cond_49

    .line 905
    :cond_48
    const-string/jumbo v22, "NotificationActionPinnedStickerEmoji"

    const v23, 0x7f070363

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    const/16 v25, 0x2

    aput-object v10, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 907
    :cond_49
    const-string/jumbo v22, "NotificationActionPinnedStickerEmojiChannel"

    const v23, 0x7f070364

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    const/16 v25, 0x1

    aput-object v10, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 910
    :cond_4a
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v22

    if-eqz v22, :cond_4b

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4c

    .line 911
    :cond_4b
    const-string/jumbo v22, "NotificationActionPinnedSticker"

    const v23, 0x7f070361

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 913
    :cond_4c
    const-string/jumbo v22, "NotificationActionPinnedStickerChannel"

    const v23, 0x7f070362

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 916
    .end local v10    # "emoji":Ljava/lang/String;
    :cond_4d
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    move/from16 v22, v0

    if-eqz v22, :cond_50

    .line 917
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v22

    if-eqz v22, :cond_4e

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4f

    .line 918
    :cond_4e
    const-string/jumbo v22, "NotificationActionPinnedFile"

    const v23, 0x7f070355

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 920
    :cond_4f
    const-string/jumbo v22, "NotificationActionPinnedFileChannel"

    const v23, 0x7f070356

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 922
    :cond_50
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    move/from16 v22, v0

    if-eqz v22, :cond_53

    .line 923
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v22

    if-eqz v22, :cond_51

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v22, v0

    if-eqz v22, :cond_52

    .line 924
    :cond_51
    const-string/jumbo v22, "NotificationActionPinnedGeo"

    const v23, 0x7f070357

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 926
    :cond_52
    const-string/jumbo v22, "NotificationActionPinnedGeoChannel"

    const v23, 0x7f070358

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 928
    :cond_53
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    move/from16 v22, v0

    if-eqz v22, :cond_56

    .line 929
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v22

    if-eqz v22, :cond_54

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v22, v0

    if-eqz v22, :cond_55

    .line 930
    :cond_54
    const-string/jumbo v22, "NotificationActionPinnedContact"

    const v23, 0x7f070353

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 932
    :cond_55
    const-string/jumbo v22, "NotificationActionPinnedContactChannel"

    const v23, 0x7f070354

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 934
    :cond_56
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    move/from16 v22, v0

    if-eqz v22, :cond_59

    .line 935
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v22

    if-eqz v22, :cond_57

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v22, v0

    if-eqz v22, :cond_58

    .line 936
    :cond_57
    const-string/jumbo v22, "NotificationActionPinnedPhoto"

    const v23, 0x7f07035f

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 938
    :cond_58
    const-string/jumbo v22, "NotificationActionPinnedPhotoChannel"

    const v23, 0x7f070360

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 940
    :cond_59
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5d

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v22

    if-lez v22, :cond_5d

    .line 941
    move-object/from16 v0, v17

    iget-object v12, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 942
    .local v12, "message":Ljava/lang/CharSequence;
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v22

    const/16 v23, 0x14

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_5a

    .line 943
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v23, 0x0

    const/16 v24, 0x14

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v12, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "..."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 945
    :cond_5a
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v22

    if-eqz v22, :cond_5b

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5c

    .line 946
    :cond_5b
    const-string/jumbo v22, "NotificationActionPinnedText"

    const v23, 0x7f070365

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    aput-object v12, v24, v25

    const/16 v25, 0x2

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 948
    :cond_5c
    const-string/jumbo v22, "NotificationActionPinnedTextChannel"

    const v23, 0x7f070366

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    const/16 v25, 0x1

    aput-object v12, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 951
    .end local v12    # "message":Ljava/lang/CharSequence;
    :cond_5d
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v22

    if-eqz v22, :cond_5e

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5f

    .line 952
    :cond_5e
    const-string/jumbo v22, "NotificationActionPinnedNoText"

    const v23, 0x7f07035d

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 954
    :cond_5f
    const-string/jumbo v22, "NotificationActionPinnedNoTextChannel"

    const v23, 0x7f07035e

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 960
    .end local v17    # "object":Lorg/telegram/messenger/MessageObject;
    :cond_60
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v22

    if-eqz v22, :cond_7a

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v22, v0

    if-nez v22, :cond_7a

    .line 961
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6d

    .line 962
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v22

    if-eqz v22, :cond_62

    .line 963
    if-nez p2, :cond_61

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_61

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-eqz v22, :cond_61

    .line 964
    const-string/jumbo v22, "NotificationMessageGroupText"

    const v23, 0x7f070385

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 966
    :cond_61
    const-string/jumbo v22, "ChannelMessageNoText"

    const v23, 0x7f070137

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 968
    :cond_62
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    move/from16 v22, v0

    if-eqz v22, :cond_63

    .line 969
    const-string/jumbo v22, "ChannelMessagePhoto"

    const v23, 0x7f070138

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 970
    :cond_63
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v22

    if-eqz v22, :cond_64

    .line 971
    const-string/jumbo v22, "ChannelMessageVideo"

    const v23, 0x7f07013b

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 972
    :cond_64
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v22

    if-eqz v22, :cond_65

    .line 973
    const-string/jumbo v22, "ChannelMessageAudio"

    const v23, 0x7f070126

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 974
    :cond_65
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v22

    if-eqz v22, :cond_66

    .line 975
    const-string/jumbo v22, "ChannelMessageMusic"

    const v23, 0x7f070136

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 976
    :cond_66
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    move/from16 v22, v0

    if-eqz v22, :cond_67

    .line 977
    const-string/jumbo v22, "ChannelMessageContact"

    const v23, 0x7f070127

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 978
    :cond_67
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    move/from16 v22, v0

    if-nez v22, :cond_68

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    move/from16 v22, v0

    if-eqz v22, :cond_69

    .line 979
    :cond_68
    const-string/jumbo v22, "ChannelMessageMap"

    const v23, 0x7f070135

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 980
    :cond_69
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    move/from16 v22, v0

    if-eqz v22, :cond_d

    .line 981
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v22

    if-eqz v22, :cond_6b

    .line 982
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v10

    .line 983
    .restart local v10    # "emoji":Ljava/lang/String;
    if-eqz v10, :cond_6a

    .line 984
    const-string/jumbo v22, "ChannelMessageStickerEmoji"

    const v23, 0x7f07013a

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    const/16 v25, 0x2

    aput-object v10, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 986
    :cond_6a
    const-string/jumbo v22, "ChannelMessageSticker"

    const v23, 0x7f070139

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 988
    .end local v10    # "emoji":Ljava/lang/String;
    :cond_6b
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v22

    if-eqz v22, :cond_6c

    .line 989
    const-string/jumbo v22, "ChannelMessageGIF"

    const v23, 0x7f070129

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 991
    :cond_6c
    const-string/jumbo v22, "ChannelMessageDocument"

    const v23, 0x7f070128

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 995
    :cond_6d
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v22

    if-eqz v22, :cond_6f

    .line 996
    if-nez p2, :cond_6e

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6e

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-eqz v22, :cond_6e

    .line 997
    const-string/jumbo v22, "NotificationMessageGroupText"

    const v23, 0x7f070385

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 999
    :cond_6e
    const-string/jumbo v22, "ChannelMessageGroupNoText"

    const v23, 0x7f070130

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 1001
    :cond_6f
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    move/from16 v22, v0

    if-eqz v22, :cond_70

    .line 1002
    const-string/jumbo v22, "ChannelMessageGroupPhoto"

    const v23, 0x7f070131

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 1003
    :cond_70
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v22

    if-eqz v22, :cond_71

    .line 1004
    const-string/jumbo v22, "ChannelMessageGroupVideo"

    const v23, 0x7f070134

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 1005
    :cond_71
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v22

    if-eqz v22, :cond_72

    .line 1006
    const-string/jumbo v22, "ChannelMessageGroupAudio"

    const v23, 0x7f07012a

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 1007
    :cond_72
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v22

    if-eqz v22, :cond_73

    .line 1008
    const-string/jumbo v22, "ChannelMessageGroupMusic"

    const v23, 0x7f07012f

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 1009
    :cond_73
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    move/from16 v22, v0

    if-eqz v22, :cond_74

    .line 1010
    const-string/jumbo v22, "ChannelMessageGroupContact"

    const v23, 0x7f07012b

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 1011
    :cond_74
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    move/from16 v22, v0

    if-nez v22, :cond_75

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    move/from16 v22, v0

    if-eqz v22, :cond_76

    .line 1012
    :cond_75
    const-string/jumbo v22, "ChannelMessageGroupMap"

    const v23, 0x7f07012e

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 1013
    :cond_76
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    move/from16 v22, v0

    if-eqz v22, :cond_d

    .line 1014
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v22

    if-eqz v22, :cond_78

    .line 1015
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v10

    .line 1016
    .restart local v10    # "emoji":Ljava/lang/String;
    if-eqz v10, :cond_77

    .line 1017
    const-string/jumbo v22, "ChannelMessageGroupStickerEmoji"

    const v23, 0x7f070133

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    const/16 v25, 0x2

    aput-object v10, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 1019
    :cond_77
    const-string/jumbo v22, "ChannelMessageGroupSticker"

    const v23, 0x7f070132

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 1021
    .end local v10    # "emoji":Ljava/lang/String;
    :cond_78
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v22

    if-eqz v22, :cond_79

    .line 1022
    const-string/jumbo v22, "ChannelMessageGroupGif"

    const v23, 0x7f07012d

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 1024
    :cond_79
    const-string/jumbo v22, "ChannelMessageGroupDocument"

    const v23, 0x7f07012c

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 1029
    :cond_7a
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v22

    if-eqz v22, :cond_7c

    .line 1030
    if-nez p2, :cond_7b

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7b

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-eqz v22, :cond_7b

    .line 1031
    const-string/jumbo v22, "NotificationMessageGroupText"

    const v23, 0x7f070385

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 1033
    :cond_7b
    const-string/jumbo v22, "NotificationMessageGroupNoText"

    const v23, 0x7f070381

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 1035
    :cond_7c
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    move/from16 v22, v0

    if-eqz v22, :cond_7d

    .line 1036
    const-string/jumbo v22, "NotificationMessageGroupPhoto"

    const v23, 0x7f070382

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 1037
    :cond_7d
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v22

    if-eqz v22, :cond_7e

    .line 1038
    const-string/jumbo v22, "NotificationMessageGroupVideo"

    const v23, 0x7f070386

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 1039
    :cond_7e
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v22

    if-eqz v22, :cond_7f

    .line 1040
    const-string/jumbo v22, "NotificationMessageGroupAudio"

    const v23, 0x7f07037b

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 1041
    :cond_7f
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v22

    if-eqz v22, :cond_80

    .line 1042
    const-string/jumbo v22, "NotificationMessageGroupMusic"

    const v23, 0x7f070380

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 1043
    :cond_80
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    move/from16 v22, v0

    if-eqz v22, :cond_81

    .line 1044
    const-string/jumbo v22, "NotificationMessageGroupContact"

    const v23, 0x7f07037c

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 1045
    :cond_81
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    move/from16 v22, v0

    if-nez v22, :cond_82

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    move/from16 v22, v0

    if-eqz v22, :cond_83

    .line 1046
    :cond_82
    const-string/jumbo v22, "NotificationMessageGroupMap"

    const v23, 0x7f07037f

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 1047
    :cond_83
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    move/from16 v22, v0

    if-eqz v22, :cond_d

    .line 1048
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v22

    if-eqz v22, :cond_85

    .line 1049
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v10

    .line 1050
    .restart local v10    # "emoji":Ljava/lang/String;
    if-eqz v10, :cond_84

    .line 1051
    const-string/jumbo v22, "NotificationMessageGroupStickerEmoji"

    const v23, 0x7f070384

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    const/16 v25, 0x2

    aput-object v10, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 1053
    :cond_84
    const-string/jumbo v22, "NotificationMessageGroupSticker"

    const v23, 0x7f070383

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 1055
    .end local v10    # "emoji":Ljava/lang/String;
    :cond_85
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v22

    if-eqz v22, :cond_86

    .line 1056
    const-string/jumbo v22, "NotificationMessageGroupGif"

    const v23, 0x7f07037e

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 1058
    :cond_86
    const-string/jumbo v22, "NotificationMessageGroupDocument"

    const v23, 0x7f07037d

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 1064
    :cond_87
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v22

    if-eqz v22, :cond_88

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v22, v0

    if-nez v22, :cond_88

    .line 1065
    const-string/jumbo v22, "ChannelMessageNoText"

    const v23, 0x7f070137

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 1067
    :cond_88
    const-string/jumbo v22, "NotificationMessageGroupNoText"

    const v23, 0x7f070381

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5
.end method

.method private isPersonalMessage(Lorg/telegram/messenger/MessageObject;)Z
    .locals 1
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 1116
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private playInChatSound()V
    .locals 6

    .prologue
    .line 1193
    iget-boolean v3, p0, Lorg/telegram/messenger/NotificationsController;->inChatSoundEnabled:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaController;->isRecordingAudio()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1243
    :cond_0
    :goto_0
    return-void

    .line 1197
    :cond_1
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    .line 1205
    :goto_1
    :try_start_1
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "Notifications"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1206
    .local v2, "preferences":Landroid/content/SharedPreferences;
    iget-wide v4, p0, Lorg/telegram/messenger/NotificationsController;->opened_dialog_id:J

    invoke-direct {p0, v2, v4, v5}, Lorg/telegram/messenger/NotificationsController;->getNotifyOverride(Landroid/content/SharedPreferences;J)I

    move-result v1

    .line 1207
    .local v1, "notifyOverride":I
    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    .line 1210
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/messenger/NotificationsController$12;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/NotificationsController$12;-><init>(Lorg/telegram/messenger/NotificationsController;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1240
    .end local v1    # "notifyOverride":I
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 1241
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1200
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1201
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private scheduleNotificationDelay(Z)V
    .locals 6
    .param p1, "onlineReason"    # Z

    .prologue
    .line 1247
    :try_start_0
    const-string/jumbo v1, "tmessages"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "delay notification start, onlineReason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->notificationDelayWakelock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1249
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->notificationDelayRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1250
    iget-object v2, p0, Lorg/telegram/messenger/NotificationsController;->notificationDelayRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    const/16 v1, 0xbb8

    :goto_0
    int-to-long v4, v1

    invoke-static {v2, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1255
    :goto_1
    return-void

    .line 1250
    :cond_0
    const/16 v1, 0x3e8

    goto :goto_0

    .line 1251
    :catch_0
    move-exception v0

    .line 1252
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1253
    iget-boolean v1, p0, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    invoke-direct {p0, v1}, Lorg/telegram/messenger/NotificationsController;->showOrUpdateNotification(Z)V

    goto :goto_1
.end method

.method private scheduleNotificationRepeat()V
    .locals 10

    .prologue
    .line 1082
    :try_start_0
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v5, 0x0

    new-instance v6, Landroid/content/Intent;

    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v8, Lorg/telegram/messenger/NotificationRepeat;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1083
    .local v2, "pintent":Landroid/app/PendingIntent;
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "Notifications"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1084
    .local v3, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "repeat_messages"

    const/16 v5, 0x3c

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1085
    .local v1, "minutes":I
    if-lez v1, :cond_0

    iget v4, p0, Lorg/telegram/messenger/NotificationsController;->personal_count:I

    if-lez v4, :cond_0

    .line 1086
    iget-object v4, p0, Lorg/telegram/messenger/NotificationsController;->alarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    mul-int/lit8 v8, v1, 0x3c

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1093
    .end local v1    # "minutes":I
    .end local v2    # "pintent":Landroid/app/PendingIntent;
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 1088
    .restart local v1    # "minutes":I
    .restart local v2    # "pintent":Landroid/app/PendingIntent;
    .restart local v3    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/NotificationsController;->alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v4, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1090
    .end local v1    # "minutes":I
    .end local v2    # "pintent":Landroid/app/PendingIntent;
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 1091
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "tmessages"

    invoke-static {v4, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setBadge(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 647
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$10;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/NotificationsController$10;-><init>(Lorg/telegram/messenger/NotificationsController;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 688
    return-void
.end method

.method private showExtraNotifications(Landroid/support/v4/app/NotificationCompat$Builder;Z)V
    .locals 48
    .param p1, "notificationBuilder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p2, "notifyAboutLast"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 1615
    sget v43, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v44, 0x12

    move/from16 v0, v43

    move/from16 v1, v44

    if-ge v0, v1, :cond_1

    .line 1799
    :cond_0
    return-void

    .line 1619
    :cond_1
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .line 1620
    .local v37, "sortedDialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 1621
    .local v21, "messagesByDialogs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v0, v43

    if-ge v4, v0, :cond_4

    .line 1622
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/telegram/messenger/MessageObject;

    .line 1623
    .local v19, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v19 .. v19}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v10

    .line 1624
    .local v10, "dialog_id":J
    long-to-int v0, v10

    move/from16 v43, v0

    if-nez v43, :cond_2

    .line 1621
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1628
    :cond_2
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    move-object/from16 v0, v21

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1629
    .local v5, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v5, :cond_3

    .line 1630
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1631
    .restart local v5    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    move-object/from16 v0, v21

    move-object/from16 v1, v43

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1632
    const/16 v43, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v44

    move-object/from16 v0, v37

    move/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1634
    :cond_3
    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1637
    .end local v5    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v10    # "dialog_id":J
    .end local v19    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_4
    new-instance v30, Ljava/util/HashMap;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashMap;-><init>()V

    .line 1638
    .local v30, "oldIdsWear":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Ljava/util/HashMap;

    move-object/from16 v43, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1639
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Ljava/util/HashMap;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/HashMap;->clear()V

    .line 1641
    new-instance v29, Ljava/util/HashMap;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashMap;-><init>()V

    .line 1642
    .local v29, "oldIdsAuto":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->autoNotificationsIds:Ljava/util/HashMap;

    move-object/from16 v43, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1643
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->autoNotificationsIds:Ljava/util/HashMap;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/HashMap;->clear()V

    .line 1645
    const/4 v6, 0x0

    .local v6, "b":I
    :goto_2
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v0, v43

    if-ge v6, v0, :cond_1a

    .line 1646
    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/Long;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 1647
    .restart local v10    # "dialog_id":J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    move-object/from16 v0, v21

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    .line 1648
    .local v20, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/16 v43, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lorg/telegram/messenger/MessageObject;

    invoke-virtual/range {v43 .. v43}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v17

    .line 1649
    .local v17, "max_id":I
    const/16 v43, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v43

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v16, v0

    .line 1650
    .local v16, "max_date":I
    const/4 v8, 0x0

    .line 1651
    .local v8, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    const/16 v40, 0x0

    .line 1653
    .local v40, "user":Lorg/telegram/tgnet/TLRPC$User;
    const-wide/16 v44, 0x0

    cmp-long v43, v10, v44

    if-lez v43, :cond_6

    .line 1654
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v43

    long-to-int v0, v10

    move/from16 v44, v0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v40

    .line 1655
    if-nez v40, :cond_7

    .line 1645
    :cond_5
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1659
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v43

    long-to-int v0, v10

    move/from16 v44, v0

    move/from16 v0, v44

    neg-int v0, v0

    move/from16 v44, v0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    .line 1660
    if-eqz v8, :cond_5

    .line 1664
    :cond_7
    const/16 v31, 0x0

    .line 1665
    .local v31, "photoPath":Lorg/telegram/tgnet/TLRPC$FileLocation;
    const/16 v43, 0x0

    invoke-static/range {v43 .. v43}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v43

    if-nez v43, :cond_8

    sget-boolean v43, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    if-eqz v43, :cond_b

    .line 1666
    :cond_8
    const-string/jumbo v43, "AppName"

    const v44, 0x7f07009a

    invoke-static/range {v43 .. v44}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .line 1684
    .local v26, "name":Ljava/lang/String;
    :cond_9
    :goto_4
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    move-object/from16 v0, v30

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    .line 1685
    .local v28, "notificationIdWear":Ljava/lang/Integer;
    if-nez v28, :cond_e

    .line 1686
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/NotificationsController;->wearNotificationId:I

    move/from16 v43, v0

    add-int/lit8 v44, v43, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/NotificationsController;->wearNotificationId:I

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    .line 1691
    :goto_5
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    move-object/from16 v0, v29

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    .line 1692
    .local v27, "notificationIdAuto":Ljava/lang/Integer;
    if-nez v27, :cond_f

    .line 1693
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/NotificationsController;->autoNotificationId:I

    move/from16 v43, v0

    add-int/lit8 v44, v43, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/NotificationsController;->autoNotificationId:I

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    .line 1698
    :goto_6
    new-instance v43, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;

    move-object/from16 v0, v43

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v44, v0

    const-wide/16 v46, 0x3e8

    mul-long v44, v44, v46

    invoke-virtual/range {v43 .. v45}, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->setLatestTimestamp(J)Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;

    move-result-object v39

    .line 1700
    .local v39, "unreadConvBuilder":Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    new-instance v22, Landroid/content/Intent;

    invoke-direct/range {v22 .. v22}, Landroid/content/Intent;-><init>()V

    .line 1701
    .local v22, "msgHeardIntent":Landroid/content/Intent;
    const/16 v43, 0x20

    move-object/from16 v0, v22

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1702
    const-string/jumbo v43, "org.telegram.messenger.ACTION_MESSAGE_HEARD"

    move-object/from16 v0, v22

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1703
    const-string/jumbo v43, "dialog_id"

    move-object/from16 v0, v22

    move-object/from16 v1, v43

    invoke-virtual {v0, v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1704
    const-string/jumbo v43, "max_id"

    move-object/from16 v0, v22

    move-object/from16 v1, v43

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1705
    sget-object v43, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v44

    const/high16 v45, 0x8000000

    move-object/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v2, v22

    move/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v23

    .line 1706
    .local v23, "msgHeardPendingIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, v39

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->setReadPendingIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;

    .line 1708
    const/16 v41, 0x0

    .line 1710
    .local v41, "wearReplyAction":Landroid/support/v4/app/NotificationCompat$Action;
    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v43

    if-nez v43, :cond_a

    const/16 v43, 0x0

    invoke-static/range {v43 .. v43}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v43

    if-nez v43, :cond_a

    sget-boolean v43, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    if-nez v43, :cond_a

    .line 1711
    new-instance v24, Landroid/content/Intent;

    invoke-direct/range {v24 .. v24}, Landroid/content/Intent;-><init>()V

    .line 1712
    .local v24, "msgReplyIntent":Landroid/content/Intent;
    const/16 v43, 0x20

    move-object/from16 v0, v24

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1713
    const-string/jumbo v43, "org.telegram.messenger.ACTION_MESSAGE_REPLY"

    move-object/from16 v0, v24

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1714
    const-string/jumbo v43, "dialog_id"

    move-object/from16 v0, v24

    move-object/from16 v1, v43

    invoke-virtual {v0, v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1715
    const-string/jumbo v43, "max_id"

    move-object/from16 v0, v24

    move-object/from16 v1, v43

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1716
    sget-object v43, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v44

    const/high16 v45, 0x8000000

    move-object/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v2, v24

    move/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v25

    .line 1717
    .local v25, "msgReplyPendingIntent":Landroid/app/PendingIntent;
    new-instance v43, Landroid/support/v4/app/RemoteInput$Builder;

    const-string/jumbo v44, "extra_voice_reply"

    invoke-direct/range {v43 .. v44}, Landroid/support/v4/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v44, "Reply"

    const v45, 0x7f070406

    invoke-static/range {v44 .. v45}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Landroid/support/v4/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/RemoteInput$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/support/v4/app/RemoteInput$Builder;->build()Landroid/support/v4/app/RemoteInput;

    move-result-object v32

    .line 1718
    .local v32, "remoteInputAuto":Landroid/support/v4/app/RemoteInput;
    move-object/from16 v0, v39

    move-object/from16 v1, v25

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->setReplyAction(Landroid/app/PendingIntent;Landroid/support/v4/app/RemoteInput;)Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;

    .line 1720
    new-instance v34, Landroid/content/Intent;

    sget-object v43, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v44, Lorg/telegram/messenger/WearReplyReceiver;

    move-object/from16 v0, v34

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1721
    .local v34, "replyIntent":Landroid/content/Intent;
    const-string/jumbo v43, "dialog_id"

    move-object/from16 v0, v34

    move-object/from16 v1, v43

    invoke-virtual {v0, v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1722
    const-string/jumbo v43, "max_id"

    move-object/from16 v0, v34

    move-object/from16 v1, v43

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1723
    sget-object v43, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v44

    const/high16 v45, 0x8000000

    move-object/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v2, v34

    move/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v35

    .line 1724
    .local v35, "replyPendingIntent":Landroid/app/PendingIntent;
    new-instance v43, Landroid/support/v4/app/RemoteInput$Builder;

    const-string/jumbo v44, "extra_voice_reply"

    invoke-direct/range {v43 .. v44}, Landroid/support/v4/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v44, "Reply"

    const v45, 0x7f070406

    invoke-static/range {v44 .. v45}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Landroid/support/v4/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/RemoteInput$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/support/v4/app/RemoteInput$Builder;->build()Landroid/support/v4/app/RemoteInput;

    move-result-object v33

    .line 1726
    .local v33, "remoteInputWear":Landroid/support/v4/app/RemoteInput;
    if-eqz v8, :cond_10

    .line 1727
    const-string/jumbo v43, "ReplyToGroup"

    const v44, 0x7f070407

    const/16 v45, 0x1

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput-object v26, v45, v46

    invoke-static/range {v43 .. v45}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    .line 1731
    .local v36, "replyToString":Ljava/lang/String;
    :goto_7
    new-instance v43, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    const v44, 0x7f02016c

    move-object/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v2, v36

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->addRemoteInput(Landroid/support/v4/app/RemoteInput;)Landroid/support/v4/app/NotificationCompat$Action$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v41

    .line 1734
    .end local v24    # "msgReplyIntent":Landroid/content/Intent;
    .end local v25    # "msgReplyPendingIntent":Landroid/app/PendingIntent;
    .end local v32    # "remoteInputAuto":Landroid/support/v4/app/RemoteInput;
    .end local v33    # "remoteInputWear":Landroid/support/v4/app/RemoteInput;
    .end local v34    # "replyIntent":Landroid/content/Intent;
    .end local v35    # "replyPendingIntent":Landroid/app/PendingIntent;
    .end local v36    # "replyToString":Ljava/lang/String;
    :cond_a
    const-string/jumbo v38, ""

    .line 1735
    .local v38, "text":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v43

    add-int/lit8 v4, v43, -0x1

    :goto_8
    if-ltz v4, :cond_14

    .line 1736
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/telegram/messenger/MessageObject;

    .line 1737
    .restart local v19    # "messageObject":Lorg/telegram/messenger/MessageObject;
    const/16 v43, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/NotificationsController;->getStringForMessage(Lorg/telegram/messenger/MessageObject;Z)Ljava/lang/String;

    move-result-object v18

    .line 1738
    .local v18, "message":Ljava/lang/String;
    if-nez v18, :cond_11

    .line 1735
    :goto_9
    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    .line 1668
    .end local v18    # "message":Ljava/lang/String;
    .end local v19    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v22    # "msgHeardIntent":Landroid/content/Intent;
    .end local v23    # "msgHeardPendingIntent":Landroid/app/PendingIntent;
    .end local v26    # "name":Ljava/lang/String;
    .end local v27    # "notificationIdAuto":Ljava/lang/Integer;
    .end local v28    # "notificationIdWear":Ljava/lang/Integer;
    .end local v38    # "text":Ljava/lang/String;
    .end local v39    # "unreadConvBuilder":Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    .end local v41    # "wearReplyAction":Landroid/support/v4/app/NotificationCompat$Action;
    :cond_b
    if-eqz v8, :cond_c

    .line 1669
    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 1673
    .restart local v26    # "name":Ljava/lang/String;
    :goto_a
    if-eqz v8, :cond_d

    .line 1674
    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v43, v0

    if-eqz v43, :cond_9

    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v43, v0

    if-eqz v43, :cond_9

    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    move-wide/from16 v44, v0

    const-wide/16 v46, 0x0

    cmp-long v43, v44, v46

    if-eqz v43, :cond_9

    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    move/from16 v43, v0

    if-eqz v43, :cond_9

    .line 1675
    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v31, v0

    goto/16 :goto_4

    .line 1671
    .end local v26    # "name":Ljava/lang/String;
    :cond_c
    invoke-static/range {v40 .. v40}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v26

    .restart local v26    # "name":Ljava/lang/String;
    goto :goto_a

    .line 1678
    :cond_d
    move-object/from16 v0, v40

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v43, v0

    if-eqz v43, :cond_9

    move-object/from16 v0, v40

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v43, v0

    if-eqz v43, :cond_9

    move-object/from16 v0, v40

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    move-wide/from16 v44, v0

    const-wide/16 v46, 0x0

    cmp-long v43, v44, v46

    if-eqz v43, :cond_9

    move-object/from16 v0, v40

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    move/from16 v43, v0

    if-eqz v43, :cond_9

    .line 1679
    move-object/from16 v0, v40

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v31, v0

    goto/16 :goto_4

    .line 1688
    .restart local v28    # "notificationIdWear":Ljava/lang/Integer;
    :cond_e
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    move-object/from16 v0, v30

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 1695
    .restart local v27    # "notificationIdAuto":Ljava/lang/Integer;
    :cond_f
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    move-object/from16 v0, v29

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 1729
    .restart local v22    # "msgHeardIntent":Landroid/content/Intent;
    .restart local v23    # "msgHeardPendingIntent":Landroid/app/PendingIntent;
    .restart local v24    # "msgReplyIntent":Landroid/content/Intent;
    .restart local v25    # "msgReplyPendingIntent":Landroid/app/PendingIntent;
    .restart local v32    # "remoteInputAuto":Landroid/support/v4/app/RemoteInput;
    .restart local v33    # "remoteInputWear":Landroid/support/v4/app/RemoteInput;
    .restart local v34    # "replyIntent":Landroid/content/Intent;
    .restart local v35    # "replyPendingIntent":Landroid/app/PendingIntent;
    .restart local v39    # "unreadConvBuilder":Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    .restart local v41    # "wearReplyAction":Landroid/support/v4/app/NotificationCompat$Action;
    :cond_10
    const-string/jumbo v43, "ReplyToUser"

    const v44, 0x7f070408

    const/16 v45, 0x1

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput-object v26, v45, v46

    invoke-static/range {v43 .. v45}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    .restart local v36    # "replyToString":Ljava/lang/String;
    goto/16 :goto_7

    .line 1741
    .end local v24    # "msgReplyIntent":Landroid/content/Intent;
    .end local v25    # "msgReplyPendingIntent":Landroid/app/PendingIntent;
    .end local v32    # "remoteInputAuto":Landroid/support/v4/app/RemoteInput;
    .end local v33    # "remoteInputWear":Landroid/support/v4/app/RemoteInput;
    .end local v34    # "replyIntent":Landroid/content/Intent;
    .end local v35    # "replyPendingIntent":Landroid/app/PendingIntent;
    .end local v36    # "replyToString":Ljava/lang/String;
    .restart local v18    # "message":Ljava/lang/String;
    .restart local v19    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .restart local v38    # "text":Ljava/lang/String;
    :cond_11
    if-eqz v8, :cond_13

    .line 1742
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, " @ "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    const-string/jumbo v44, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 1746
    :goto_b
    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v43

    if-lez v43, :cond_12

    .line 1747
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, "\n\n"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    .line 1749
    :cond_12
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    .line 1751
    move-object/from16 v0, v39

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->addMessage(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;

    goto/16 :goto_9

    .line 1744
    :cond_13
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, ": "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    const-string/jumbo v44, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, " "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    const-string/jumbo v45, ""

    invoke-virtual/range {v43 .. v45}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_b

    .line 1754
    .end local v18    # "message":Ljava/lang/String;
    .end local v19    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_14
    new-instance v15, Landroid/content/Intent;

    sget-object v43, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v44, Lorg/telegram/ui/LaunchActivity;

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1755
    .local v15, "intent":Landroid/content/Intent;
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "com.tmessages.openchat"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v44

    invoke-virtual/range {v43 .. v45}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v43

    const v44, 0x7fffffff

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1756
    const v43, 0x8000

    move/from16 v0, v43

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1757
    if-eqz v8, :cond_19

    .line 1758
    const-string/jumbo v43, "chatId"

    iget v0, v8, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v44, v0

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1762
    :cond_15
    :goto_c
    sget-object v43, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/16 v44, 0x0

    const/high16 v45, 0x40000000    # 2.0f

    move-object/from16 v0, v43

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-static {v0, v1, v15, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 1764
    .local v9, "contentIntent":Landroid/app/PendingIntent;
    new-instance v42, Landroid/support/v4/app/NotificationCompat$WearableExtender;

    invoke-direct/range {v42 .. v42}, Landroid/support/v4/app/NotificationCompat$WearableExtender;-><init>()V

    .line 1765
    .local v42, "wearableExtender":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    if-eqz v41, :cond_16

    .line 1766
    move-object/from16 v0, v42

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 1769
    :cond_16
    new-instance v43, Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v44, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct/range {v43 .. v44}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v43

    const v44, 0x7f0201fd

    invoke-virtual/range {v43 .. v44}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v43

    const-string/jumbo v44, "messages"

    invoke-virtual/range {v43 .. v44}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v43

    const/16 v44, 0x1

    invoke-virtual/range {v43 .. v44}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v43

    const v44, -0xd35a20

    invoke-virtual/range {v43 .. v44}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v43

    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->extend(Landroid/support/v4/app/NotificationCompat$Extender;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v43

    new-instance v44, Landroid/support/v4/app/NotificationCompat$CarExtender;

    invoke-direct/range {v44 .. v44}, Landroid/support/v4/app/NotificationCompat$CarExtender;-><init>()V

    invoke-virtual/range {v39 .. v39}, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->build()Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Landroid/support/v4/app/NotificationCompat$CarExtender;->setUnreadConversation(Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;)Landroid/support/v4/app/NotificationCompat$CarExtender;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Landroid/support/v4/app/NotificationCompat$Builder;->extend(Landroid/support/v4/app/NotificationCompat$Extender;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v43

    const-string/jumbo v44, "msg"

    invoke-virtual/range {v43 .. v44}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 1781
    .local v7, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    if-eqz v31, :cond_17

    .line 1782
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v43

    const/16 v44, 0x0

    const-string/jumbo v45, "50_50"

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/ImageLoader;->getImageFromMemory(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v14

    .line 1783
    .local v14, "img":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v14, :cond_17

    .line 1784
    invoke-virtual {v14}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v7, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1788
    .end local v14    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :cond_17
    if-nez v8, :cond_18

    if-eqz v40, :cond_18

    move-object/from16 v0, v40

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v43, v0

    if-eqz v43, :cond_18

    move-object/from16 v0, v40

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v43

    if-lez v43, :cond_18

    .line 1789
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "tel:+"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v40

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v7, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->addPerson(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1792
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroid/support/v4/app/NotificationManagerCompat;

    move-object/from16 v43, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v44

    invoke-virtual {v7}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 1793
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Ljava/util/HashMap;

    move-object/from16 v43, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1759
    .end local v7    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v9    # "contentIntent":Landroid/app/PendingIntent;
    .end local v42    # "wearableExtender":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    :cond_19
    if-eqz v40, :cond_15

    .line 1760
    const-string/jumbo v43, "userId"

    move-object/from16 v0, v40

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v44, v0

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_c

    .line 1796
    .end local v8    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v10    # "dialog_id":J
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v16    # "max_date":I
    .end local v17    # "max_id":I
    .end local v20    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v22    # "msgHeardIntent":Landroid/content/Intent;
    .end local v23    # "msgHeardPendingIntent":Landroid/app/PendingIntent;
    .end local v26    # "name":Ljava/lang/String;
    .end local v27    # "notificationIdAuto":Ljava/lang/Integer;
    .end local v28    # "notificationIdWear":Ljava/lang/Integer;
    .end local v31    # "photoPath":Lorg/telegram/tgnet/TLRPC$FileLocation;
    .end local v38    # "text":Ljava/lang/String;
    .end local v39    # "unreadConvBuilder":Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    .end local v40    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v41    # "wearReplyAction":Landroid/support/v4/app/NotificationCompat$Action;
    :cond_1a
    invoke-virtual/range {v30 .. v30}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v43

    invoke-interface/range {v43 .. v43}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 1797
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroid/support/v4/app/NotificationManagerCompat;

    move-object/from16 v44, v0

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/Integer;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v43

    move-object/from16 v0, v44

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationManagerCompat;->cancel(I)V

    goto :goto_d
.end method

.method private showOrUpdateNotification(Z)V
    .locals 62
    .param p1, "notifyAboutLast"    # Z

    .prologue
    .line 1273
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v56

    if-eqz v56, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v56

    if-eqz v56, :cond_2

    .line 1274
    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->dismissNotification()V

    .line 1611
    :cond_1
    :goto_0
    return-void

    .line 1278
    :cond_2
    :try_start_0
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Lorg/telegram/tgnet/ConnectionsManager;->resumeNetworkMaybe()V

    .line 1280
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    const/16 v57, 0x0

    invoke-virtual/range {v56 .. v57}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lorg/telegram/messenger/MessageObject;

    .line 1281
    .local v28, "lastMessageObject":Lorg/telegram/messenger/MessageObject;
    sget-object v56, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v57, "Notifications"

    const/16 v58, 0x0

    invoke-virtual/range {v56 .. v58}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v46

    .line 1282
    .local v46, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v56, "dismissDate"

    const/16 v57, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v56

    move/from16 v2, v57

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 1283
    .local v13, "dismissDate":I
    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v56, v0

    move/from16 v0, v56

    if-gt v0, v13, :cond_3

    .line 1284
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->dismissNotification()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1608
    .end local v13    # "dismissDate":I
    .end local v28    # "lastMessageObject":Lorg/telegram/messenger/MessageObject;
    .end local v46    # "preferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v17

    .line 1609
    .local v17, "e":Ljava/lang/Exception;
    const-string/jumbo v56, "tmessages"

    move-object/from16 v0, v56

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1288
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v13    # "dismissDate":I
    .restart local v28    # "lastMessageObject":Lorg/telegram/messenger/MessageObject;
    .restart local v46    # "preferences":Landroid/content/SharedPreferences;
    :cond_3
    :try_start_1
    invoke-virtual/range {v28 .. v28}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v14

    .line 1289
    .local v14, "dialog_id":J
    move-wide/from16 v44, v14

    .line 1290
    .local v44, "override_dialog_id":J
    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    move/from16 v56, v0

    if-eqz v56, :cond_4

    .line 1291
    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v56, v0

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v44, v0

    .line 1293
    :cond_4
    invoke-virtual/range {v28 .. v28}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v34

    .line 1294
    .local v34, "mid":I
    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    move/from16 v56, v0

    if-eqz v56, :cond_28

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    .line 1295
    .local v6, "chat_id":I
    :goto_1
    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v53, v0

    .line 1296
    .local v53, "user_id":I
    if-nez v53, :cond_29

    .line 1297
    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v53, v0

    .line 1302
    :cond_5
    :goto_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v56

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v52

    .line 1303
    .local v52, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v5, 0x0

    .line 1304
    .local v5, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v6, :cond_6

    .line 1305
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v56

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    .line 1307
    :cond_6
    const/16 v43, 0x0

    .line 1309
    .local v43, "photoPath":Lorg/telegram/tgnet/TLRPC$FileLocation;
    const/16 v39, 0x0

    .line 1310
    .local v39, "notifyDisabled":Z
    const/16 v37, 0x0

    .line 1311
    .local v37, "needVibrate":I
    const/4 v7, 0x0

    .line 1312
    .local v7, "choosenSoundPath":Ljava/lang/String;
    const v30, -0xff0100

    .line 1315
    .local v30, "ledColor":I
    const/16 v21, 0x0

    .line 1317
    .local v21, "inAppPreview":Z
    const/16 v47, 0x0

    .line 1321
    .local v47, "priority":I
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-wide/from16 v2, v44

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/NotificationsController;->getNotifyOverride(Landroid/content/SharedPreferences;J)I

    move-result v41

    .line 1322
    .local v41, "notifyOverride":I
    if-eqz p1, :cond_8

    const/16 v56, 0x2

    move/from16 v0, v41

    move/from16 v1, v56

    if-eq v0, v1, :cond_8

    const-string/jumbo v56, "EnableAll"

    const/16 v57, 0x1

    move-object/from16 v0, v46

    move-object/from16 v1, v56

    move/from16 v2, v57

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v56

    if-eqz v56, :cond_7

    if-eqz v6, :cond_9

    const-string/jumbo v56, "EnableGroup"

    const/16 v57, 0x1

    move-object/from16 v0, v46

    move-object/from16 v1, v56

    move/from16 v2, v57

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v56

    if-nez v56, :cond_9

    :cond_7
    if-nez v41, :cond_9

    .line 1323
    :cond_8
    const/16 v39, 0x1

    .line 1326
    :cond_9
    if-nez v39, :cond_a

    cmp-long v56, v14, v44

    if-nez v56, :cond_a

    if-eqz v5, :cond_a

    .line 1327
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "smart_max_count_"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    const/16 v57, 0x2

    move-object/from16 v0, v46

    move-object/from16 v1, v56

    move/from16 v2, v57

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v40

    .line 1328
    .local v40, "notifyMaxCount":I
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "smart_delay_"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    const/16 v57, 0xb4

    move-object/from16 v0, v46

    move-object/from16 v1, v56

    move/from16 v2, v57

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v38

    .line 1329
    .local v38, "notifyDelay":I
    if-eqz v40, :cond_a

    .line 1330
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->smartNotificationsDialogs:Ljava/util/HashMap;

    move-object/from16 v56, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Point;

    .line 1331
    .local v12, "dialogInfo":Landroid/graphics/Point;
    if-nez v12, :cond_2a

    .line 1332
    new-instance v12, Landroid/graphics/Point;

    .end local v12    # "dialogInfo":Landroid/graphics/Point;
    const/16 v56, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v58

    const-wide/16 v60, 0x3e8

    div-long v58, v58, v60

    move-wide/from16 v0, v58

    long-to-int v0, v0

    move/from16 v57, v0

    move/from16 v0, v56

    move/from16 v1, v57

    invoke-direct {v12, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 1333
    .restart local v12    # "dialogInfo":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->smartNotificationsDialogs:Ljava/util/HashMap;

    move-object/from16 v56, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v57

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1350
    .end local v12    # "dialogInfo":Landroid/graphics/Point;
    .end local v38    # "notifyDelay":I
    .end local v40    # "notifyMaxCount":I
    :cond_a
    :goto_3
    sget-object v56, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual/range {v56 .. v56}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 1351
    .local v10, "defaultPath":Ljava/lang/String;
    if-nez v39, :cond_17

    .line 1352
    const-string/jumbo v56, "EnableInAppSounds"

    const/16 v57, 0x1

    move-object/from16 v0, v46

    move-object/from16 v1, v56

    move/from16 v2, v57

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    .line 1353
    .local v23, "inAppSounds":Z
    const-string/jumbo v56, "EnableInAppVibrate"

    const/16 v57, 0x1

    move-object/from16 v0, v46

    move-object/from16 v1, v56

    move/from16 v2, v57

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    .line 1354
    .local v24, "inAppVibrate":Z
    const-string/jumbo v56, "EnableInAppPreview"

    const/16 v57, 0x1

    move-object/from16 v0, v46

    move-object/from16 v1, v56

    move/from16 v2, v57

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 1355
    const-string/jumbo v56, "EnableInAppPriority"

    const/16 v57, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v56

    move/from16 v2, v57

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 1356
    .local v22, "inAppPriority":Z
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "vibrate_"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    const/16 v57, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v56

    move/from16 v2, v57

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v55

    .line 1357
    .local v55, "vibrateOverride":I
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "priority_"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    const/16 v57, 0x3

    move-object/from16 v0, v46

    move-object/from16 v1, v56

    move/from16 v2, v57

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v48

    .line 1358
    .local v48, "priorityOverride":I
    const/16 v54, 0x0

    .line 1360
    .local v54, "vibrateOnlyIfSilent":Z
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "sound_path_"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    const/16 v57, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1361
    if-eqz v6, :cond_2e

    .line 1362
    if-eqz v7, :cond_2d

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_2d

    .line 1363
    const/4 v7, 0x0

    .line 1367
    :cond_b
    :goto_4
    const-string/jumbo v56, "vibrate_group"

    const/16 v57, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v56

    move/from16 v2, v57

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v37

    .line 1368
    const-string/jumbo v56, "priority_group"

    const/16 v57, 0x1

    move-object/from16 v0, v46

    move-object/from16 v1, v56

    move/from16 v2, v57

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v47

    .line 1369
    const-string/jumbo v56, "GroupLed"

    const v57, -0xff0100

    move-object/from16 v0, v46

    move-object/from16 v1, v56

    move/from16 v2, v57

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    .line 1380
    :cond_c
    :goto_5
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "color_"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v46

    move-object/from16 v1, v56

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v56

    if-eqz v56, :cond_d

    .line 1381
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "color_"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    const/16 v57, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v56

    move/from16 v2, v57

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    .line 1384
    :cond_d
    const/16 v56, 0x3

    move/from16 v0, v48

    move/from16 v1, v56

    if-eq v0, v1, :cond_e

    .line 1385
    move/from16 v47, v48

    .line 1388
    :cond_e
    const/16 v56, 0x4

    move/from16 v0, v37

    move/from16 v1, v56

    if-ne v0, v1, :cond_f

    .line 1389
    const/16 v54, 0x1

    .line 1390
    const/16 v37, 0x0

    .line 1392
    :cond_f
    const/16 v56, 0x2

    move/from16 v0, v37

    move/from16 v1, v56

    if-ne v0, v1, :cond_10

    const/16 v56, 0x1

    move/from16 v0, v55

    move/from16 v1, v56

    if-eq v0, v1, :cond_12

    const/16 v56, 0x3

    move/from16 v0, v55

    move/from16 v1, v56

    if-eq v0, v1, :cond_12

    const/16 v56, 0x5

    move/from16 v0, v55

    move/from16 v1, v56

    if-eq v0, v1, :cond_12

    :cond_10
    const/16 v56, 0x2

    move/from16 v0, v37

    move/from16 v1, v56

    if-eq v0, v1, :cond_11

    const/16 v56, 0x2

    move/from16 v0, v55

    move/from16 v1, v56

    if-eq v0, v1, :cond_12

    :cond_11
    if-eqz v55, :cond_13

    .line 1393
    :cond_12
    move/from16 v37, v55

    .line 1395
    :cond_13
    sget-boolean v56, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v56, :cond_16

    .line 1396
    if-nez v23, :cond_14

    .line 1397
    const/4 v7, 0x0

    .line 1399
    :cond_14
    if-nez v24, :cond_15

    .line 1400
    const/16 v37, 0x2

    .line 1402
    :cond_15
    if-nez v22, :cond_31

    .line 1403
    const/16 v47, 0x0

    .line 1408
    :cond_16
    :goto_6
    if-eqz v54, :cond_17

    const/16 v56, 0x2

    move/from16 v0, v37

    move/from16 v1, v56

    if-eq v0, v1, :cond_17

    .line 1410
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Landroid/media/AudioManager;->getRingerMode()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v35

    .line 1411
    .local v35, "mode":I
    if-eqz v35, :cond_17

    const/16 v56, 0x1

    move/from16 v0, v35

    move/from16 v1, v56

    if-eq v0, v1, :cond_17

    .line 1412
    const/16 v37, 0x2

    .line 1420
    .end local v22    # "inAppPriority":Z
    .end local v23    # "inAppSounds":Z
    .end local v24    # "inAppVibrate":Z
    .end local v35    # "mode":I
    .end local v48    # "priorityOverride":I
    .end local v54    # "vibrateOnlyIfSilent":Z
    .end local v55    # "vibrateOverride":I
    :cond_17
    :goto_7
    :try_start_3
    new-instance v26, Landroid/content/Intent;

    sget-object v56, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v57, Lorg/telegram/ui/LaunchActivity;

    move-object/from16 v0, v26

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1421
    .local v26, "intent":Landroid/content/Intent;
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "com.tmessages.openchat"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v58

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v56

    const v57, 0x7fffffff

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v26

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1422
    const v56, 0x8000

    move-object/from16 v0, v26

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1423
    long-to-int v0, v14

    move/from16 v56, v0

    if-eqz v56, :cond_35

    .line 1424
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Ljava/util/HashMap;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljava/util/HashMap;->size()I

    move-result v56

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_18

    .line 1425
    if-eqz v6, :cond_32

    .line 1426
    const-string/jumbo v56, "chatId"

    move-object/from16 v0, v26

    move-object/from16 v1, v56

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1431
    :cond_18
    :goto_8
    const/16 v56, 0x0

    invoke-static/range {v56 .. v56}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v56

    if-nez v56, :cond_19

    sget-boolean v56, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    if-eqz v56, :cond_33

    .line 1432
    :cond_19
    const/16 v43, 0x0

    .line 1451
    :cond_1a
    :goto_9
    sget-object v56, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/16 v57, 0x0

    const/high16 v58, 0x40000000    # 2.0f

    move-object/from16 v0, v56

    move/from16 v1, v57

    move-object/from16 v2, v26

    move/from16 v3, v58

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 1454
    .local v8, "contentIntent":Landroid/app/PendingIntent;
    const/16 v49, 0x1

    .line 1455
    .local v49, "replace":Z
    long-to-int v0, v14

    move/from16 v56, v0

    if-eqz v56, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Ljava/util/HashMap;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljava/util/HashMap;->size()I

    move-result v56

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-gt v0, v1, :cond_1b

    const/16 v56, 0x0

    invoke-static/range {v56 .. v56}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v56

    if-nez v56, :cond_1b

    sget-boolean v56, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    if-eqz v56, :cond_36

    .line 1456
    :cond_1b
    const-string/jumbo v56, "AppName"

    const v57, 0x7f07009a

    invoke-static/range {v56 .. v57}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v36

    .line 1457
    .local v36, "name":Ljava/lang/String;
    const/16 v49, 0x0

    .line 1467
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Ljava/util/HashMap;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljava/util/HashMap;->size()I

    move-result v56

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_38

    .line 1468
    const-string/jumbo v56, "NewMessages"

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    move/from16 v57, v0

    invoke-static/range {v56 .. v57}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 1473
    .local v11, "detailText":Ljava/lang/String;
    :goto_b
    new-instance v56, Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v57, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct/range {v56 .. v57}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v56

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v56

    const v57, 0x7f0201fd

    invoke-virtual/range {v56 .. v57}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v56

    const/16 v57, 0x1

    invoke-virtual/range {v56 .. v57}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v56

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    move/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-virtual {v0, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v56

    const-string/jumbo v57, "messages"

    invoke-virtual/range {v56 .. v57}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v56

    const/16 v57, 0x1

    invoke-virtual/range {v56 .. v57}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v56

    const v57, -0xd35a20

    invoke-virtual/range {v56 .. v57}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v31

    .line 1483
    .local v31, "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    const-string/jumbo v56, "msg"

    move-object/from16 v0, v31

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1484
    if-nez v5, :cond_1c

    if-eqz v52, :cond_1c

    move-object/from16 v0, v52

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v56, v0

    if-eqz v56, :cond_1c

    move-object/from16 v0, v52

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljava/lang/String;->length()I

    move-result v56

    if-lez v56, :cond_1c

    .line 1485
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "tel:+"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v52

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v31

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addPerson(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1488
    :cond_1c
    const/16 v51, 0x2

    .line 1489
    .local v51, "silent":I
    const/16 v27, 0x0

    .line 1490
    .local v27, "lastMessage":Ljava/lang/String;
    const/16 v18, 0x0

    .line 1491
    .local v18, "hasNewMessages":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljava/util/ArrayList;->size()I

    move-result v56

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_3b

    .line 1492
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    const/16 v57, 0x0

    invoke-virtual/range {v56 .. v57}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lorg/telegram/messenger/MessageObject;

    .line 1493
    .local v33, "messageObject":Lorg/telegram/messenger/MessageObject;
    const/16 v56, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v56

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/NotificationsController;->getStringForMessage(Lorg/telegram/messenger/MessageObject;Z)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v32, v27

    .line 1494
    .local v32, "message":Ljava/lang/String;
    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    move/from16 v56, v0

    if-eqz v56, :cond_39

    const/16 v51, 0x1

    .line 1495
    :goto_c
    if-eqz v32, :cond_1

    .line 1498
    if-eqz v49, :cond_1d

    .line 1499
    if-eqz v5, :cond_3a

    .line 1500
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, " @ "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    const-string/jumbo v57, ""

    move-object/from16 v0, v32

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v32

    .line 1505
    :cond_1d
    :goto_d
    invoke-virtual/range {v31 .. v32}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1506
    new-instance v56, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct/range {v56 .. v56}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    move-object/from16 v0, v56

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v56

    move-object/from16 v0, v31

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1537
    .end local v32    # "message":Ljava/lang/String;
    .end local v33    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :goto_e
    new-instance v16, Landroid/content/Intent;

    sget-object v56, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v57, Lorg/telegram/messenger/NotificationDismissReceiver;

    move-object/from16 v0, v16

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1538
    .local v16, "dismissIntent":Landroid/content/Intent;
    const-string/jumbo v56, "messageDate"

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v57, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v56

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1539
    sget-object v56, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/16 v57, 0x1

    const/high16 v58, 0x8000000

    move-object/from16 v0, v56

    move/from16 v1, v57

    move-object/from16 v2, v16

    move/from16 v3, v58

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v56

    move-object/from16 v0, v31

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1541
    if-eqz v43, :cond_1e

    .line 1542
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v56

    const/16 v57, 0x0

    const-string/jumbo v58, "50_50"

    move-object/from16 v0, v56

    move-object/from16 v1, v43

    move-object/from16 v2, v57

    move-object/from16 v3, v58

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/ImageLoader;->getImageFromMemory(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v20

    .line 1543
    .local v20, "img":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v20, :cond_43

    .line 1544
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v56

    move-object/from16 v0, v31

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1560
    .end local v20    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1e
    :goto_f
    if-eqz p1, :cond_1f

    const/16 v56, 0x1

    move/from16 v0, v51

    move/from16 v1, v56

    if-ne v0, v1, :cond_45

    .line 1561
    :cond_1f
    const/16 v56, -0x1

    move-object/from16 v0, v31

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1572
    :cond_20
    :goto_10
    const/16 v56, 0x1

    move/from16 v0, v51

    move/from16 v1, v56

    if-eq v0, v1, :cond_4d

    if-nez v39, :cond_4d

    .line 1573
    sget-boolean v56, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    if-nez v56, :cond_21

    if-eqz v21, :cond_23

    .line 1574
    :cond_21
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v56

    const/16 v57, 0x64

    move/from16 v0, v56

    move/from16 v1, v57

    if-le v0, v1, :cond_22

    .line 1575
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v57, 0x0

    const/16 v58, 0x64

    move-object/from16 v0, v27

    move/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    const/16 v58, 0xa

    const/16 v59, 0x20

    invoke-virtual/range {v57 .. v59}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v57, "..."

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1577
    :cond_22
    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1579
    :cond_23
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Lorg/telegram/messenger/MediaController;->isRecordingAudio()Z

    move-result v56

    if-nez v56, :cond_24

    .line 1580
    if-eqz v7, :cond_24

    const-string/jumbo v56, "NoSound"

    move-object/from16 v0, v56

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-nez v56, :cond_24

    .line 1581
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_48

    .line 1582
    sget-object v56, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    const/16 v57, 0x5

    move-object/from16 v0, v31

    move-object/from16 v1, v56

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1588
    :cond_24
    :goto_11
    if-eqz v30, :cond_25

    .line 1589
    const/16 v56, 0x3e8

    const/16 v57, 0x3e8

    move-object/from16 v0, v31

    move/from16 v1, v30

    move/from16 v2, v56

    move/from16 v3, v57

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1591
    :cond_25
    const/16 v56, 0x2

    move/from16 v0, v37

    move/from16 v1, v56

    if-eq v0, v1, :cond_26

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Lorg/telegram/messenger/MediaController;->isRecordingAudio()Z

    move-result v56

    if-eqz v56, :cond_49

    .line 1592
    :cond_26
    const/16 v56, 0x2

    move/from16 v0, v56

    new-array v0, v0, [J

    move-object/from16 v56, v0

    fill-array-data v56, :array_0

    move-object/from16 v0, v31

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1604
    :cond_27
    :goto_12
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/NotificationsController;->showExtraNotifications(Landroid/support/v4/app/NotificationCompat$Builder;Z)V

    .line 1605
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroid/support/v4/app/NotificationManagerCompat;

    move-object/from16 v56, v0

    const/16 v57, 0x1

    invoke-virtual/range {v31 .. v31}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v58

    invoke-virtual/range {v56 .. v58}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 1607
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->scheduleNotificationRepeat()V

    goto/16 :goto_0

    .line 1294
    .end local v5    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v6    # "chat_id":I
    .end local v7    # "choosenSoundPath":Ljava/lang/String;
    .end local v8    # "contentIntent":Landroid/app/PendingIntent;
    .end local v10    # "defaultPath":Ljava/lang/String;
    .end local v11    # "detailText":Ljava/lang/String;
    .end local v16    # "dismissIntent":Landroid/content/Intent;
    .end local v18    # "hasNewMessages":Z
    .end local v21    # "inAppPreview":Z
    .end local v26    # "intent":Landroid/content/Intent;
    .end local v27    # "lastMessage":Ljava/lang/String;
    .end local v30    # "ledColor":I
    .end local v31    # "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v36    # "name":Ljava/lang/String;
    .end local v37    # "needVibrate":I
    .end local v39    # "notifyDisabled":Z
    .end local v41    # "notifyOverride":I
    .end local v43    # "photoPath":Lorg/telegram/tgnet/TLRPC$FileLocation;
    .end local v47    # "priority":I
    .end local v49    # "replace":Z
    .end local v51    # "silent":I
    .end local v52    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v53    # "user_id":I
    :cond_28
    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    goto/16 :goto_1

    .line 1298
    .restart local v6    # "chat_id":I
    .restart local v53    # "user_id":I
    :cond_29
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v56

    move/from16 v0, v53

    move/from16 v1, v56

    if-ne v0, v1, :cond_5

    .line 1299
    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v53, v0

    goto/16 :goto_2

    .line 1335
    .restart local v5    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v7    # "choosenSoundPath":Ljava/lang/String;
    .restart local v12    # "dialogInfo":Landroid/graphics/Point;
    .restart local v21    # "inAppPreview":Z
    .restart local v30    # "ledColor":I
    .restart local v37    # "needVibrate":I
    .restart local v38    # "notifyDelay":I
    .restart local v39    # "notifyDisabled":Z
    .restart local v40    # "notifyMaxCount":I
    .restart local v41    # "notifyOverride":I
    .restart local v43    # "photoPath":Lorg/telegram/tgnet/TLRPC$FileLocation;
    .restart local v47    # "priority":I
    .restart local v52    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2a
    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v29, v0

    .line 1336
    .local v29, "lastTime":I
    add-int v56, v29, v38

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v56, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v58

    const-wide/16 v60, 0x3e8

    div-long v58, v58, v60

    cmp-long v56, v56, v58

    if-gez v56, :cond_2b

    .line 1337
    const/16 v56, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v58

    const-wide/16 v60, 0x3e8

    div-long v58, v58, v60

    move-wide/from16 v0, v58

    long-to-int v0, v0

    move/from16 v57, v0

    move/from16 v0, v56

    move/from16 v1, v57

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_3

    .line 1339
    :cond_2b
    iget v9, v12, Landroid/graphics/Point;->x:I

    .line 1340
    .local v9, "count":I
    move/from16 v0, v40

    if-ge v9, v0, :cond_2c

    .line 1341
    add-int/lit8 v56, v9, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v58

    const-wide/16 v60, 0x3e8

    div-long v58, v58, v60

    move-wide/from16 v0, v58

    long-to-int v0, v0

    move/from16 v57, v0

    move/from16 v0, v56

    move/from16 v1, v57

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_3

    .line 1343
    :cond_2c
    const/16 v39, 0x1

    goto/16 :goto_3

    .line 1364
    .end local v9    # "count":I
    .end local v12    # "dialogInfo":Landroid/graphics/Point;
    .end local v29    # "lastTime":I
    .end local v38    # "notifyDelay":I
    .end local v40    # "notifyMaxCount":I
    .restart local v10    # "defaultPath":Ljava/lang/String;
    .restart local v22    # "inAppPriority":Z
    .restart local v23    # "inAppSounds":Z
    .restart local v24    # "inAppVibrate":Z
    .restart local v48    # "priorityOverride":I
    .restart local v54    # "vibrateOnlyIfSilent":Z
    .restart local v55    # "vibrateOverride":I
    :cond_2d
    if-nez v7, :cond_b

    .line 1365
    const-string/jumbo v56, "GroupSoundPath"

    move-object/from16 v0, v46

    move-object/from16 v1, v56

    invoke-interface {v0, v1, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 1370
    :cond_2e
    if-eqz v53, :cond_c

    .line 1371
    if-eqz v7, :cond_30

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_30

    .line 1372
    const/4 v7, 0x0

    .line 1376
    :cond_2f
    :goto_13
    const-string/jumbo v56, "vibrate_messages"

    const/16 v57, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v56

    move/from16 v2, v57

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v37

    .line 1377
    const-string/jumbo v56, "priority_group"

    const/16 v57, 0x1

    move-object/from16 v0, v46

    move-object/from16 v1, v56

    move/from16 v2, v57

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v47

    .line 1378
    const-string/jumbo v56, "MessagesLed"

    const v57, -0xff0100

    move-object/from16 v0, v46

    move-object/from16 v1, v56

    move/from16 v2, v57

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    goto/16 :goto_5

    .line 1373
    :cond_30
    if-nez v7, :cond_2f

    .line 1374
    const-string/jumbo v56, "GlobalSoundPath"

    move-object/from16 v0, v46

    move-object/from16 v1, v56

    invoke-interface {v0, v1, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_13

    .line 1404
    :cond_31
    const/16 v56, 0x2

    move/from16 v0, v47

    move/from16 v1, v56

    if-ne v0, v1, :cond_16

    .line 1405
    const/16 v47, 0x1

    goto/16 :goto_6

    .line 1414
    :catch_1
    move-exception v17

    .line 1415
    .restart local v17    # "e":Ljava/lang/Exception;
    const-string/jumbo v56, "tmessages"

    move-object/from16 v0, v56

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 1427
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v22    # "inAppPriority":Z
    .end local v23    # "inAppSounds":Z
    .end local v24    # "inAppVibrate":Z
    .end local v48    # "priorityOverride":I
    .end local v54    # "vibrateOnlyIfSilent":Z
    .end local v55    # "vibrateOverride":I
    .restart local v26    # "intent":Landroid/content/Intent;
    :cond_32
    if-eqz v53, :cond_18

    .line 1428
    const-string/jumbo v56, "userId"

    move-object/from16 v0, v26

    move-object/from16 v1, v56

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_8

    .line 1434
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Ljava/util/HashMap;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljava/util/HashMap;->size()I

    move-result v56

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_1a

    .line 1435
    if-eqz v5, :cond_34

    .line 1436
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v56, v0

    if-eqz v56, :cond_1a

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v56, v0

    if-eqz v56, :cond_1a

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    move-wide/from16 v56, v0

    const-wide/16 v58, 0x0

    cmp-long v56, v56, v58

    if-eqz v56, :cond_1a

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    move/from16 v56, v0

    if-eqz v56, :cond_1a

    .line 1437
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v43, v0

    goto/16 :goto_9

    .line 1439
    :cond_34
    if-eqz v52, :cond_1a

    .line 1440
    move-object/from16 v0, v52

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v56, v0

    if-eqz v56, :cond_1a

    move-object/from16 v0, v52

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v56, v0

    if-eqz v56, :cond_1a

    move-object/from16 v0, v52

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    move-wide/from16 v56, v0

    const-wide/16 v58, 0x0

    cmp-long v56, v56, v58

    if-eqz v56, :cond_1a

    move-object/from16 v0, v52

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    move/from16 v56, v0

    if-eqz v56, :cond_1a

    .line 1441
    move-object/from16 v0, v52

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v43, v0

    goto/16 :goto_9

    .line 1447
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Ljava/util/HashMap;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljava/util/HashMap;->size()I

    move-result v56

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_1a

    .line 1448
    const-string/jumbo v56, "encId"

    const/16 v57, 0x20

    shr-long v58, v14, v57

    move-wide/from16 v0, v58

    long-to-int v0, v0

    move/from16 v57, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v56

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_9

    .line 1459
    .restart local v8    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v49    # "replace":Z
    :cond_36
    if-eqz v5, :cond_37

    .line 1460
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v36, v0

    .restart local v36    # "name":Ljava/lang/String;
    goto/16 :goto_a

    .line 1462
    .end local v36    # "name":Ljava/lang/String;
    :cond_37
    invoke-static/range {v52 .. v52}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v36

    .restart local v36    # "name":Ljava/lang/String;
    goto/16 :goto_a

    .line 1470
    :cond_38
    const-string/jumbo v56, "NotificationMessagesPeopleDisplayOrder"

    const v57, 0x7f07038f

    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "NewMessages"

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    move/from16 v61, v0

    invoke-static/range {v60 .. v61}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v60

    aput-object v60, v58, v59

    const/16 v59, 0x1

    const-string/jumbo v60, "FromChats"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Ljava/util/HashMap;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/HashMap;->size()I

    move-result v61

    invoke-static/range {v60 .. v61}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v60

    aput-object v60, v58, v59

    invoke-static/range {v56 .. v58}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "detailText":Ljava/lang/String;
    goto/16 :goto_b

    .line 1494
    .restart local v18    # "hasNewMessages":Z
    .restart local v27    # "lastMessage":Ljava/lang/String;
    .restart local v31    # "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .restart local v32    # "message":Ljava/lang/String;
    .restart local v33    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .restart local v51    # "silent":I
    :cond_39
    const/16 v51, 0x0

    goto/16 :goto_c

    .line 1502
    :cond_3a
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v56

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v57, ": "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    const-string/jumbo v57, ""

    move-object/from16 v0, v32

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v56

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v57

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string/jumbo v58, " "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    const-string/jumbo v58, ""

    invoke-virtual/range {v56 .. v58}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_d

    .line 1508
    .end local v32    # "message":Ljava/lang/String;
    .end local v33    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_3b
    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1509
    new-instance v25, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct/range {v25 .. v25}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    .line 1510
    .local v25, "inboxStyle":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    move-object/from16 v0, v25

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 1511
    const/16 v56, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Ljava/util/ArrayList;->size()I

    move-result v57

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1512
    .restart local v9    # "count":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_14
    move/from16 v0, v19

    if-ge v0, v9, :cond_42

    .line 1513
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lorg/telegram/messenger/MessageObject;

    .line 1514
    .restart local v33    # "messageObject":Lorg/telegram/messenger/MessageObject;
    const/16 v56, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v56

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/NotificationsController;->getStringForMessage(Lorg/telegram/messenger/MessageObject;Z)Ljava/lang/String;

    move-result-object v32

    .line 1515
    .restart local v32    # "message":Ljava/lang/String;
    if-eqz v32, :cond_3c

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v56, v0

    move/from16 v0, v56

    if-gt v0, v13, :cond_3d

    .line 1512
    :cond_3c
    :goto_15
    add-int/lit8 v19, v19, 0x1

    goto :goto_14

    .line 1518
    :cond_3d
    const/16 v56, 0x2

    move/from16 v0, v51

    move/from16 v1, v56

    if-ne v0, v1, :cond_3e

    .line 1519
    move-object/from16 v27, v32

    .line 1520
    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    move/from16 v56, v0

    if-eqz v56, :cond_40

    const/16 v51, 0x1

    .line 1522
    :cond_3e
    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Ljava/util/HashMap;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljava/util/HashMap;->size()I

    move-result v56

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_3f

    .line 1523
    if-eqz v49, :cond_3f

    .line 1524
    if-eqz v5, :cond_41

    .line 1525
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, " @ "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    const-string/jumbo v57, ""

    move-object/from16 v0, v32

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v32

    .line 1531
    :cond_3f
    :goto_17
    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    goto :goto_15

    .line 1520
    :cond_40
    const/16 v51, 0x0

    goto :goto_16

    .line 1527
    :cond_41
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v56

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v57, ": "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    const-string/jumbo v57, ""

    move-object/from16 v0, v32

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v56

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v57

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string/jumbo v58, " "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    const-string/jumbo v58, ""

    invoke-virtual/range {v56 .. v58}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v32

    goto :goto_17

    .line 1533
    .end local v32    # "message":Ljava/lang/String;
    .end local v33    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_42
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 1534
    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_e

    .line 1547
    .end local v9    # "count":I
    .end local v19    # "i":I
    .end local v25    # "inboxStyle":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    .restart local v16    # "dismissIntent":Landroid/content/Intent;
    .restart local v20    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :cond_43
    const/high16 v56, 0x43200000    # 160.0f

    const/high16 v57, 0x42480000    # 50.0f

    :try_start_4
    invoke-static/range {v57 .. v57}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v57

    move/from16 v0, v57

    int-to-float v0, v0

    move/from16 v57, v0

    div-float v50, v56, v57

    .line 1548
    .local v50, "scaleFactor":F
    new-instance v42, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v42 .. v42}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1549
    .local v42, "options":Landroid/graphics/BitmapFactory$Options;
    const/high16 v56, 0x3f800000    # 1.0f

    cmpg-float v56, v50, v56

    if-gez v56, :cond_44

    const/16 v56, 0x1

    :goto_18
    move/from16 v0, v56

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1550
    const/16 v56, 0x1

    move-object/from16 v0, v43

    move/from16 v1, v56

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1551
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_1e

    .line 1552
    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_f

    .line 1554
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v42    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v50    # "scaleFactor":F
    :catch_2
    move-exception v56

    goto/16 :goto_f

    .line 1549
    .restart local v42    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v50    # "scaleFactor":F
    :cond_44
    move/from16 v0, v50

    float-to-int v0, v0

    move/from16 v56, v0

    goto :goto_18

    .line 1563
    .end local v20    # "img":Landroid/graphics/drawable/BitmapDrawable;
    .end local v42    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v50    # "scaleFactor":F
    :cond_45
    if-nez v47, :cond_46

    .line 1564
    const/16 v56, 0x0

    :try_start_5
    move-object/from16 v0, v31

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_10

    .line 1565
    :cond_46
    const/16 v56, 0x1

    move/from16 v0, v47

    move/from16 v1, v56

    if-ne v0, v1, :cond_47

    .line 1566
    const/16 v56, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_10

    .line 1567
    :cond_47
    const/16 v56, 0x2

    move/from16 v0, v47

    move/from16 v1, v56

    if-ne v0, v1, :cond_20

    .line 1568
    const/16 v56, 0x2

    move-object/from16 v0, v31

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_10

    .line 1584
    :cond_48
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v56

    const/16 v57, 0x5

    move-object/from16 v0, v31

    move-object/from16 v1, v56

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_11

    .line 1593
    :cond_49
    const/16 v56, 0x1

    move/from16 v0, v37

    move/from16 v1, v56

    if-ne v0, v1, :cond_4a

    .line 1594
    const/16 v56, 0x4

    move/from16 v0, v56

    new-array v0, v0, [J

    move-object/from16 v56, v0

    fill-array-data v56, :array_1

    move-object/from16 v0, v31

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_12

    .line 1595
    :cond_4a
    if-eqz v37, :cond_4b

    const/16 v56, 0x4

    move/from16 v0, v37

    move/from16 v1, v56

    if-ne v0, v1, :cond_4c

    .line 1596
    :cond_4b
    const/16 v56, 0x2

    move-object/from16 v0, v31

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_12

    .line 1597
    :cond_4c
    const/16 v56, 0x3

    move/from16 v0, v37

    move/from16 v1, v56

    if-ne v0, v1, :cond_27

    .line 1598
    const/16 v56, 0x2

    move/from16 v0, v56

    new-array v0, v0, [J

    move-object/from16 v56, v0

    fill-array-data v56, :array_2

    move-object/from16 v0, v31

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_12

    .line 1601
    :cond_4d
    const/16 v56, 0x2

    move/from16 v0, v56

    new-array v0, v0, [J

    move-object/from16 v56, v0

    fill-array-data v56, :array_3

    move-object/from16 v0, v31

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_12

    .line 1592
    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data

    .line 1594
    :array_1
    .array-data 8
        0x0
        0x64
        0x0
        0x64
    .end array-data

    .line 1598
    :array_2
    .array-data 8
        0x0
        0x3e8
    .end array-data

    .line 1601
    :array_3
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public static updateServerNotificationsSettings(J)V
    .locals 8
    .param p0, "dialog_id"    # J

    .prologue
    const/4 v4, 0x0

    .line 1846
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1847
    long-to-int v3, p0

    if-nez v3, :cond_0

    .line 1870
    :goto_0
    return-void

    .line 1850
    :cond_0
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "Notifications"

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1851
    .local v1, "preferences":Landroid/content/SharedPreferences;
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;-><init>()V

    .line 1852
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    .line 1853
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    const-string/jumbo v5, "default"

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->sound:Ljava/lang/String;

    .line 1854
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notify2_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1855
    .local v0, "mute_type":I
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 1856
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyuntil_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->mute_until:I

    .line 1860
    :goto_1
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "preview_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->show_previews:Z

    .line 1861
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "silent_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->silent:Z

    .line 1862
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyPeer;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyPeer;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$InputNotifyPeer;

    .line 1863
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$InputNotifyPeer;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyPeer;

    long-to-int v4, p0

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyPeer;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1864
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/NotificationsController$15;

    invoke-direct {v4}, Lorg/telegram/messenger/NotificationsController$15;-><init>()V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    .line 1858
    :cond_1
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    move v3, v4

    :goto_2
    iput v3, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->mute_until:I

    goto :goto_1

    :cond_2
    const v3, 0x7fffffff

    goto :goto_2
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 149
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/NotificationsController$2;-><init>(Lorg/telegram/messenger/NotificationsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 177
    return-void
.end method

.method public playOutChatSound()V
    .locals 3

    .prologue
    .line 1802
    iget-boolean v1, p0, Lorg/telegram/messenger/NotificationsController;->inChatSoundEnabled:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->isRecordingAudio()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1843
    :cond_0
    :goto_0
    return-void

    .line 1806
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1812
    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/NotificationsController$14;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/NotificationsController$14;-><init>(Lorg/telegram/messenger/NotificationsController;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1809
    :catch_0
    move-exception v0

    .line 1810
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public processDialogsUpdateRead(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 464
    .local p1, "dialogsToUpdate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 465
    .local v0, "popupArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/NotificationsController$8;

    invoke-direct {v2, p0, p1, v0}, Lorg/telegram/messenger/NotificationsController$8;-><init>(Lorg/telegram/messenger/NotificationsController;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 552
    return-void

    .line 464
    .end local v0    # "popupArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public processLoadedUnreadMessages(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "dialogs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .local p2, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .local p3, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .local p4, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    .local p5, "encryptedChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    const/4 v1, 0x1

    .line 555
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p3, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 556
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p4, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 557
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p5, v1}, Lorg/telegram/messenger/MessagesController;->putEncryptedChats(Ljava/util/ArrayList;Z)V

    .line 559
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$9;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/NotificationsController$9;-><init>(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 640
    return-void
.end method

.method public processNewMessages(Ljava/util/ArrayList;Z)V
    .locals 3
    .param p2, "isLast"    # Z
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
    .line 373
    .local p1, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    :goto_0
    return-void

    .line 376
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 377
    .local v0, "popupArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/NotificationsController$7;

    invoke-direct {v2, p0, v0, p1, p2}, Lorg/telegram/messenger/NotificationsController$7;-><init>(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public processReadMessages(Landroid/util/SparseArray;JIIZ)V
    .locals 10
    .param p2, "dialog_id"    # J
    .param p4, "max_date"    # I
    .param p5, "max_id"    # I
    .param p6, "isPopup"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;JIIZ)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, "inbox":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 285
    .local v2, "popupArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :goto_0
    iget-object v9, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/NotificationsController$6;

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p5

    move v7, p4

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/NotificationsController$6;-><init>(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;Landroid/util/SparseArray;JIIZ)V

    invoke-virtual {v9, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 370
    return-void

    .line 284
    .end local v2    # "popupArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public removeDeletedMessagesFromNotifications(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "deletedMessages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 211
    .local v0, "popupArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/NotificationsController$5;

    invoke-direct {v2, p0, p1, v0}, Lorg/telegram/messenger/NotificationsController$5;-><init>(Lorg/telegram/messenger/NotificationsController;Landroid/util/SparseArray;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 281
    return-void

    .line 210
    .end local v0    # "popupArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public removeNotificationsForDialog(J)V
    .locals 9
    .param p1, "did"    # J

    .prologue
    const/4 v4, 0x0

    .line 203
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    const/4 v1, 0x0

    const v5, 0x7fffffff

    move-wide v2, p1

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/NotificationsController;->processReadMessages(Landroid/util/SparseArray;JIIZ)V

    .line 204
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 205
    .local v7, "dialogsToUpdate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/NotificationsController;->processDialogsUpdateRead(Ljava/util/HashMap;)V

    .line 207
    return-void
.end method

.method protected repeatNotificationMaybe()V
    .locals 2

    .prologue
    .line 1258
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$13;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/NotificationsController$13;-><init>(Lorg/telegram/messenger/NotificationsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1270
    return-void
.end method

.method public setBadgeEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 643
    if-eqz p1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/messenger/NotificationsController;->setBadge(I)V

    .line 644
    return-void

    .line 643
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInChatSoundEnabled(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 180
    iput-boolean p1, p0, Lorg/telegram/messenger/NotificationsController;->inChatSoundEnabled:Z

    .line 181
    return-void
.end method

.method public setLastOnlineFromOtherDevice(I)V
    .locals 2
    .param p1, "time"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/NotificationsController$4;-><init>(Lorg/telegram/messenger/NotificationsController;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 200
    return-void
.end method

.method public setOpenedDialogId(J)V
    .locals 3
    .param p1, "dialog_id"    # J

    .prologue
    .line 184
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$3;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/NotificationsController$3;-><init>(Lorg/telegram/messenger/NotificationsController;J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 190
    return-void
.end method
