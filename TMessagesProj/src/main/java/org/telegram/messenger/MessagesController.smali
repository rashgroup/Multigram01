.class public Lorg/telegram/messenger/MessagesController;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/MessagesController$PrintingUser;,
        Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;,
        Lorg/telegram/messenger/MessagesController$UserActionUpdatesSeq;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/messenger/MessagesController; = null

.field public static final UPDATE_MASK_ALL:I = 0x5ff

.field public static final UPDATE_MASK_AVATAR:I = 0x2

.field public static final UPDATE_MASK_CHANNEL:I = 0x2000

.field public static final UPDATE_MASK_CHAT_ADMINS:I = 0x4000

.field public static final UPDATE_MASK_CHAT_AVATAR:I = 0x8

.field public static final UPDATE_MASK_CHAT_MEMBERS:I = 0x20

.field public static final UPDATE_MASK_CHAT_NAME:I = 0x10

.field public static final UPDATE_MASK_NAME:I = 0x1

.field public static final UPDATE_MASK_NEW_MESSAGE:I = 0x800

.field public static final UPDATE_MASK_PHONE:I = 0x400

.field public static final UPDATE_MASK_READ_DIALOG_MESSAGE:I = 0x100

.field public static final UPDATE_MASK_SELECT_DIALOG:I = 0x200

.field public static final UPDATE_MASK_SEND_STATE:I = 0x1000

.field public static final UPDATE_MASK_STATUS:I = 0x4

.field public static final UPDATE_MASK_USER_PHONE:I = 0x80

.field public static final UPDATE_MASK_USER_PRINT:I = 0x40


# instance fields
.field public blockedUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private channelViewsToReload:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private channelViewsToSend:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private channelsPts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private chats:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;"
        }
    .end annotation
.end field

.field private checkingLastMessagesDialogs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private createdDialogIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private currentDeleteTaskRunnable:Ljava/lang/Runnable;

.field private currentDeletingTaskMids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private currentDeletingTaskTime:I

.field private final dialogComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogMessage:Ljava/util/HashMap;
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

.field public dialogMessagesByIds:Ljava/util/HashMap;
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

.field public dialogMessagesByRandomIds:Ljava/util/HashMap;
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

.field public dialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsEndReached:Z

.field public dialogsGroupsOnly:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsServerOnly:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private disabledFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;",
            ">;"
        }
    .end annotation
.end field

.field public enableJoined:Z

.field private encryptedChats:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            ">;"
        }
    .end annotation
.end field

.field private exportedChats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;",
            ">;"
        }
    .end annotation
.end field

.field public firstGettingTask:Z

.field public fontSize:I

.field private fullUsersAbout:Ljava/util/HashMap;
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

.field public gettingDifference:Z

.field private gettingDifferenceChannels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private gettingNewDeleteTask:Z

.field private gettingUnknownChannels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public groupBigSize:I

.field private joiningToChannels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lastPrintingStringCount:I

.field private lastStatusUpdateTime:J

.field private lastViewsCheckTime:J

.field private loadedFullChats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private loadedFullParticipants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private loadedFullUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public loadingBlockedUsers:Z

.field public loadingDialogs:Z

.field private loadingFullChats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private loadingFullParticipants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private loadingFullUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private loadingPeerSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public maxBroadcastCount:I

.field public maxEditTime:I

.field public maxGroupCount:I

.field public maxMegagroupCount:I

.field private migratingDialogs:Z

.field public minGroupConvertSize:I

.field private needShortPollChannels:Landroid/util/SparseIntArray;

.field public nextDialogsCacheOffset:I

.field private offlineSent:Z

.field public onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public printingStrings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public printingStringsTypes:Ljava/util/HashMap;
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

.field public printingUsers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessagesController$PrintingUser;",
            ">;>;"
        }
    .end annotation
.end field

.field public ratingDecay:I

.field public registeringForPush:Z

.field private reloadingMessages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private reloadingWebpages:Ljava/util/HashMap;
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

.field private reloadingWebpagesPending:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;"
        }
    .end annotation
.end field

.field public secretWebpagePreview:I

.field public sendingTypings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private shortPollChannels:Landroid/util/SparseIntArray;

.field private statusRequest:I

.field private statusSettingState:I

.field private final updatesComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Update;",
            ">;"
        }
    .end annotation
.end field

.field private updatesQueueChannels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Updates;",
            ">;>;"
        }
    .end annotation
.end field

.field private updatesQueuePts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Updates;",
            ">;"
        }
    .end annotation
.end field

.field private updatesQueueQts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Updates;",
            ">;"
        }
    .end annotation
.end field

.field private updatesQueueSeq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Updates;",
            ">;"
        }
    .end annotation
.end field

.field private updatesStartWaitTimeChannels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private updatesStartWaitTimePts:J

.field private updatesStartWaitTimeQts:J

.field private updatesStartWaitTimeSeq:J

.field public updatingState:Z

.field private uploadingAvatar:Ljava/lang/String;

.field private users:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field private usersByUsernames:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/MessagesController;->Instance:Lorg/telegram/messenger/MessagesController;

    return-void
.end method

.method public constructor <init>()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/16 v13, 0x64

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v8, v13, v12, v11}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v9, 0xa

    invoke-direct {v8, v9, v12, v11}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->encryptedChats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v8, v13, v12, v11}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    .line 61
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v8, v13, v12, v11}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->usersByUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->joiningToChannels:Ljava/util/ArrayList;

    .line 65
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->exportedChats:Ljava/util/HashMap;

    .line 67
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    .line 68
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    .line 69
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    .line 71
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v8, v13, v12, v11}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    .line 72
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v8, v13, v12, v11}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    .line 73
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v8, v13, v12, v11}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    .line 74
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    .line 75
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    .line 76
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    .line 77
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v9, 0x14

    invoke-direct {v8, v9, v12, v11}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 78
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->printingStrings:Ljava/util/HashMap;

    .line 79
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->printingStringsTypes:Ljava/util/HashMap;

    .line 80
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->sendingTypings:Ljava/util/HashMap;

    .line 81
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v9, 0x14

    invoke-direct {v8, v9, v12, v11}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    .line 82
    iput v10, p0, Lorg/telegram/messenger/MessagesController;->lastPrintingStringCount:I

    .line 84
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->loadingPeerSettings:Ljava/util/HashMap;

    .line 86
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    .line 88
    new-instance v8, Landroid/util/SparseIntArray;

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;

    .line 89
    new-instance v8, Landroid/util/SparseIntArray;

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->needShortPollChannels:Landroid/util/SparseIntArray;

    .line 91
    iput-boolean v10, p0, Lorg/telegram/messenger/MessagesController;->loadingBlockedUsers:Z

    .line 92
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    .line 94
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->channelViewsToSend:Landroid/util/SparseArray;

    .line 95
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->channelViewsToReload:Landroid/util/SparseArray;

    .line 98
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    .line 99
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    .line 100
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    .line 101
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->gettingDifferenceChannels:Ljava/util/HashMap;

    .line 103
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->gettingUnknownChannels:Ljava/util/HashMap;

    .line 104
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->checkingLastMessagesDialogs:Ljava/util/HashMap;

    .line 106
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueSeq:Ljava/util/ArrayList;

    .line 107
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->updatesQueuePts:Ljava/util/ArrayList;

    .line 108
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueQts:Ljava/util/ArrayList;

    .line 109
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    .line 110
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    .line 111
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    .line 112
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->fullUsersAbout:Ljava/util/HashMap;

    .line 113
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->loadingFullUsers:Ljava/util/ArrayList;

    .line 114
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->loadedFullUsers:Ljava/util/ArrayList;

    .line 115
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->loadingFullChats:Ljava/util/ArrayList;

    .line 116
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->loadingFullParticipants:Ljava/util/ArrayList;

    .line 117
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->loadedFullParticipants:Ljava/util/ArrayList;

    .line 118
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->loadedFullChats:Ljava/util/ArrayList;

    .line 120
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpages:Ljava/util/HashMap;

    .line 121
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpagesPending:Ljava/util/HashMap;

    .line 123
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->reloadingMessages:Ljava/util/HashMap;

    .line 125
    iput-boolean v10, p0, Lorg/telegram/messenger/MessagesController;->gettingNewDeleteTask:Z

    .line 126
    iput v10, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskTime:I

    .line 127
    iput-object v14, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskMids:Ljava/util/ArrayList;

    .line 128
    iput-object v14, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    .line 130
    iput-boolean v10, p0, Lorg/telegram/messenger/MessagesController;->loadingDialogs:Z

    .line 131
    iput-boolean v10, p0, Lorg/telegram/messenger/MessagesController;->migratingDialogs:Z

    .line 132
    iput-boolean v10, p0, Lorg/telegram/messenger/MessagesController;->dialogsEndReached:Z

    .line 133
    iput-boolean v10, p0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    .line 134
    iput-boolean v10, p0, Lorg/telegram/messenger/MessagesController;->updatingState:Z

    .line 135
    iput-boolean v10, p0, Lorg/telegram/messenger/MessagesController;->firstGettingTask:Z

    .line 136
    iput-boolean v10, p0, Lorg/telegram/messenger/MessagesController;->registeringForPush:Z

    .line 138
    iput v11, p0, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    .line 140
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J

    .line 141
    iput v10, p0, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    .line 142
    iput v10, p0, Lorg/telegram/messenger/MessagesController;->statusSettingState:I

    .line 143
    iput-boolean v10, p0, Lorg/telegram/messenger/MessagesController;->offlineSent:Z

    .line 144
    iput-object v14, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    .line 146
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/messenger/MessagesController;->enableJoined:Z

    .line 147
    const/high16 v8, 0x41800000    # 16.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iput v8, p0, Lorg/telegram/messenger/MessagesController;->fontSize:I

    .line 148
    const/16 v8, 0xc8

    iput v8, p0, Lorg/telegram/messenger/MessagesController;->maxGroupCount:I

    .line 149
    iput v13, p0, Lorg/telegram/messenger/MessagesController;->maxBroadcastCount:I

    .line 150
    const/16 v8, 0x1388

    iput v8, p0, Lorg/telegram/messenger/MessagesController;->maxMegagroupCount:I

    .line 151
    const/16 v8, 0xc8

    iput v8, p0, Lorg/telegram/messenger/MessagesController;->minGroupConvertSize:I

    .line 152
    const v8, 0x2a300

    iput v8, p0, Lorg/telegram/messenger/MessagesController;->maxEditTime:I

    .line 155
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;

    .line 190
    new-instance v8, Lorg/telegram/messenger/MessagesController$1;

    invoke-direct {v8, p0}, Lorg/telegram/messenger/MessagesController$1;-><init>(Lorg/telegram/messenger/MessagesController;)V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogComparator:Ljava/util/Comparator;

    .line 206
    new-instance v8, Lorg/telegram/messenger/MessagesController$2;

    invoke-direct {v8, p0}, Lorg/telegram/messenger/MessagesController$2;-><init>(Lorg/telegram/messenger/MessagesController;)V

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->updatesComparator:Ljava/util/Comparator;

    .line 244
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    .line 245
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    .line 246
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/NotificationCenter;->FileDidUpload:I

    invoke-virtual {v8, p0, v9}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 247
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/NotificationCenter;->FileDidFailUpload:I

    invoke-virtual {v8, p0, v9}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 248
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    invoke-virtual {v8, p0, v9}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 249
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    invoke-virtual {v8, p0, v9}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 250
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    invoke-virtual {v8, p0, v9}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 251
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->addSupportUser()V

    .line 252
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v9, "Notifications"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 253
    .local v7, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v8, "EnableContactJoined"

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lorg/telegram/messenger/MessagesController;->enableJoined:Z

    .line 255
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v9, "mainconfig"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 256
    const-string/jumbo v8, "secretWebpage2"

    invoke-interface {v7, v8, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    .line 257
    const-string/jumbo v8, "maxGroupCount"

    const/16 v9, 0xc8

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lorg/telegram/messenger/MessagesController;->maxGroupCount:I

    .line 258
    const-string/jumbo v8, "maxMegagroupCount"

    const/16 v9, 0x3e8

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lorg/telegram/messenger/MessagesController;->maxMegagroupCount:I

    .line 259
    const-string/jumbo v8, "maxEditTime"

    const/16 v9, 0xe10

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lorg/telegram/messenger/MessagesController;->maxEditTime:I

    .line 260
    const-string/jumbo v8, "groupBigSize"

    const/16 v9, 0xa

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lorg/telegram/messenger/MessagesController;->groupBigSize:I

    .line 261
    const-string/jumbo v8, "ratingDecay"

    const v9, 0x24ea00

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lorg/telegram/messenger/MessagesController;->ratingDecay:I

    .line 262
    const-string/jumbo v9, "fons_size"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, 0x12

    :goto_0
    invoke-interface {v7, v9, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lorg/telegram/messenger/MessagesController;->fontSize:I

    .line 263
    const-string/jumbo v8, "disabledFeatures"

    invoke-interface {v7, v8, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 264
    .local v4, "disabledFeaturesString":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    .line 266
    const/4 v8, 0x0

    :try_start_0
    invoke-static {v4, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 267
    .local v1, "bytes":[B
    if-eqz v1, :cond_2

    .line 268
    new-instance v3, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v3, v1}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 269
    .local v3, "data":Lorg/telegram/tgnet/SerializedData;
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v2

    .line 270
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 271
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v3, v8, v9}, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;

    move-result-object v6

    .line 272
    .local v6, "feature":Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;
    if-eqz v6, :cond_0

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;->feature:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;->description:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 273
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 262
    .end local v0    # "a":I
    .end local v1    # "bytes":[B
    .end local v2    # "count":I
    .end local v3    # "data":Lorg/telegram/tgnet/SerializedData;
    .end local v4    # "disabledFeaturesString":Ljava/lang/String;
    .end local v6    # "feature":Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;
    :cond_1
    const/16 v8, 0x10

    goto :goto_0

    .line 277
    .restart local v4    # "disabledFeaturesString":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 278
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "tmessages"

    invoke-static {v8, v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 281
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method public static SuperNotificatin(Ljava/lang/String;I)V
    .locals 14
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "user_id"    # I

    .prologue
    .line 7499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v6, v10

    .line 7500
    .local v6, "num":I
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v11, "SpecialNotifications"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 7502
    .local v9, "preferences":Landroid/content/SharedPreferences;
    new-instance v2, Landroid/content/Intent;

    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v11, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v2, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7503
    .local v2, "intent":Landroid/content/Intent;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "com.tmessages.openchat"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7fffffff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7504
    const v10, 0x8000

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7505
    const-string/jumbo v10, "userId"

    invoke-virtual {v2, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7507
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-static {v10, v6, v2, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 7508
    .local v8, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v10, Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v11, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x7f0201fd

    invoke-virtual {v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v10

    const-string/jumbo v11, "AppName"

    const v12, 0x7f07009a

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 7514
    .local v3, "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    const-string/jumbo v10, "vibrate_sc"

    const/4 v11, 0x3

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 7515
    .local v4, "needVibrate":I
    const/4 v10, 0x1

    if-eq v4, v10, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/MediaController;->isRecordingAudio()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 7516
    :cond_0
    const/4 v10, 0x2

    new-array v10, v10, [J

    fill-array-data v10, :array_0

    invoke-virtual {v3, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 7524
    :cond_1
    :goto_0
    const-string/jumbo v10, "color_sc"

    const v11, -0xff0100

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    const/16 v11, 0x3e8

    const/16 v12, 0x3e8

    invoke-virtual {v3, v10, v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 7526
    const/4 v0, 0x0

    .line 7527
    .local v0, "defaultPath":Ljava/lang/String;
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 7528
    .local v1, "defaultUri":Landroid/net/Uri;
    if-eqz v1, :cond_2

    .line 7529
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 7531
    :cond_2
    const-string/jumbo v10, "sound_path_sc"

    invoke-interface {v9, v10, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 7532
    .local v7, "path":Ljava/lang/String;
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 7534
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v11, "notification"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 7535
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    invoke-virtual {v5, v6, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 7536
    return-void

    .line 7517
    .end local v0    # "defaultPath":Ljava/lang/String;
    .end local v1    # "defaultUri":Landroid/net/Uri;
    .end local v5    # "notificationManager":Landroid/app/NotificationManager;
    .end local v7    # "path":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x2

    if-ne v4, v10, :cond_4

    .line 7518
    const/4 v10, 0x4

    new-array v10, v10, [J

    fill-array-data v10, :array_1

    invoke-virtual {v3, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 7519
    :cond_4
    if-eqz v4, :cond_5

    const/4 v10, 0x4

    if-ne v4, v10, :cond_6

    .line 7520
    :cond_5
    const/4 v10, 0x2

    invoke-virtual {v3, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 7521
    :cond_6
    const/4 v10, 0x3

    if-ne v4, v10, :cond_1

    .line 7522
    const/4 v10, 0x2

    new-array v10, v10, [J

    fill-array-data v10, :array_2

    invoke-virtual {v3, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 7516
    nop

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data

    .line 7518
    :array_1
    .array-data 8
        0x0
        0x64
        0x0
        0x64
    .end array-data

    .line 7522
    :array_2
    .array-data 8
        0x0
        0x3e8
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Update;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$Update;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Update;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$Update;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUpdateChannelId(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->gettingDifferenceChannels:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/MessagesController;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/MessagesController;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->needShortPollChannels:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/MessagesController;JLorg/telegram/tgnet/TLRPC$PeerNotifySettings;)V
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->applyDialogNotificationsSettings(JLorg/telegram/tgnet/TLRPC$PeerNotifySettings;)V

    return-void
.end method

.method static synthetic access$1800(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->exportedChats:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullChats:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullChats:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 56
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/telegram/messenger/MessagesController;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MessagesController;->checkChannelError(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->fullUsersAbout:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingMessages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingPeerSettings:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2900(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskMids:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2902(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 56
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskMids:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueSeq:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/telegram/messenger/MessagesController;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 56
    iget-boolean v0, p0, Lorg/telegram/messenger/MessagesController;->gettingNewDeleteTask:Z

    return v0
.end method

.method static synthetic access$3002(Lorg/telegram/messenger/MessagesController;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lorg/telegram/messenger/MessagesController;->gettingNewDeleteTask:Z

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/messenger/MessagesController;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 56
    iget v0, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskTime:I

    return v0
.end method

.method static synthetic access$3102(Lorg/telegram/messenger/MessagesController;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskTime:I

    return p1
.end method

.method static synthetic access$3200(Lorg/telegram/messenger/MessagesController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3202(Lorg/telegram/messenger/MessagesController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 56
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$3300(Lorg/telegram/messenger/MessagesController;Z)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->checkDeletingTask(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lorg/telegram/messenger/MessagesController;JZII)V
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    .line 56
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JZII)V

    return-void
.end method

.method static synthetic access$3500(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullParticipants:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullParticipants:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3700(Lorg/telegram/messenger/MessagesController;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 56
    iget-wide v0, p0, Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$3702(Lorg/telegram/messenger/MessagesController;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # J

    .prologue
    .line 56
    iput-wide p1, p0, Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$3714(Lorg/telegram/messenger/MessagesController;J)J
    .locals 3
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # J

    .prologue
    .line 56
    iget-wide v0, p0, Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$3802(Lorg/telegram/messenger/MessagesController;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lorg/telegram/messenger/MessagesController;->offlineSent:Z

    return p1
.end method

.method static synthetic access$3902(Lorg/telegram/messenger/MessagesController;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lorg/telegram/messenger/MessagesController;->statusSettingState:I

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesQueuePts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4002(Lorg/telegram/messenger/MessagesController;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    return p1
.end method

.method static synthetic access$4100(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4200(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpagesPending:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4300(Lorg/telegram/messenger/MessagesController;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V

    return-void
.end method

.method static synthetic access$4400(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;J)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # J

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->reloadMessages(Ljava/util/ArrayList;J)V

    return-void
.end method

.method static synthetic access$4502(Lorg/telegram/messenger/MessagesController;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lorg/telegram/messenger/MessagesController;->migratingDialogs:Z

    return p1
.end method

.method static synthetic access$4600(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->applyDialogsNotificationsSettings(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$4700(Lorg/telegram/messenger/MessagesController;IIIIIJ)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # J

    .prologue
    .line 56
    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/MessagesController;->migrateDialogs(IIIIIJ)V

    return-void
.end method

.method static synthetic access$4800(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;J)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # J

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->reloadDialogsReadValue(Ljava/util/ArrayList;J)V

    return-void
.end method

.method static synthetic access$4900(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->checkingLastMessagesDialogs:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueQts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5000(Lorg/telegram/messenger/MessagesController;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->channelViewsToSend:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$5100(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->joiningToChannels:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5200(Lorg/telegram/messenger/MessagesController;II)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MessagesController;->processUpdatesQueue(II)V

    return-void
.end method

.method static synthetic access$5300(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Updates;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$Updates;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUpdateSeq(Lorg/telegram/tgnet/TLRPC$Updates;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lorg/telegram/messenger/MessagesController;II)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MessagesController;->processChannelsUpdatesQueue(II)V

    return-void
.end method

.method static synthetic access$5500(Lorg/telegram/messenger/MessagesController;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->usersByUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->gettingUnknownChannels:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$702(Lorg/telegram/messenger/MessagesController;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # J

    .prologue
    .line 56
    iput-wide p1, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    return-wide p1
.end method

.method static synthetic access$802(Lorg/telegram/messenger/MessagesController;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # J

    .prologue
    .line 56
    iput-wide p1, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    return-wide p1
.end method

.method static synthetic access$902(Lorg/telegram/messenger/MessagesController;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # J

    .prologue
    .line 56
    iput-wide p1, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    return-wide p1
.end method

.method protected static addNewGifToRecent(Lorg/telegram/tgnet/TLRPC$Document;I)V
    .locals 6
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;
    .param p1, "date"    # I

    .prologue
    .line 7192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7193
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    new-instance v1, Lorg/telegram/messenger/MediaController$SearchImage;

    invoke-direct {v1}, Lorg/telegram/messenger/MediaController$SearchImage;-><init>()V

    .line 7194
    .local v1, "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    const/4 v2, 0x2

    iput v2, v1, Lorg/telegram/messenger/MediaController$SearchImage;->type:I

    .line 7195
    iput-object p0, v1, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 7196
    iput p1, v1, Lorg/telegram/messenger/MediaController$SearchImage;->date:I

    .line 7197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    .line 7198
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7199
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesStorage;->putWebRecent(Ljava/util/ArrayList;)V

    .line 7200
    return-void
.end method

.method private applyDialogNotificationsSettings(JLorg/telegram/tgnet/TLRPC$PeerNotifySettings;)V
    .locals 15
    .param p1, "dialog_id"    # J
    .param p3, "notify_settings"    # Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .prologue
    .line 3203
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "Notifications"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 3204
    .local v6, "preferences":Landroid/content/SharedPreferences;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "notify2_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 3205
    .local v2, "currentValue":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "notifyuntil_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 3206
    .local v3, "currentValue2":I
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 3207
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v8, 0x0

    .line 3208
    .local v8, "updated":Z
    iget-object v9, p0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 3209
    .local v4, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v4, :cond_0

    .line 3210
    move-object/from16 v0, p3

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 3212
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "silent_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p3

    iget-boolean v10, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->silent:Z

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3213
    move-object/from16 v0, p3

    iget v9, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v10

    if-le v9, v10, :cond_5

    .line 3214
    const/4 v7, 0x0

    .line 3215
    .local v7, "until":I
    move-object/from16 v0, p3

    iget v9, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v10

    const v11, 0x1e13380

    add-int/2addr v10, v11

    if-le v9, v10, :cond_3

    .line 3216
    const/4 v9, 0x2

    if-eq v2, v9, :cond_1

    .line 3217
    const/4 v8, 0x1

    .line 3218
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "notify2_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3219
    if-eqz v4, :cond_1

    .line 3220
    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    const v10, 0x7fffffff

    iput v10, v9, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 3234
    :cond_1
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    int-to-long v10, v7

    const/16 v12, 0x20

    shl-long/2addr v10, v12

    const-wide/16 v12, 0x1

    or-long/2addr v10, v12

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1, v10, v11}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    .line 3235
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v9

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Lorg/telegram/messenger/NotificationsController;->removeNotificationsForDialog(J)V

    .line 3246
    .end local v7    # "until":I
    :goto_1
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3247
    if-eqz v8, :cond_2

    .line 3248
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3250
    :cond_2
    return-void

    .line 3224
    .restart local v7    # "until":I
    :cond_3
    const/4 v9, 0x3

    if-ne v2, v9, :cond_4

    move-object/from16 v0, p3

    iget v9, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    if-eq v3, v9, :cond_1

    .line 3225
    :cond_4
    const/4 v8, 0x1

    .line 3226
    move-object/from16 v0, p3

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 3227
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "notify2_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3228
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "notifyuntil_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p3

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3229
    if-eqz v4, :cond_1

    .line 3230
    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iput v7, v9, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    goto :goto_0

    .line 3237
    .end local v7    # "until":I
    :cond_5
    if-eqz v2, :cond_7

    const/4 v9, 0x1

    if-eq v2, v9, :cond_7

    .line 3238
    const/4 v8, 0x1

    .line 3239
    if-eqz v4, :cond_6

    .line 3240
    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    const/4 v10, 0x0

    iput v10, v9, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 3242
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "notify2_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3244
    :cond_7
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    const-wide/16 v10, 0x0

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1, v10, v11}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    goto/16 :goto_1
.end method

.method private applyDialogsNotificationsSettings(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3253
    .local p1, "dialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    const/4 v3, 0x0

    .line 3254
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 3255
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 3256
    .local v1, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v5, :cond_1

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    if-eqz v5, :cond_1

    .line 3257
    if-nez v3, :cond_0

    .line 3258
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "Notifications"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 3259
    .local v4, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 3262
    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v5, :cond_2

    .line 3263
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v5, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 3269
    .local v2, "dialog_id":I
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "silent_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->silent:Z

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3270
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    if-eqz v5, :cond_5

    .line 3271
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v6

    const v7, 0x1e13380

    add-int/2addr v6, v7

    if-le v5, v6, :cond_4

    .line 3272
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notify2_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3273
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    const v6, 0x7fffffff

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 3254
    .end local v2    # "dialog_id":I
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 3264
    :cond_2
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v5, :cond_3

    .line 3265
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v2, v5

    .restart local v2    # "dialog_id":I
    goto :goto_1

    .line 3267
    .end local v2    # "dialog_id":I
    :cond_3
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v2, v5

    .restart local v2    # "dialog_id":I
    goto :goto_1

    .line 3275
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notify2_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3276
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyuntil_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 3279
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notify2_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 3283
    .end local v1    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v2    # "dialog_id":I
    :cond_6
    if-eqz v3, :cond_7

    .line 3284
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3286
    :cond_7
    return-void
.end method

.method public static checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 9
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 7365
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 7390
    :cond_0
    :goto_0
    return v5

    .line 7368
    :cond_1
    const/4 v3, 0x0

    .line 7369
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v0, 0x0

    .line 7370
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    const-string/jumbo v7, "user_id"

    invoke-virtual {p0, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 7371
    .local v4, "user_id":I
    const-string/jumbo v7, "chat_id"

    invoke-virtual {p0, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 7372
    .local v1, "chat_id":I
    if-eqz v4, :cond_5

    .line 7373
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 7377
    :cond_2
    :goto_1
    if-nez v3, :cond_3

    if-eqz v0, :cond_0

    .line 7380
    :cond_3
    const/4 v2, 0x0

    .line 7381
    .local v2, "reason":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 7382
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->restriction_reason:Ljava/lang/String;

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7386
    :cond_4
    :goto_2
    if-eqz v2, :cond_0

    .line 7387
    invoke-static {p1, v2}, Lorg/telegram/messenger/MessagesController;->showCantOpenAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V

    move v5, v6

    .line 7388
    goto :goto_0

    .line 7374
    .end local v2    # "reason":Ljava/lang/String;
    :cond_5
    if-eqz v1, :cond_2

    .line 7375
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    goto :goto_1

    .line 7383
    .restart local v2    # "reason":Ljava/lang/String;
    :cond_6
    if-eqz v3, :cond_4

    .line 7384
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/lang/String;

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method private checkChannelError(Ljava/lang/String;I)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "channelId"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5062
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 5073
    :goto_1
    return-void

    .line 5062
    :sswitch_0
    const-string/jumbo v4, "CHANNEL_PRIVATE"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "CHANNEL_PUBLIC_GROUP_NA"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "USER_BANNED_IN_CHANNEL"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v3

    goto :goto_0

    .line 5064
    :pswitch_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->chatInfoCantLoad:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {v0, v4, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 5067
    :pswitch_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->chatInfoCantLoad:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {v0, v4, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 5070
    :pswitch_2
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->chatInfoCantLoad:I

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 5062
    :sswitch_data_0
    .sparse-switch
        -0x6bd947ea -> :sswitch_2
        -0x2f6631f9 -> :sswitch_0
        -0x1c1436b3 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private checkDeletingTask(Z)Z
    .locals 3
    .param p1, "runnable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1440
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    .line 1442
    .local v0, "currentServerTime":I
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskMids:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    if-nez p1, :cond_0

    iget v2, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskTime:I

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskTime:I

    if-gt v2, v0, :cond_2

    .line 1443
    :cond_0
    iput v1, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskTime:I

    .line 1444
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 1445
    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 1447
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    .line 1448
    new-instance v1, Lorg/telegram/messenger/MessagesController$20;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesController$20;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1463
    const/4 v1, 0x1

    .line 1465
    :cond_2
    return v1
.end method

.method private deleteDialog(JZII)V
    .locals 25
    .param p1, "did"    # J
    .param p3, "first"    # Z
    .param p4, "onlyHistory"    # I
    .param p5, "max_id"    # I

    .prologue
    .line 1844
    move-wide/from16 v0, p1

    long-to-int v0, v0

    move/from16 v16, v0

    .line 1845
    .local v16, "lower_part":I
    const/16 v4, 0x20

    shr-long v6, p1, v4

    long-to-int v14, v6

    .line 1846
    .local v14, "high_id":I
    move/from16 v17, p5

    .line 1848
    .local v17, "max_id_delete":I
    const/4 v4, 0x2

    move/from16 v0, p4

    if-ne v0, v4, :cond_1

    .line 1849
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-wide/from16 v0, p1

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->deleteDialog(JI)V

    .line 1975
    :cond_0
    :goto_0
    return-void

    .line 1852
    :cond_1
    if-eqz p4, :cond_2

    const/4 v4, 0x3

    move/from16 v0, p4

    if-ne v0, v4, :cond_3

    .line 1853
    :cond_2
    invoke-static/range {p1 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->uninstallShortcut(J)V

    .line 1856
    :cond_3
    if-eqz p3, :cond_9

    .line 1857
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-wide/from16 v0, p1

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->deleteDialog(JI)V

    .line 1858
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 1859
    .local v13, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v13, :cond_8

    .line 1860
    if-nez v17, :cond_4

    .line 1861
    const/4 v4, 0x0

    iget v6, v13, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1863
    :cond_4
    if-eqz p4, :cond_5

    const/4 v4, 0x3

    move/from16 v0, p4

    if-ne v0, v4, :cond_a

    .line 1864
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1865
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v13}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1866
    sget-object v4, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v6, Lorg/telegram/messenger/MessagesController$35;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v6, v0, v1, v2}, Lorg/telegram/messenger/MessagesController$35;-><init>(Lorg/telegram/messenger/MessagesController;J)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1875
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1876
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1877
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1878
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1879
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    .line 1884
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    iget-wide v6, v13, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/messenger/MessageObject;

    .line 1885
    .local v21, "object":Lorg/telegram/messenger/MessageObject;
    if-eqz v21, :cond_b

    .line 1886
    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v15

    .line 1887
    .local v15, "lastMessageId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1892
    :goto_2
    if-eqz v21, :cond_7

    move-object/from16 v0, v21

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_7

    .line 1893
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    move-object/from16 v0, v21

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1895
    :cond_7
    const/4 v4, 0x1

    move/from16 v0, p4

    if-ne v0, v4, :cond_e

    if-eqz v16, :cond_e

    if-lez v15, :cond_e

    .line 1896
    new-instance v18, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    .line 1897
    .local v18, "message":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    iget v4, v13, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    move-object/from16 v0, v18

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->id:I

    .line 1898
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->out:Z

    .line 1899
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    move-object/from16 v0, v18

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->from_id:I

    .line 1900
    move-object/from16 v0, v18

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    or-int/lit16 v4, v4, 0x100

    move-object/from16 v0, v18

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 1901
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionHistoryClear;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageActionHistoryClear;-><init>()V

    move-object/from16 v0, v18

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 1902
    iget v4, v13, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    move-object/from16 v0, v18

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    .line 1903
    if-lez v16, :cond_c

    .line 1904
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    move-object/from16 v0, v18

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1905
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move/from16 v0, v16

    iput v0, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 1916
    :goto_3
    new-instance v19, Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v4, v6}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 1917
    .local v19, "obj":Lorg/telegram/messenger/MessageObject;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1918
    .local v20, "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1919
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1920
    .local v5, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1921
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;)V

    .line 1922
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 1927
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v15    # "lastMessageId":I
    .end local v18    # "message":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    .end local v19    # "obj":Lorg/telegram/messenger/MessageObject;
    .end local v20    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v21    # "object":Lorg/telegram/messenger/MessageObject;
    :cond_8
    :goto_4
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1928
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->removeAllMessagesFromDialog:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1929
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v4

    new-instance v6, Lorg/telegram/messenger/MessagesController$36;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v6, v0, v1, v2}, Lorg/telegram/messenger/MessagesController$36;-><init>(Lorg/telegram/messenger/MessagesController;J)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1942
    .end local v13    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_9
    const/4 v4, 0x1

    if-eq v14, v4, :cond_0

    const/4 v4, 0x3

    move/from16 v0, p4

    if-eq v0, v4, :cond_0

    .line 1946
    if-eqz v16, :cond_10

    .line 1947
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v22

    .line 1948
    .local v22, "peer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    if-eqz v22, :cond_0

    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-nez v4, :cond_0

    .line 1951
    new-instance v23, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;

    invoke-direct/range {v23 .. v23}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;-><init>()V

    .line 1952
    .local v23, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1953
    move/from16 v0, v17

    move-object/from16 v1, v23

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->max_id:I

    .line 1954
    if-eqz p4, :cond_f

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, v23

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->just_clear:Z

    .line 1955
    move/from16 v11, v17

    .line 1956
    .local v11, "max_id_delete_final":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v6, Lorg/telegram/messenger/MessagesController$37;

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move/from16 v10, p4

    invoke-direct/range {v6 .. v11}, Lorg/telegram/messenger/MessagesController$37;-><init>(Lorg/telegram/messenger/MessagesController;JII)V

    const/16 v7, 0x40

    move-object/from16 v0, v23

    invoke-virtual {v4, v0, v6, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_0

    .line 1881
    .end local v11    # "max_id_delete_final":I
    .end local v22    # "peer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .end local v23    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;
    .restart local v13    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_a
    const/4 v4, 0x0

    iput v4, v13, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    goto/16 :goto_1

    .line 1889
    .restart local v21    # "object":Lorg/telegram/messenger/MessageObject;
    :cond_b
    iget v15, v13, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    .line 1890
    .restart local v15    # "lastMessageId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    iget v6, v13, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "object":Lorg/telegram/messenger/MessageObject;
    check-cast v21, Lorg/telegram/messenger/MessageObject;

    .restart local v21    # "object":Lorg/telegram/messenger/MessageObject;
    goto/16 :goto_2

    .line 1907
    .restart local v18    # "message":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    :cond_c
    move/from16 v0, v16

    neg-int v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v12

    .line 1908
    .local v12, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v12}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1909
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    move-object/from16 v0, v18

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1910
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move/from16 v0, v16

    neg-int v6, v0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    goto/16 :goto_3

    .line 1912
    :cond_d
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    move-object/from16 v0, v18

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1913
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move/from16 v0, v16

    neg-int v6, v0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    goto/16 :goto_3

    .line 1924
    .end local v12    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v18    # "message":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    :cond_e
    const/4 v4, 0x0

    iput v4, v13, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    goto/16 :goto_4

    .line 1954
    .end local v13    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v15    # "lastMessageId":I
    .end local v21    # "object":Lorg/telegram/messenger/MessageObject;
    .restart local v22    # "peer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .restart local v23    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;
    :cond_f
    const/4 v4, 0x0

    goto :goto_5

    .line 1969
    .end local v22    # "peer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .end local v23    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;
    :cond_10
    const/4 v4, 0x1

    move/from16 v0, p4

    if-ne v0, v4, :cond_11

    .line 1970
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/SecretChatHelper;->sendClearHistoryMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto/16 :goto_0

    .line 1972
    :cond_11
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v4

    invoke-virtual {v4, v14}, Lorg/telegram/messenger/SecretChatHelper;->declineSecretChat(I)V

    goto/16 :goto_0
.end method

.method private getChannelDifference(I)V
    .locals 4
    .param p1, "channelId"    # I

    .prologue
    .line 4797
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(IIJ)V

    .line 4798
    return-void
.end method

.method public static getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;
    .locals 2
    .param p0, "chatId"    # I

    .prologue
    .line 393
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    return-object v0
.end method

.method public static getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;
    .locals 4
    .param p0, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 382
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;

    if-nez v1, :cond_0

    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;

    if-eqz v1, :cond_1

    .line 383
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputChannel;-><init>()V

    .line 384
    .local v0, "inputChat":Lorg/telegram/tgnet/TLRPC$InputChannel;
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:I

    .line 385
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputChannel;->access_hash:J

    .line 388
    .end local v0    # "inputChat":Lorg/telegram/tgnet/TLRPC$InputChannel;
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputChannelEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputChannelEmpty;-><init>()V

    goto :goto_0
.end method

.method public static getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;
    .locals 6
    .param p0, "id"    # I

    .prologue
    .line 398
    if-gez p0, :cond_2

    .line 399
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-int v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 400
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 401
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    .line 402
    .local v1, "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    neg-int v3, p0

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    .line 403
    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    iput-wide v4, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    .line 416
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_0
    :goto_0
    return-object v1

    .line 405
    .end local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .restart local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;-><init>()V

    .line 406
    .restart local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    neg-int v3, p0

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:I

    goto :goto_0

    .line 409
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 410
    .local v2, "user":Lorg/telegram/tgnet/TLRPC$User;
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;-><init>()V

    .line 411
    .restart local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    iput p0, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:I

    .line 412
    if-eqz v2, :cond_0

    .line 413
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$User;->access_hash:J

    iput-wide v4, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    goto :goto_0
.end method

.method public static getInputUser(I)Lorg/telegram/tgnet/TLRPC$InputUser;
    .locals 3
    .param p0, "user_id"    # I

    .prologue
    .line 377
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 378
    .local v0, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    return-object v1
.end method

.method public static getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;
    .locals 4
    .param p0, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 362
    if-nez p0, :cond_0

    .line 363
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputUserEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputUserEmpty;-><init>()V

    .line 373
    :goto_0
    return-object v0

    .line 366
    :cond_0
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 367
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;-><init>()V

    .local v0, "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    goto :goto_0

    .line 369
    .end local v0    # "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputUser;-><init>()V

    .line 370
    .restart local v0    # "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$InputUser;->user_id:I

    .line 371
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$User;->access_hash:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputUser;->access_hash:J

    goto :goto_0
.end method

.method public static getInstance()Lorg/telegram/messenger/MessagesController;
    .locals 4

    .prologue
    .line 231
    sget-object v0, Lorg/telegram/messenger/MessagesController;->Instance:Lorg/telegram/messenger/MessagesController;

    .line 232
    .local v0, "localInstance":Lorg/telegram/messenger/MessagesController;
    if-nez v0, :cond_1

    .line 233
    const-class v3, Lorg/telegram/messenger/MessagesController;

    monitor-enter v3

    .line 234
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/MessagesController;->Instance:Lorg/telegram/messenger/MessagesController;

    .line 235
    if-nez v0, :cond_0

    .line 236
    new-instance v1, Lorg/telegram/messenger/MessagesController;

    invoke-direct {v1}, Lorg/telegram/messenger/MessagesController;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Lorg/telegram/messenger/MessagesController;
    .local v1, "localInstance":Lorg/telegram/messenger/MessagesController;
    :try_start_1
    sput-object v1, Lorg/telegram/messenger/MessagesController;->Instance:Lorg/telegram/messenger/MessagesController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 238
    .end local v1    # "localInstance":Lorg/telegram/messenger/MessagesController;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/MessagesController;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 240
    :cond_1
    return-object v0

    .line 238
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/messenger/MessagesController;
    .restart local v1    # "localInstance":Lorg/telegram/messenger/MessagesController;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/messenger/MessagesController;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/MessagesController;
    goto :goto_0
.end method

.method public static getPeer(I)Lorg/telegram/tgnet/TLRPC$Peer;
    .locals 5
    .param p0, "id"    # I

    .prologue
    .line 421
    if-gez p0, :cond_2

    .line 422
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-int v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 423
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_channel;

    if-nez v3, :cond_0

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;

    if-eqz v3, :cond_1

    .line 424
    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    .line 425
    .local v1, "inputPeer":Lorg/telegram/tgnet/TLRPC$Peer;
    neg-int v3, p0

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    .line 435
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :goto_0
    return-object v1

    .line 427
    .end local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$Peer;
    .restart local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    .line 428
    .restart local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$Peer;
    neg-int v3, p0

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    goto :goto_0

    .line 431
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$Peer;
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 432
    .local v2, "user":Lorg/telegram/tgnet/TLRPC$User;
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    .line 433
    .restart local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$Peer;
    iput p0, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    goto :goto_0
.end method

.method private static getRestrictionReason(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 7343
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 7353
    :cond_0
    :goto_0
    return-object v2

    .line 7346
    :cond_1
    const-string/jumbo v3, ": "

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 7347
    .local v0, "index":I
    if-lez v0, :cond_0

    .line 7348
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 7349
    .local v1, "type":Ljava/lang/String;
    const-string/jumbo v3, "-all"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "-android"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7350
    :cond_2
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getUpdateChannelId(Lorg/telegram/tgnet/TLRPC$Update;)I
    .locals 1
    .param p1, "update"    # Lorg/telegram/tgnet/TLRPC$Update;

    .prologue
    .line 5462
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    if-eqz v0, :cond_0

    .line 5463
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    .end local p1    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    .line 5467
    :goto_0
    return v0

    .line 5464
    .restart local p1    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    if-eqz v0, :cond_1

    .line 5465
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    .end local p1    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    goto :goto_0

    .line 5467
    .restart local p1    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_1
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    goto :goto_0
.end method

.method private getUpdateSeq(Lorg/telegram/tgnet/TLRPC$Updates;)I
    .locals 1
    .param p1, "updates"    # Lorg/telegram/tgnet/TLRPC$Updates;

    .prologue
    .line 4543
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updatesCombined;

    if-eqz v0, :cond_0

    .line 4544
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;->seq_start:I

    .line 4546
    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    goto :goto_0
.end method

.method private getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I
    .locals 1
    .param p1, "update"    # Lorg/telegram/tgnet/TLRPC$Update;

    .prologue
    .line 5448
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateReadMessagesContents;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteMessages;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateWebPage;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;

    if-eqz v0, :cond_1

    .line 5451
    :cond_0
    const/4 v0, 0x0

    .line 5457
    :goto_0
    return v0

    .line 5452
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;

    if-eqz v0, :cond_2

    .line 5453
    const/4 v0, 0x1

    goto :goto_0

    .line 5454
    :cond_2
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    if-nez v0, :cond_3

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteChannelMessages;

    if-nez v0, :cond_3

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    if-eqz v0, :cond_4

    .line 5455
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    .line 5457
    :cond_4
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    .locals 1
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 2249
    if-nez p1, :cond_0

    .line 2250
    const-string/jumbo v0, ""

    .line 2257
    :goto_0
    return-object v0

    .line 2252
    :cond_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 2253
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    goto :goto_0

    .line 2254
    :cond_1
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 2255
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    goto :goto_0

    .line 2257
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static isFeatureEnabled(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 5
    .param p0, "feature"    # Ljava/lang/String;
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    const/4 v3, 0x1

    .line 323
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p1, :cond_1

    .line 338
    :cond_0
    :goto_0
    return v3

    .line 326
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;

    .line 327
    .local v1, "disabledFeature":Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;->feature:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 328
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 329
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 330
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "Oops!"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 331
    const-string/jumbo v3, "OK"

    const v4, 0x7f07039f

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 332
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;->description:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 333
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 335
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isNotifySettingsMuted(Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;)Z
    .locals 2
    .param p1, "settings"    # Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .prologue
    .line 7133
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    if-eqz v0, :cond_0

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidUpdate(Lorg/telegram/tgnet/TLRPC$Updates;I)I
    .locals 6
    .param p1, "updates"    # Lorg/telegram/tgnet/TLRPC$Updates;
    .param p2, "type"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 4572
    if-nez p2, :cond_3

    .line 4573
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUpdateSeq(Lorg/telegram/tgnet/TLRPC$Updates;)I

    move-result v0

    .line 4574
    .local v0, "seq":I
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    add-int/lit8 v4, v4, 0x1

    if-eq v4, v0, :cond_0

    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    if-ne v4, v0, :cond_2

    :cond_0
    move v1, v3

    .line 4598
    .end local v0    # "seq":I
    :cond_1
    :goto_0
    return v1

    .line 4576
    .restart local v0    # "seq":I
    :cond_2
    sget v3, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    if-lt v3, v0, :cond_1

    move v1, v2

    .line 4579
    goto :goto_0

    .line 4581
    .end local v0    # "seq":I
    :cond_3
    if-ne p2, v1, :cond_5

    .line 4582
    iget v4, p1, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    sget v5, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    if-gt v4, v5, :cond_4

    move v1, v2

    .line 4583
    goto :goto_0

    .line 4584
    :cond_4
    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$Updates;->pts_count:I

    add-int/2addr v2, v4

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    if-ne v2, v4, :cond_1

    move v1, v3

    .line 4585
    goto :goto_0

    .line 4589
    :cond_5
    if-ne p2, v2, :cond_7

    .line 4590
    iget v4, p1, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    sget v5, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    if-gt v4, v5, :cond_6

    move v1, v2

    .line 4591
    goto :goto_0

    .line 4592
    :cond_6
    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v2, v4

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    if-ne v2, v4, :cond_1

    move v1, v3

    .line 4593
    goto :goto_0

    :cond_7
    move v1, v3

    .line 4598
    goto :goto_0
.end method

.method private migrateDialogs(IIIIIJ)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "offsetDate"    # I
    .param p3, "offsetUser"    # I
    .param p4, "offsetChat"    # I
    .param p5, "offsetChannel"    # I
    .param p6, "accessPeer"    # J

    .prologue
    .line 2764
    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->migratingDialogs:Z

    if-nez v1, :cond_0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 2926
    :cond_0
    :goto_0
    return-void

    .line 2767
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->migratingDialogs:Z

    .line 2769
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;-><init>()V

    .line 2770
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;
    const/16 v1, 0x64

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->limit:I

    .line 2771
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_id:I

    .line 2772
    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_date:I

    .line 2773
    if-nez p1, :cond_2

    .line 2774
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2788
    :goto_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$53;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$53;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    .line 2776
    :cond_2
    if-eqz p5, :cond_3

    .line 2777
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2778
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput p5, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    .line 2786
    :goto_2
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-wide p6, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    goto :goto_1

    .line 2779
    :cond_3
    if-eqz p3, :cond_4

    .line 2780
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2781
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput p3, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:I

    goto :goto_2

    .line 2783
    :cond_4
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2784
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput p4, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:I

    goto :goto_2
.end method

.method public static openByUserName(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;I)V
    .locals 7
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "type"    # I

    .prologue
    const/4 v6, 0x0

    .line 7426
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 7495
    :cond_0
    :goto_0
    return-void

    .line 7429
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, p0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 7430
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v3, :cond_2

    .line 7431
    const/4 v4, 0x0

    invoke-static {v3, v4, p1, p2}, Lorg/telegram/messenger/MessagesController;->openChatOrProfileWith(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    goto :goto_0

    .line 7433
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 7436
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 7437
    .local v0, "progressDialog":Landroid/app/ProgressDialog;
    const-string/jumbo v4, "Loading"

    const v5, 0x7f0702d1

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 7438
    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 7439
    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 7441
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 7442
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;
    iput-object p0, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    .line 7443
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/messenger/MessagesController$108;

    invoke-direct {v5, v0, p1, p2}, Lorg/telegram/messenger/MessagesController$108;-><init>(Landroid/app/ProgressDialog;Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    invoke-virtual {v4, v1, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v2

    .line 7478
    .local v2, "reqId":I
    const/4 v4, -0x2

    const-string/jumbo v5, "Cancel"

    const v6, 0x7f0700f2

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/messenger/MessagesController$109;

    invoke-direct {v6, v2, p1}, Lorg/telegram/messenger/MessagesController$109;-><init>(ILorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 7492
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setVisibleDialog(Landroid/app/Dialog;)V

    .line 7493
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method public static openChatOrProfileWith(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/BaseFragment;I)V
    .locals 5
    .param p0, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;
    .param p2, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p3, "type"    # I

    .prologue
    .line 7394
    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p2, :cond_2

    .line 7423
    :cond_1
    :goto_0
    return-void

    .line 7397
    :cond_2
    const/4 v2, 0x0

    .line 7398
    .local v2, "reason":Ljava/lang/String;
    const/4 v1, 0x0

    .line 7399
    .local v1, "closeLast":Z
    if-eqz p1, :cond_4

    .line 7400
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->restriction_reason:Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7408
    :cond_3
    :goto_1
    if-eqz v2, :cond_5

    .line 7409
    invoke-static {p2, v2}, Lorg/telegram/messenger/MessagesController;->showCantOpenAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 7401
    :cond_4
    if-eqz p0, :cond_3

    .line 7402
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7403
    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v3, :cond_3

    .line 7404
    const/4 p3, 0x1

    .line 7405
    const/4 v1, 0x1

    goto :goto_1

    .line 7411
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7412
    .local v0, "args":Landroid/os/Bundle;
    if-eqz p1, :cond_6

    .line 7413
    const-string/jumbo v3, "chat_id"

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7417
    :goto_2
    if-nez p3, :cond_7

    .line 7418
    new-instance v3, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v3, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 7415
    :cond_6
    const-string/jumbo v3, "user_id"

    iget v4, p0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 7420
    :cond_7
    new-instance v3, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v3, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2, v3, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_0
.end method

.method private processChannelsUpdatesQueue(II)V
    .locals 12
    .param p1, "channelId"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v10, 0x1

    .line 4602
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 4603
    .local v5, "updatesQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    if-nez v5, :cond_1

    .line 4659
    :cond_0
    :goto_0
    return-void

    .line 4606
    :cond_1
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 4607
    .local v2, "channelPts":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    if-nez v2, :cond_3

    .line 4608
    :cond_2
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4611
    :cond_3
    new-instance v7, Lorg/telegram/messenger/MessagesController$85;

    invoke-direct {v7, p0}, Lorg/telegram/messenger/MessagesController$85;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4617
    const/4 v1, 0x0

    .line 4618
    .local v1, "anyProceed":Z
    const/4 v7, 0x2

    if-ne p2, v7, :cond_4

    .line 4619
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Updates;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4621
    :cond_4
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_b

    .line 4622
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 4624
    .local v4, "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    iget v7, v4, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-gt v7, v8, :cond_5

    .line 4625
    const/4 v3, 0x2

    .line 4631
    .local v3, "updateState":I
    :goto_2
    if-nez v3, :cond_7

    .line 4632
    invoke-virtual {p0, v4, v10}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 4633
    const/4 v1, 0x1

    .line 4634
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4635
    add-int/lit8 v0, v0, -0x1

    .line 4621
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4626
    .end local v3    # "updateState":I
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$Updates;->pts_count:I

    add-int/2addr v7, v8

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    if-ne v7, v8, :cond_6

    .line 4627
    const/4 v3, 0x0

    .restart local v3    # "updateState":I
    goto :goto_2

    .line 4629
    .end local v3    # "updateState":I
    :cond_6
    const/4 v3, 0x1

    .restart local v3    # "updateState":I
    goto :goto_2

    .line 4636
    :cond_7
    if-ne v3, v10, :cond_a

    .line 4637
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 4638
    .local v6, "updatesStartWaitTime":Ljava/lang/Long;
    if-eqz v6, :cond_9

    if-nez v1, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/16 v10, 0x5dc

    cmp-long v7, v8, v10

    if-gtz v7, :cond_9

    .line 4639
    :cond_8
    const-string/jumbo v7, "tmessages"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "HOLE IN CHANNEL "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " UPDATES QUEUE - will wait more time"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4640
    if-eqz v1, :cond_0

    .line 4641
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4645
    :cond_9
    const-string/jumbo v7, "tmessages"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "HOLE IN CHANNEL "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " UPDATES QUEUE - getChannelDifference "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4646
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4647
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4648
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V

    goto/16 :goto_0

    .line 4652
    .end local v6    # "updatesStartWaitTime":Ljava/lang/Long;
    :cond_a
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4653
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_3

    .line 4656
    .end local v3    # "updateState":I
    .end local v4    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    :cond_b
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4657
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4658
    const-string/jumbo v7, "tmessages"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "UPDATES CHANNEL "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " QUEUE PROCEED - OK"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private processUpdatesQueue(II)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v7, 0x2

    const-wide/16 v10, 0x0

    const/4 v6, 0x1

    .line 4662
    const/4 v4, 0x0

    .line 4663
    .local v4, "updatesQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    if-nez p1, :cond_2

    .line 4664
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueSeq:Ljava/util/ArrayList;

    .line 4665
    new-instance v5, Lorg/telegram/messenger/MessagesController$86;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/MessagesController$86;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4688
    :cond_0
    :goto_0
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    .line 4689
    const/4 v1, 0x0

    .line 4690
    .local v1, "anyProceed":Z
    if-ne p2, v7, :cond_1

    .line 4691
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 4692
    .local v3, "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    if-nez p1, :cond_4

    .line 4693
    invoke-direct {p0, v3}, Lorg/telegram/messenger/MessagesController;->getUpdateSeq(Lorg/telegram/tgnet/TLRPC$Updates;)I

    move-result v5

    sput v5, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    .line 4700
    .end local v3    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    :cond_1
    :goto_1
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_b

    .line 4701
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 4702
    .restart local v3    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    invoke-direct {p0, v3, p1}, Lorg/telegram/messenger/MessagesController;->isValidUpdate(Lorg/telegram/tgnet/TLRPC$Updates;I)I

    move-result v2

    .line 4703
    .local v2, "updateState":I
    if-nez v2, :cond_6

    .line 4704
    invoke-virtual {p0, v3, v6}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 4705
    const/4 v1, 0x1

    .line 4706
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4707
    add-int/lit8 v0, v0, -0x1

    .line 4700
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4671
    .end local v0    # "a":I
    .end local v1    # "anyProceed":Z
    .end local v2    # "updateState":I
    .end local v3    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    :cond_2
    if-ne p1, v6, :cond_3

    .line 4672
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->updatesQueuePts:Ljava/util/ArrayList;

    .line 4673
    new-instance v5, Lorg/telegram/messenger/MessagesController$87;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/MessagesController$87;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 4679
    :cond_3
    if-ne p1, v7, :cond_0

    .line 4680
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueQts:Ljava/util/ArrayList;

    .line 4681
    new-instance v5, Lorg/telegram/messenger/MessagesController$88;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/MessagesController$88;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 4694
    .restart local v1    # "anyProceed":Z
    .restart local v3    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    :cond_4
    if-ne p1, v6, :cond_5

    .line 4695
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    sput v5, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    goto :goto_1

    .line 4697
    :cond_5
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    sput v5, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    goto :goto_1

    .line 4708
    .restart local v0    # "a":I
    .restart local v2    # "updateState":I
    :cond_6
    if-ne v2, v6, :cond_a

    .line 4709
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUpdatesStartTime(I)J

    move-result-wide v6

    cmp-long v5, v6, v10

    if-eqz v5, :cond_9

    if-nez v1, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUpdatesStartTime(I)J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x5dc

    cmp-long v5, v6, v8

    if-gtz v5, :cond_9

    .line 4710
    :cond_7
    const-string/jumbo v5, "tmessages"

    const-string/jumbo v6, "HOLE IN UPDATES QUEUE - will wait more time"

    invoke-static {v5, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4711
    if-eqz v1, :cond_8

    .line 4712
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {p0, p1, v6, v7}, Lorg/telegram/messenger/MessagesController;->setUpdatesStartTime(IJ)V

    .line 4731
    .end local v0    # "a":I
    .end local v1    # "anyProceed":Z
    .end local v2    # "updateState":I
    .end local v3    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    :cond_8
    :goto_4
    return-void

    .line 4716
    .restart local v0    # "a":I
    .restart local v1    # "anyProceed":Z
    .restart local v2    # "updateState":I
    .restart local v3    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    :cond_9
    const-string/jumbo v5, "tmessages"

    const-string/jumbo v6, "HOLE IN UPDATES QUEUE - getDifference"

    invoke-static {v5, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4717
    invoke-direct {p0, p1, v10, v11}, Lorg/telegram/messenger/MessagesController;->setUpdatesStartTime(IJ)V

    .line 4718
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4719
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->getDifference()V

    goto :goto_4

    .line 4723
    :cond_a
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4724
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 4727
    .end local v2    # "updateState":I
    .end local v3    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    :cond_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4728
    const-string/jumbo v5, "tmessages"

    const-string/jumbo v6, "UPDATES QUEUE PROCEED - OK"

    invoke-static {v5, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4730
    .end local v0    # "a":I
    .end local v1    # "anyProceed":Z
    :cond_c
    invoke-direct {p0, p1, v10, v11}, Lorg/telegram/messenger/MessagesController;->setUpdatesStartTime(IJ)V

    goto :goto_4
.end method

.method private reloadDialogsReadValue(Ljava/util/ArrayList;J)V
    .locals 6
    .param p2, "did"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 873
    .local p1, "dialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 952
    :goto_0
    return-void

    .line 876
    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;-><init>()V

    .line 877
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;
    if-eqz p1, :cond_1

    .line 878
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 879
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;->peers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v2, v4

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 882
    .end local v0    # "a":I
    :cond_1
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;->peers:Ljava/util/ArrayList;

    long-to-int v3, p2

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    :cond_2
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$9;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/MessagesController$9;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method private reloadMessages(Ljava/util/ArrayList;J)V
    .locals 12
    .param p2, "dialog_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 1101
    .local p1, "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1209
    :cond_0
    :goto_0
    return-void

    .line 1105
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1106
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p2, p3}, Lorg/telegram/messenger/ChatObject;->getChatByDialog(J)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    .line 1107
    .local v4, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1108
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;-><init>()V

    .line 1109
    .local v9, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    iput-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 1110
    iput-object v5, v9, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->id:Ljava/util/ArrayList;

    .line 1111
    move-object v10, v9

    .line 1117
    .end local v9    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;
    .local v10, "request":Lorg/telegram/tgnet/TLObject;
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingMessages:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 1118
    .local v7, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_4

    .line 1119
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 1120
    .local v8, "mid":Ljava/lang/Integer;
    if-eqz v7, :cond_3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1118
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1113
    .end local v6    # "a":I
    .end local v7    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "mid":Ljava/lang/Integer;
    .end local v10    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_2
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;-><init>()V

    .line 1114
    .local v9, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;
    iput-object v5, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;->id:Ljava/util/ArrayList;

    .line 1115
    move-object v10, v9

    .restart local v10    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_1

    .line 1123
    .end local v9    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;
    .restart local v6    # "a":I
    .restart local v7    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v8    # "mid":Ljava/lang/Integer;
    :cond_3
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1125
    .end local v8    # "mid":Ljava/lang/Integer;
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1128
    if-nez v7, :cond_5

    .line 1129
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1130
    .restart local v7    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingMessages:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    :cond_5
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1133
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v11

    new-instance v0, Lorg/telegram/messenger/MessagesController$12;

    move-object v1, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController$12;-><init>(Lorg/telegram/messenger/MessagesController;JLorg/telegram/tgnet/TLRPC$Chat;Ljava/util/ArrayList;)V

    invoke-virtual {v11, v10, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method private setUpdatesStartTime(IJ)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "time"    # J

    .prologue
    .line 4551
    if-nez p1, :cond_1

    .line 4552
    iput-wide p2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    .line 4558
    :cond_0
    :goto_0
    return-void

    .line 4553
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 4554
    iput-wide p2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    goto :goto_0

    .line 4555
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 4556
    iput-wide p2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    goto :goto_0
.end method

.method private static showCantOpenAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V
    .locals 3
    .param p0, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 7357
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7358
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v1, "AppName"

    const v2, 0x7f07009a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 7359
    const-string/jumbo v1, "OK"

    const v2, 0x7f07039f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7360
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 7361
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 7362
    return-void
.end method

.method private updatePrintingStrings()V
    .locals 22

    .prologue
    .line 2261
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 2262
    .local v12, "newPrintingStrings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/CharSequence;>;"
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 2264
    .local v13, "newPrintingStringsTypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    new-instance v7, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2265
    .local v7, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2266
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 2267
    .local v8, "key":J
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2269
    .local v2, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    long-to-int v11, v8

    .line 2271
    .local v11, "lower_id":I
    if-gtz v11, :cond_1

    if-eqz v11, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_f

    .line 2272
    :cond_1
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/MessagesController$PrintingUser;

    .line 2273
    .local v14, "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    iget v0, v14, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v15

    .line 2274
    .local v15, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v15, :cond_2

    .line 2360
    .end local v2    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;>;"
    .end local v8    # "key":J
    .end local v11    # "lower_id":I
    .end local v14    # "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    .end local v15    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_1
    return-void

    .line 2277
    .restart local v2    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;>;"
    .restart local v8    # "key":J
    .restart local v11    # "lower_id":I
    .restart local v14    # "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    .restart local v15    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    iget-object v0, v14, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordAudioAction;

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 2278
    if-gez v11, :cond_3

    .line 2279
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string/jumbo v17, "IsRecordingAudio"

    const v18, 0x7f07028e

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v17 .. v19}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2283
    :goto_2
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2281
    :cond_3
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string/jumbo v17, "RecordingAudio"

    const v18, 0x7f0703fe

    invoke-static/range {v17 .. v18}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2284
    :cond_4
    iget-object v0, v14, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadAudioAction;

    move/from16 v16, v0

    if-eqz v16, :cond_6

    .line 2285
    if-gez v11, :cond_5

    .line 2286
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string/jumbo v17, "IsSendingAudio"

    const v18, 0x7f07028f

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v17 .. v19}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2290
    :goto_3
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v17, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2288
    :cond_5
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string/jumbo v17, "SendingAudio"

    const v18, 0x7f070455

    invoke-static/range {v17 .. v18}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2291
    :cond_6
    iget-object v0, v14, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadVideoAction;

    move/from16 v16, v0

    if-nez v16, :cond_7

    iget-object v0, v14, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordVideoAction;

    move/from16 v16, v0

    if-eqz v16, :cond_9

    .line 2292
    :cond_7
    if-gez v11, :cond_8

    .line 2293
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string/jumbo v17, "IsSendingVideo"

    const v18, 0x7f070292

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v17 .. v19}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2297
    :goto_4
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v17, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2295
    :cond_8
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string/jumbo v17, "SendingVideoStatus"

    const v18, 0x7f070459

    invoke-static/range {v17 .. v18}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 2298
    :cond_9
    iget-object v0, v14, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadDocumentAction;

    move/from16 v16, v0

    if-eqz v16, :cond_b

    .line 2299
    if-gez v11, :cond_a

    .line 2300
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string/jumbo v17, "IsSendingFile"

    const v18, 0x7f070290

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v17 .. v19}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2304
    :goto_5
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v17, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2302
    :cond_a
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string/jumbo v17, "SendingFile"

    const v18, 0x7f070456

    invoke-static/range {v17 .. v18}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 2305
    :cond_b
    iget-object v0, v14, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadPhotoAction;

    move/from16 v16, v0

    if-eqz v16, :cond_d

    .line 2306
    if-gez v11, :cond_c

    .line 2307
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string/jumbo v17, "IsSendingPhoto"

    const v18, 0x7f070291

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v17 .. v19}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2311
    :goto_6
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v17, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2309
    :cond_c
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string/jumbo v17, "SendingPhoto"

    const v18, 0x7f070457

    invoke-static/range {v17 .. v18}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 2313
    :cond_d
    if-gez v11, :cond_e

    .line 2314
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string/jumbo v17, "%s %s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string/jumbo v20, "IsTyping"

    const v21, 0x7f070293

    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2318
    :goto_7
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2316
    :cond_e
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string/jumbo v17, "Typing"

    const v18, 0x7f0704d1

    invoke-static/range {v17 .. v18}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 2321
    .end local v14    # "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    .end local v15    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_f
    const/4 v3, 0x0

    .line 2322
    .local v3, "count":I
    const-string/jumbo v10, ""

    .line 2323
    .local v10, "label":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/MessagesController$PrintingUser;

    .line 2324
    .restart local v14    # "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    iget v0, v14, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v15

    .line 2325
    .restart local v15    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v15, :cond_12

    .line 2326
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_11

    .line 2327
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2329
    :cond_11
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2330
    add-int/lit8 v3, v3, 0x1

    .line 2332
    :cond_12
    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v3, v0, :cond_10

    .line 2336
    .end local v14    # "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    .end local v15    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_13
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_0

    .line 2337
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v3, v0, :cond_14

    .line 2338
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string/jumbo v17, "%s %s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v10, v18, v19

    const/16 v19, 0x1

    const-string/jumbo v20, "IsTyping"

    const v21, 0x7f070293

    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2346
    :goto_8
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2340
    :cond_14
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_15

    .line 2341
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string/jumbo v17, "%s %s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v10, v18, v19

    const/16 v19, 0x1

    const-string/jumbo v20, "AndMoreTyping"

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v21, v21, -0x2

    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 2343
    :cond_15
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string/jumbo v17, "%s %s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v10, v18, v19

    const/16 v19, 0x1

    const-string/jumbo v20, "AreTyping"

    const v21, 0x7f07009d

    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 2351
    .end local v2    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    .end local v3    # "count":I
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "key":J
    .end local v10    # "label":Ljava/lang/String;
    .end local v11    # "lower_id":I
    :cond_16
    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MessagesController;->lastPrintingStringCount:I

    .line 2353
    new-instance v16, Lorg/telegram/messenger/MessagesController$46;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v13}, Lorg/telegram/messenger/MessagesController$46;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1
.end method

.method private updatePrintingUsersWithNewMessages(JLjava/util/ArrayList;)Z
    .locals 13
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const-wide/16 v10, 0x0

    const/4 v7, 0x1

    .line 7151
    cmp-long v8, p1, v10

    if-lez v8, :cond_1

    .line 7152
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 7153
    .local v1, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    if-eqz v1, :cond_7

    .line 7154
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7184
    .end local v1    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    :cond_0
    :goto_0
    return v7

    .line 7157
    :cond_1
    cmp-long v8, p1, v10

    if-gez v8, :cond_7

    .line 7158
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 7159
    .local v5, "messagesUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 7160
    .local v4, "message":Lorg/telegram/messenger/MessageObject;
    iget-object v8, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 7161
    iget-object v8, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7165
    .end local v4    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_3
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 7166
    .restart local v1    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    const/4 v2, 0x0

    .line 7167
    .local v2, "changed":Z
    if-eqz v1, :cond_6

    .line 7168
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_6

    .line 7169
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessagesController$PrintingUser;

    .line 7170
    .local v6, "user":Lorg/telegram/messenger/MessagesController$PrintingUser;
    iget v8, v6, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 7171
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7172
    add-int/lit8 v0, v0, -0x1

    .line 7173
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 7174
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7176
    :cond_4
    const/4 v2, 0x1

    .line 7168
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7180
    .end local v0    # "a":I
    .end local v6    # "user":Lorg/telegram/messenger/MessagesController$PrintingUser;
    :cond_6
    if-nez v2, :cond_0

    .line 7184
    .end local v1    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    .end local v2    # "changed":Z
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "messagesUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_7
    const/4 v7, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addSupportUser()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 342
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;-><init>()V

    .line 343
    .local v0, "user":Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;
    const-string/jumbo v1, "333"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->phone:Ljava/lang/String;

    .line 344
    const v1, 0x514c8

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->id:I

    .line 345
    const-string/jumbo v1, "Telegram"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->first_name:Ljava/lang/String;

    .line 346
    const-string/jumbo v1, ""

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->last_name:Ljava/lang/String;

    .line 347
    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    .line 348
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhotoEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhotoEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 349
    invoke-virtual {p0, v0, v2}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 351
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;

    .end local v0    # "user":Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;-><init>()V

    .line 352
    .restart local v0    # "user":Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;
    const-string/jumbo v1, "42777"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->phone:Ljava/lang/String;

    .line 353
    const v1, 0xbdb28

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->id:I

    .line 354
    const-string/jumbo v1, "Telegram"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->first_name:Ljava/lang/String;

    .line 355
    const-string/jumbo v1, "Notifications"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->last_name:Ljava/lang/String;

    .line 356
    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    .line 357
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhotoEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhotoEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 358
    invoke-virtual {p0, v0, v2}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 359
    return-void
.end method

.method public addToViewsQueue(Lorg/telegram/tgnet/TLRPC$Message;Z)V
    .locals 6
    .param p1, "message"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p2, "reload"    # Z

    .prologue
    .line 3546
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3547
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    int-to-long v2, v1

    .line 3548
    .local v2, "messageId":J
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v1, :cond_0

    .line 3549
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    int-to-long v4, v1

    const/16 v1, 0x20

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    .line 3551
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3552
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->markMessagesContentAsRead(Ljava/util/ArrayList;)V

    .line 3553
    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/messenger/MessagesController$58;

    invoke-direct {v4, p0, p1}, Lorg/telegram/messenger/MessagesController$58;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Message;)V

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3575
    return-void
.end method

.method public addUserToChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 16
    .param p1, "chat_id"    # I
    .param p2, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p3, "info"    # Lorg/telegram/tgnet/TLRPC$ChatFull;
    .param p4, "count_fwd"    # I
    .param p5, "botHash"    # Ljava/lang/String;
    .param p6, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    .line 4122
    if-nez p2, :cond_1

    .line 4255
    :cond_0
    :goto_0
    return-void

    .line 4126
    :cond_1
    if-lez p1, :cond_9

    .line 4129
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v4

    .line 4130
    .local v4, "isChannel":Z
    if-eqz v4, :cond_3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_3

    const/4 v8, 0x1

    .line 4131
    .local v8, "isMegagroup":Z
    :goto_1
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v5

    .line 4132
    .local v5, "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    if-eqz p5, :cond_2

    if-eqz v4, :cond_7

    if-nez v8, :cond_7

    .line 4133
    :cond_2
    if-eqz v4, :cond_6

    .line 4134
    instance-of v2, v5, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;

    if-eqz v2, :cond_4

    .line 4135
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->joiningToChannels:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4138
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;-><init>()V

    .line 4139
    .local v13, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v13, Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4140
    move-object v14, v13

    .line 4141
    .local v14, "request":Lorg/telegram/tgnet/TLObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->joiningToChannels:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4177
    .end local v13    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;
    :goto_2
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v15

    new-instance v2, Lorg/telegram/messenger/MessagesController$76;

    move-object/from16 v3, p0

    move/from16 v6, p1

    move-object/from16 v7, p6

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/MessagesController$76;-><init>(Lorg/telegram/messenger/MessagesController;ZLorg/telegram/tgnet/TLRPC$InputUser;ILorg/telegram/ui/ActionBar/BaseFragment;Z)V

    invoke-virtual {v15, v14, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    .line 4130
    .end local v5    # "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    .end local v8    # "isMegagroup":Z
    .end local v14    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 4143
    .restart local v5    # "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    .restart local v8    # "isMegagroup":Z
    :cond_4
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v2, :cond_5

    if-nez v8, :cond_5

    .line 4144
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;-><init>()V

    .line 4145
    .local v13, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v13, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4146
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v13, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 4147
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelRoleEditor;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelRoleEditor;-><init>()V

    iput-object v2, v13, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;->role:Lorg/telegram/tgnet/TLRPC$ChannelParticipantRole;

    .line 4148
    move-object v14, v13

    .line 4149
    .restart local v14    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_2

    .line 4150
    .end local v13    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;
    .end local v14    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_5
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;-><init>()V

    .line 4151
    .local v13, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v13, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4152
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4153
    move-object v14, v13

    .line 4154
    .restart local v14    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_2

    .line 4157
    .end local v13    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;
    .end local v14    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_6
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;-><init>()V

    .line 4158
    .local v13, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;
    move/from16 v0, p1

    iput v0, v13, Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;->chat_id:I

    .line 4159
    move/from16 v0, p4

    iput v0, v13, Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;->fwd_limit:I

    .line 4160
    iput-object v5, v13, Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 4161
    move-object v14, v13

    .line 4162
    .restart local v14    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_2

    .line 4164
    .end local v13    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;
    .end local v14    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_7
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;-><init>()V

    .line 4165
    .local v13, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;
    iput-object v5, v13, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 4166
    if-eqz v4, :cond_8

    .line 4167
    move/from16 v0, p1

    neg-int v2, v0

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v13, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 4172
    :goto_3
    move-object/from16 v0, p5

    iput-object v0, v13, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->start_param:Ljava/lang/String;

    .line 4173
    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    iput-wide v2, v13, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->random_id:J

    .line 4174
    move-object v14, v13

    .restart local v14    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_2

    .line 4169
    .end local v14    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_8
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;-><init>()V

    iput-object v2, v13, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 4170
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move/from16 v0, p1

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:I

    goto :goto_3

    .line 4232
    .end local v4    # "isChannel":Z
    .end local v5    # "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    .end local v8    # "isMegagroup":Z
    .end local v13    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;
    :cond_9
    move-object/from16 v0, p3

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-eqz v2, :cond_0

    .line 4233
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_4
    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_a

    .line 4234
    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    move-object/from16 v0, p2

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    if-eq v2, v3, :cond_0

    .line 4233
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 4239
    :cond_a
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v10

    .line 4240
    .local v10, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget v2, v10, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v10, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    .line 4241
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 4242
    .local v11, "chatArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4243
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v2, v3, v11, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 4245
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;-><init>()V

    .line 4246
    .local v12, "newPart":Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;
    move-object/from16 v0, p2

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iput v2, v12, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->user_id:I

    .line 4247
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    iput v2, v12, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->inviter_id:I

    .line 4248
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    iput v2, v12, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->date:I

    .line 4249
    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4250
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    .line 4251
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    const/4 v7, 0x1

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v6, v7

    const/4 v7, 0x2

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v6, v7

    const/4 v7, 0x3

    const/4 v15, 0x0

    aput-object v15, v6, v7

    invoke-virtual {v2, v3, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4252
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v15, 0x20

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v6, v7

    invoke-virtual {v2, v3, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public addUsersToChannel(ILjava/util/ArrayList;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3
    .param p1, "chat_id"    # I
    .param p3, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$InputUser;",
            ">;",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3959
    .local p2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3984
    :cond_0
    :goto_0
    return-void

    .line 3962
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;-><init>()V

    .line 3963
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 3964
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;->users:Ljava/util/ArrayList;

    .line 3965
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$68;

    invoke-direct {v2, p0, p3}, Lorg/telegram/messenger/MessagesController$68;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public blockUser(I)V
    .locals 5
    .param p1, "user_id"    # I

    .prologue
    .line 1557
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 1558
    .local v1, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1580
    :cond_0
    :goto_0
    return-void

    .line 1561
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1562
    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v2, :cond_2

    .line 1563
    invoke-static {p1}, Lorg/telegram/messenger/query/SearchQuery;->removeInline(I)V

    .line 1567
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoaded:I

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1568
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_block;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_block;-><init>()V

    .line 1569
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_block;
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_block;->id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1570
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$24;

    invoke-direct {v3, p0, v1}, Lorg/telegram/messenger/MessagesController$24;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    .line 1565
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_block;
    :cond_2
    invoke-static {p1}, Lorg/telegram/messenger/query/SearchQuery;->removePeer(I)V

    goto :goto_1
.end method

.method public cancelLoadFullChat(I)V
    .locals 2
    .param p1, "cid"    # I

    .prologue
    .line 864
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullChats:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 865
    return-void
.end method

.method public cancelLoadFullUser(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 860
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 861
    return-void
.end method

.method public cancelTyping(IJ)V
    .locals 4
    .param p1, "action"    # I
    .param p2, "dialog_id"    # J

    .prologue
    .line 2363
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->sendingTypings:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 2364
    .local v0, "typings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_0

    .line 2365
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2367
    :cond_0
    return-void
.end method

.method public changeChatAvatar(ILorg/telegram/tgnet/TLRPC$InputFile;)V
    .locals 5
    .param p1, "chat_id"    # I
    .param p2, "uploadedAvatar"    # Lorg/telegram/tgnet/TLRPC$InputFile;

    .prologue
    .line 4382
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4383
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;-><init>()V

    .line 4384
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4385
    if-eqz p2, :cond_0

    .line 4386
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;->photo:Lorg/telegram/tgnet/TLRPC$InputChatPhoto;

    .line 4387
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;->photo:Lorg/telegram/tgnet/TLRPC$InputChatPhoto;

    iput-object p2, v2, Lorg/telegram/tgnet/TLRPC$InputChatPhoto;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 4388
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;->photo:Lorg/telegram/tgnet/TLRPC$InputChatPhoto;

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoCropAuto;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoCropAuto;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$InputChatPhoto;->crop:Lorg/telegram/tgnet/TLRPC$InputPhotoCrop;

    .line 4392
    :goto_0
    move-object v1, v0

    .line 4405
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;
    .local v1, "request":Lorg/telegram/tgnet/TLObject;
    :goto_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$79;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/MessagesController$79;-><init>(Lorg/telegram/messenger/MessagesController;)V

    const/16 v4, 0x40

    invoke-virtual {v2, v1, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 4414
    return-void

    .line 4390
    .end local v1    # "request":Lorg/telegram/tgnet/TLObject;
    .restart local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;
    :cond_0
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputChatPhotoEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputChatPhotoEmpty;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;->photo:Lorg/telegram/tgnet/TLRPC$InputChatPhoto;

    goto :goto_0

    .line 4394
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatPhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatPhoto;-><init>()V

    .line 4395
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_editChatPhoto;
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatPhoto;->chat_id:I

    .line 4396
    if-eqz p2, :cond_2

    .line 4397
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatPhoto;->photo:Lorg/telegram/tgnet/TLRPC$InputChatPhoto;

    .line 4398
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatPhoto;->photo:Lorg/telegram/tgnet/TLRPC$InputChatPhoto;

    iput-object p2, v2, Lorg/telegram/tgnet/TLRPC$InputChatPhoto;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 4399
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatPhoto;->photo:Lorg/telegram/tgnet/TLRPC$InputChatPhoto;

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoCropAuto;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoCropAuto;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$InputChatPhoto;->crop:Lorg/telegram/tgnet/TLRPC$InputPhotoCrop;

    .line 4403
    :goto_2
    move-object v1, v0

    .restart local v1    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_1

    .line 4401
    .end local v1    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_2
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputChatPhotoEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputChatPhotoEmpty;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatPhoto;->photo:Lorg/telegram/tgnet/TLRPC$InputChatPhoto;

    goto :goto_2
.end method

.method public changeChatTitle(ILjava/lang/String;)V
    .locals 9
    .param p1, "chat_id"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 4347
    if-lez p1, :cond_1

    .line 4349
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4350
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channels_editTitle;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channels_editTitle;-><init>()V

    .line 4351
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editTitle;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_editTitle;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4352
    iput-object p2, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_editTitle;->title:Ljava/lang/String;

    .line 4353
    move-object v3, v2

    .line 4360
    .end local v2    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editTitle;
    .local v3, "request":Lorg/telegram/tgnet/TLObject;
    :goto_0
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/messenger/MessagesController$78;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/MessagesController$78;-><init>(Lorg/telegram/messenger/MessagesController;)V

    const/16 v6, 0x40

    invoke-virtual {v4, v3, v5, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 4378
    .end local v3    # "request":Lorg/telegram/tgnet/TLObject;
    :goto_1
    return-void

    .line 4355
    :cond_0
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatTitle;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatTitle;-><init>()V

    .line 4356
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_editChatTitle;
    iput p1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatTitle;->chat_id:I

    .line 4357
    iput-object p2, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatTitle;->title:Ljava/lang/String;

    .line 4358
    move-object v3, v2

    .restart local v3    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_0

    .line 4370
    .end local v2    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_editChatTitle;
    .end local v3    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 4371
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 4372
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4373
    .local v1, "chatArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4374
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1, v7, v7}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 4375
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4376
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v6, v7, [Ljava/lang/Object;

    const/16 v7, 0x10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public checkChannelInviter(I)V
    .locals 1
    .param p1, "chat_id"    # I

    .prologue
    .line 5363
    new-instance v0, Lorg/telegram/messenger/MessagesController$95;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/MessagesController$95;-><init>(Lorg/telegram/messenger/MessagesController;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 5445
    return-void
.end method

.method protected checkLastDialogMessage(Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$InputPeer;J)V
    .locals 11
    .param p1, "dialog"    # Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .param p2, "peer"    # Lorg/telegram/tgnet/TLRPC$InputPeer;
    .param p3, "taskId"    # J

    .prologue
    const/4 v10, 0x1

    .line 3305
    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v6, v2

    .line 3306
    .local v6, "lower_id":I
    if-eqz v6, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->checkingLastMessagesDialogs:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3388
    :cond_0
    :goto_0
    return-void

    .line 3309
    :cond_1
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;-><init>()V

    .line 3310
    .local v9, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;
    if-nez p2, :cond_2

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    :goto_1
    iput-object v1, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3311
    iget-object v1, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v1, :cond_0

    .line 3314
    iput v10, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->limit:I

    .line 3315
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->checkingLastMessagesDialogs:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3318
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-nez v1, :cond_3

    .line 3319
    const/4 v0, 0x0

    .line 3321
    .local v0, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :try_start_0
    new-instance v7, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p2}, Lorg/telegram/tgnet/TLRPC$InputPeer;->getObjectSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x28

    invoke-direct {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3322
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v7, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    const/4 v1, 0x2

    :try_start_1
    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 3323
    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-virtual {v7, v2, v3}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt64(J)V

    .line 3324
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 3325
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 3326
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 3327
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 3328
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 3329
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pts:I

    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 3330
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->flags:I

    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 3331
    invoke-virtual {p2, v7}, Lorg/telegram/tgnet/TLRPC$InputPeer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v7

    .line 3335
    .end local v7    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :goto_2
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J

    move-result-wide v4

    .line 3340
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v4, "newTaskId":J
    :goto_3
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    new-instance v1, Lorg/telegram/messenger/MessagesController$56;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController$56;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_dialog;JI)V

    invoke-virtual {v10, v9, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    .end local v4    # "newTaskId":J
    :cond_2
    move-object v1, p2

    .line 3310
    goto :goto_1

    .line 3332
    .restart local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_0
    move-exception v8

    .line 3333
    .local v8, "e":Ljava/lang/Exception;
    :goto_4
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 3337
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_3
    move-wide v4, p3

    .restart local v4    # "newTaskId":J
    goto :goto_3

    .line 3332
    .end local v4    # "newTaskId":J
    .restart local v7    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_1
    move-exception v8

    move-object v0, v7

    .end local v7    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    goto :goto_4
.end method

.method public cleanup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 522
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->cleanup()V

    .line 523
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->cleanup()V

    .line 524
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/NotificationsController;->cleanup()V

    .line 525
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/SendMessagesHelper;->cleanup()V

    .line 526
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/SecretChatHelper;->cleanup()V

    .line 527
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->cleanup()V

    .line 528
    invoke-static {}, Lorg/telegram/messenger/query/SearchQuery;->cleanup()V

    .line 529
    invoke-static {}, Lorg/telegram/messenger/query/DraftQuery;->cleanup()V

    .line 531
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 532
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpagesPending:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 533
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 534
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 535
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 536
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->exportedChats:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 537
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->fullUsersAbout:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 538
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 539
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->joiningToChannels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 540
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->channelViewsToSend:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 541
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->channelViewsToReload:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 542
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 543
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 544
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 545
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 546
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 547
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->usersByUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 548
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 549
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 550
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 551
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->printingStrings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 552
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->printingStringsTypes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 553
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 554
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingPeerSettings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 555
    iput v2, p0, Lorg/telegram/messenger/MessagesController;->lastPrintingStringCount:I

    .line 556
    iput v2, p0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    .line 557
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$5;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesController$5;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 571
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 572
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->sendingTypings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 573
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 574
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 575
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingMessages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 576
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullChats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 577
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 578
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 579
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullChats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 581
    iput v2, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskTime:I

    .line 582
    iput-object v3, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskMids:Ljava/util/ArrayList;

    .line 583
    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->gettingNewDeleteTask:Z

    .line 584
    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->loadingDialogs:Z

    .line 585
    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->dialogsEndReached:Z

    .line 586
    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->loadingBlockedUsers:Z

    .line 587
    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->firstGettingTask:Z

    .line 588
    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->updatingState:Z

    .line 589
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J

    .line 590
    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->offlineSent:Z

    .line 591
    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->registeringForPush:Z

    .line 592
    iput-object v3, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    .line 593
    iput v2, p0, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    .line 594
    iput v2, p0, Lorg/telegram/messenger/MessagesController;->statusSettingState:I

    .line 596
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$6;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesController$6;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 609
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 610
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 611
    iput-object v3, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    .line 614
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->addSupportUser()V

    .line 615
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 616
    return-void
.end method

.method protected clearFullUsers()V
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 869
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullChats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 870
    return-void
.end method

.method public convertGroup()V
    .locals 0

    .prologue
    .line 5360
    return-void
.end method

.method public convertToMegaGroup(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "chat_id"    # I

    .prologue
    const/4 v5, 0x0

    .line 3895
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_migrateChat;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_migrateChat;-><init>()V

    .line 3896
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_migrateChat;
    iput p2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_migrateChat;->chat_id:I

    .line 3897
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 3898
    .local v0, "progressDialog":Landroid/app/ProgressDialog;
    const-string/jumbo v3, "Loading"

    const v4, 0x7f0702d1

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3899
    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 3900
    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 3901
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesController$66;

    invoke-direct {v4, p0, p1, v0}, Lorg/telegram/messenger/MessagesController$66;-><init>(Lorg/telegram/messenger/MessagesController;Landroid/content/Context;Landroid/app/ProgressDialog;)V

    invoke-virtual {v3, v1, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v2

    .line 3940
    .local v2, "reqId":I
    const/4 v3, -0x2

    const-string/jumbo v4, "Cancel"

    const v5, 0x7f0700f2

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/messenger/MessagesController$67;

    invoke-direct {v5, p0, v2}, Lorg/telegram/messenger/MessagesController$67;-><init>(Lorg/telegram/messenger/MessagesController;I)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 3952
    :try_start_0
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3956
    :goto_0
    return-void

    .line 3953
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public createChat(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ILorg/telegram/ui/ActionBar/BaseFragment;)I
    .locals 18
    .param p1, "title"    # Ljava/lang/String;
    .param p3, "about"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ")I"
        }
    .end annotation

    .prologue
    .line 3751
    .local p2, "selectedContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_1

    .line 3752
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_chat;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_chat;-><init>()V

    .line 3753
    .local v9, "chat":Lorg/telegram/tgnet/TLRPC$TL_chat;
    sget v2, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    iput v2, v9, Lorg/telegram/tgnet/TLRPC$TL_chat;->id:I

    .line 3754
    move-object/from16 v0, p1

    iput-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_chat;->title:Ljava/lang/String;

    .line 3755
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_chatPhotoEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_chatPhotoEmpty;-><init>()V

    iput-object v2, v9, Lorg/telegram/tgnet/TLRPC$TL_chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 3756
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v9, Lorg/telegram/tgnet/TLRPC$TL_chat;->participants_count:I

    .line 3757
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v2, v4

    iput v2, v9, Lorg/telegram/tgnet/TLRPC$TL_chat;->date:I

    .line 3758
    const/4 v2, 0x1

    iput v2, v9, Lorg/telegram/tgnet/TLRPC$TL_chat;->version:I

    .line 3759
    sget v2, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    .line 3760
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 3761
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 3762
    .local v11, "chatsArrays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3763
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v11, v5, v6}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 3765
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_chatFull;-><init>()V

    .line 3766
    .local v10, "chatFull":Lorg/telegram/tgnet/TLRPC$TL_chatFull;
    iget v2, v9, Lorg/telegram/tgnet/TLRPC$TL_chat;->id:I

    iput v2, v10, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->id:I

    .line 3767
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;-><init>()V

    iput-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 3768
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettingsEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettingsEmpty;-><init>()V

    iput-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 3769
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_chatInviteEmpty;-><init>()V

    iput-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    .line 3770
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants;-><init>()V

    iput-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    .line 3771
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget v4, v9, Lorg/telegram/tgnet/TLRPC$TL_chat;->id:I

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->chat_id:I

    .line 3772
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->admin_id:I

    .line 3773
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    const/4 v4, 0x1

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->version:I

    .line 3774
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_0

    .line 3775
    new-instance v15, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    invoke-direct {v15}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;-><init>()V

    .line 3776
    .local v15, "participant":Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v15, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->user_id:I

    .line 3777
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    iput v2, v15, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->inviter_id:I

    .line 3778
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v2, v4

    iput v2, v15, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->date:I

    .line 3779
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3774
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3781
    .end local v15    # "participant":Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v10, v4}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    .line 3783
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    .line 3784
    .local v12, "newMsg":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionCreatedBroadcastList;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageActionCreatedBroadcastList;-><init>()V

    iput-object v2, v12, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 3785
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v2

    iput v2, v12, Lorg/telegram/tgnet/TLRPC$TL_messageService;->id:I

    iput v2, v12, Lorg/telegram/tgnet/TLRPC$TL_messageService;->local_id:I

    .line 3786
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    iput v2, v12, Lorg/telegram/tgnet/TLRPC$TL_messageService;->from_id:I

    .line 3787
    iget v2, v9, Lorg/telegram/tgnet/TLRPC$TL_chat;->id:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->makeBroadcastId(I)J

    move-result-wide v4

    iput-wide v4, v12, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    .line 3788
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    iput-object v2, v12, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 3789
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v9, Lorg/telegram/tgnet/TLRPC$TL_chat;->id:I

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    .line 3790
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    iput v2, v12, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    .line 3791
    const-wide/16 v4, 0x0

    iput-wide v4, v12, Lorg/telegram/tgnet/TLRPC$TL_messageService;->random_id:J

    .line 3792
    iget v2, v12, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v12, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 3793
    const/4 v2, 0x0

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 3794
    new-instance v13, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v4, 0x1

    invoke-direct {v13, v12, v2, v4}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 3795
    .local v13, "newMsgObj":Lorg/telegram/messenger/MessageObject;
    iget-object v2, v13, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v4, 0x0

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 3797
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 3798
    .local v14, "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3799
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3800
    .local v3, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3801
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 3802
    iget-wide v4, v12, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v14}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;)V

    .line 3803
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3804
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v9, Lorg/telegram/tgnet/TLRPC$TL_chat;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3806
    const/4 v2, 0x0

    .line 3891
    .end local v3    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v8    # "a":I
    .end local v9    # "chat":Lorg/telegram/tgnet/TLRPC$TL_chat;
    .end local v10    # "chatFull":Lorg/telegram/tgnet/TLRPC$TL_chatFull;
    .end local v11    # "chatsArrays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    .end local v12    # "newMsg":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    .end local v13    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v14    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :goto_1
    return v2

    .line 3807
    :cond_1
    if-nez p4, :cond_4

    .line 3808
    new-instance v16, Lorg/telegram/tgnet/TLRPC$TL_messages_createChat;

    invoke-direct/range {v16 .. v16}, Lorg/telegram/tgnet/TLRPC$TL_messages_createChat;-><init>()V

    .line 3809
    .local v16, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_createChat;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_createChat;->title:Ljava/lang/String;

    .line 3810
    const/4 v8, 0x0

    .restart local v8    # "a":I
    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_3

    .line 3811
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v17

    .line 3812
    .local v17, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v17, :cond_2

    .line 3810
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 3815
    :cond_2
    move-object/from16 v0, v16

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_createChat;->users:Ljava/util/ArrayList;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3817
    .end local v17    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_3
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v4, Lorg/telegram/messenger/MessagesController$64;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v4, v0, v1}, Lorg/telegram/messenger/MessagesController$64;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/4 v5, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v2

    goto :goto_1

    .line 3850
    .end local v8    # "a":I
    .end local v16    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_createChat;
    :cond_4
    const/4 v2, 0x2

    move/from16 v0, p4

    if-eq v0, v2, :cond_5

    const/4 v2, 0x4

    move/from16 v0, p4

    if-ne v0, v2, :cond_7

    .line 3851
    :cond_5
    new-instance v16, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;

    invoke-direct/range {v16 .. v16}, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;-><init>()V

    .line 3852
    .local v16, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->title:Ljava/lang/String;

    .line 3853
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->about:Ljava/lang/String;

    .line 3854
    const/4 v2, 0x4

    move/from16 v0, p4

    if-ne v0, v2, :cond_6

    .line 3855
    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->megagroup:Z

    .line 3859
    :goto_4
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v4, Lorg/telegram/messenger/MessagesController$65;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v4, v0, v1}, Lorg/telegram/messenger/MessagesController$65;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/4 v5, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v2

    goto/16 :goto_1

    .line 3857
    :cond_6
    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->broadcast:Z

    goto :goto_4

    .line 3891
    .end local v16    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method public deleteDialog(JI)V
    .locals 7
    .param p1, "did"    # J
    .param p3, "onlyHistory"    # I

    .prologue
    .line 1840
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JZII)V

    .line 1841
    return-void
.end method

.method public deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;I)V
    .locals 11
    .param p3, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p4, "channelId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "randoms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v10, 0x1

    .line 1747
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1800
    :cond_0
    :goto_0
    return-void

    .line 1750
    :cond_1
    if-nez p4, :cond_3

    .line 1751
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 1752
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1753
    .local v1, "id":Ljava/lang/Integer;
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 1754
    .local v3, "obj":Lorg/telegram/messenger/MessageObject;
    if-eqz v3, :cond_2

    .line 1755
    iput-boolean v10, v3, Lorg/telegram/messenger/MessageObject;->deleted:Z

    .line 1751
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1759
    .end local v0    # "a":I
    .end local v1    # "id":Ljava/lang/Integer;
    .end local v3    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_3
    invoke-virtual {p0, p1, p4}, Lorg/telegram/messenger/MessagesController;->markChannelDialogMessageAsDeleted(Ljava/util/ArrayList;I)V

    .line 1761
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1762
    .local v5, "toSend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_6

    .line 1763
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1764
    .local v2, "mid":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_5

    .line 1765
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1762
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1768
    .end local v2    # "mid":Ljava/lang/Integer;
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    invoke-virtual {v6, p1, v10, p4}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeleted(Ljava/util/ArrayList;ZI)V

    .line 1769
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    invoke-virtual {v6, p1, v10, p4}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithDeletedMessages(Ljava/util/ArrayList;ZI)V

    .line 1770
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1771
    if-eqz p4, :cond_7

    .line 1772
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;-><init>()V

    .line 1773
    .local v4, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;
    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;->id:Ljava/util/ArrayList;

    .line 1774
    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v6

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 1775
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v7, Lorg/telegram/messenger/MessagesController$31;

    invoke-direct {v7, p0, p4}, Lorg/telegram/messenger/MessagesController$31;-><init>(Lorg/telegram/messenger/MessagesController;I)V

    invoke-virtual {v6, v4, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    .line 1785
    .end local v4    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;
    :cond_7
    if-eqz p2, :cond_8

    if-eqz p3, :cond_8

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1786
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, p3, p2, v7}, Lorg/telegram/messenger/SecretChatHelper;->sendMessagesDeleteMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 1788
    :cond_8
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;-><init>()V

    .line 1789
    .local v4, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;
    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;->id:Ljava/util/ArrayList;

    .line 1790
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v7, Lorg/telegram/messenger/MessagesController$32;

    invoke-direct {v7, p0}, Lorg/telegram/messenger/MessagesController$32;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v6, v4, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0
.end method

.method public deleteUserChannelHistory(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;I)V
    .locals 4
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;
    .param p2, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p3, "offset"    # I

    .prologue
    .line 1819
    if-nez p3, :cond_0

    .line 1820
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    iget v3, p2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->deleteUserChannelHistory(II)V

    .line 1822
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteUserHistory;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteUserHistory;-><init>()V

    .line 1823
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_deleteUserHistory;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteUserHistory;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 1824
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteUserHistory;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1825
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$34;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/messenger/MessagesController$34;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 1837
    return-void
.end method

.method public deleteUserFromChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 15
    .param p1, "chat_id"    # I
    .param p2, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p3, "info"    # Lorg/telegram/tgnet/TLRPC$ChatFull;

    .prologue
    .line 4258
    if-nez p2, :cond_1

    .line 4344
    :cond_0
    :goto_0
    return-void

    .line 4261
    :cond_1
    if-lez p1, :cond_5

    .line 4262
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v6

    .line 4264
    .local v6, "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v9

    .line 4265
    .local v9, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    .line 4266
    .local v5, "isChannel":Z
    if-eqz v5, :cond_4

    .line 4267
    instance-of v1, v6, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;

    if-eqz v1, :cond_3

    .line 4268
    iget-boolean v1, v9, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v1, :cond_2

    .line 4269
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteChannel;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteChannel;-><init>()V

    .line 4270
    .local v12, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_deleteChannel;
    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v12, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4271
    move-object v13, v12

    .line 4290
    .end local v12    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_deleteChannel;
    .local v13, "request":Lorg/telegram/tgnet/TLObject;
    :goto_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v14

    new-instance v1, Lorg/telegram/messenger/MessagesController$77;

    move-object v2, p0

    move-object/from16 v3, p2

    move/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController$77;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;IZLorg/telegram/tgnet/TLRPC$InputUser;)V

    const/16 v2, 0x40

    invoke-virtual {v14, v13, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0

    .line 4273
    .end local v13    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_2
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_channels_leaveChannel;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_channels_leaveChannel;-><init>()V

    .line 4274
    .local v12, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_leaveChannel;
    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v12, Lorg/telegram/tgnet/TLRPC$TL_channels_leaveChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4275
    move-object v13, v12

    .line 4276
    .restart local v13    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_1

    .line 4278
    .end local v12    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_leaveChannel;
    .end local v13    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_3
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_channels_kickFromChannel;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_channels_kickFromChannel;-><init>()V

    .line 4279
    .local v12, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_kickFromChannel;
    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v12, Lorg/telegram/tgnet/TLRPC$TL_channels_kickFromChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4280
    iput-object v6, v12, Lorg/telegram/tgnet/TLRPC$TL_channels_kickFromChannel;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 4281
    const/4 v1, 0x1

    iput-boolean v1, v12, Lorg/telegram/tgnet/TLRPC$TL_channels_kickFromChannel;->kicked:Z

    .line 4282
    move-object v13, v12

    .line 4283
    .restart local v13    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_1

    .line 4285
    .end local v12    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_kickFromChannel;
    .end local v13    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_4
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteChatUser;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteChatUser;-><init>()V

    .line 4286
    .local v12, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_deleteChatUser;
    move/from16 v0, p1

    iput v0, v12, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteChatUser;->chat_id:I

    .line 4287
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v12, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteChatUser;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 4288
    move-object v13, v12

    .restart local v13    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_1

    .line 4321
    .end local v5    # "isChannel":Z
    .end local v6    # "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    .end local v9    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v12    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_deleteChatUser;
    .end local v13    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_5
    move-object/from16 v0, p3

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-eqz v1, :cond_0

    .line 4322
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v9

    .line 4323
    .restart local v9    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget v1, v9, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v9, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    .line 4324
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 4325
    .local v10, "chatArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4326
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v10, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 4328
    const/4 v8, 0x0

    .line 4329
    .local v8, "changed":Z
    const/4 v7, 0x0

    .local v7, "a":I
    :goto_2
    move-object/from16 v0, p3

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_6

    .line 4330
    move-object/from16 v0, p3

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 4331
    .local v11, "p":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    iget v1, v11, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    move-object/from16 v0, p2

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    if-ne v1, v2, :cond_8

    .line 4332
    move-object/from16 v0, p3

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4333
    const/4 v8, 0x1

    .line 4337
    .end local v11    # "p":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_6
    if-eqz v8, :cond_7

    .line 4338
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    .line 4339
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    const/4 v4, 0x1

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v3, v4

    const/4 v4, 0x2

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v3, v4

    const/4 v4, 0x3

    const/4 v14, 0x0

    aput-object v14, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4341
    :cond_7
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v14, 0x20

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4329
    .restart local v11    # "p":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method public deleteUserPhoto(Lorg/telegram/tgnet/TLRPC$InputPhoto;)V
    .locals 7
    .param p1, "photo"    # Lorg/telegram/tgnet/TLRPC$InputPhoto;

    .prologue
    const/4 v6, 0x0

    .line 1652
    if-nez p1, :cond_2

    .line 1653
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;-><init>()V

    .line 1654
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoEmpty;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    .line 1655
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoCropAuto;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoCropAuto;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;->crop:Lorg/telegram/tgnet/TLRPC$InputPhotoCrop;

    .line 1656
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhotoEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhotoEmpty;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 1657
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 1658
    .local v1, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v1, :cond_0

    .line 1659
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 1661
    :cond_0
    if-nez v1, :cond_1

    .line 1707
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;
    .end local v1    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_0
    return-void

    .line 1664
    .restart local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;
    .restart local v1    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 1665
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1666
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v5, 0x5ff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1667
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$28;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/MessagesController$28;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    .line 1698
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;
    .end local v1    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photos_deletePhotos;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photos_deletePhotos;-><init>()V

    .line 1699
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_photos_deletePhotos;
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_deletePhotos;->id:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1700
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$29;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/MessagesController$29;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public didAddedNewTask(ILandroid/util/SparseArray;)V
    .locals 2
    .param p1, "minDate"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1413
    .local p2, "mids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$17;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesController$17;-><init>(Lorg/telegram/messenger/MessagesController;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1421
    new-instance v0, Lorg/telegram/messenger/MessagesController$18;

    invoke-direct {v0, p0, p2}, Lorg/telegram/messenger/MessagesController$18;-><init>(Lorg/telegram/messenger/MessagesController;Landroid/util/SparseArray;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1427
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 11
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 440
    sget v8, Lorg/telegram/messenger/NotificationCenter;->FileDidUpload:I

    if-ne p1, v8, :cond_1

    .line 441
    aget-object v3, p2, v10

    check-cast v3, Ljava/lang/String;

    .line 442
    .local v3, "location":Ljava/lang/String;
    aget-object v2, p2, v9

    check-cast v2, Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 444
    .local v2, "file":Lorg/telegram/tgnet/TLRPC$InputFile;
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 445
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;-><init>()V

    .line 446
    .local v7, "req":Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;
    const-string/jumbo v8, ""

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->caption:Ljava/lang/String;

    .line 447
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoCropAuto;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoCropAuto;-><init>()V

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->crop:Lorg/telegram/tgnet/TLRPC$InputPhotoCrop;

    .line 448
    iput-object v2, v7, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 449
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPointEmpty;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPointEmpty;-><init>()V

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    .line 450
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    new-instance v9, Lorg/telegram/messenger/MessagesController$4;

    invoke-direct {v9, p0}, Lorg/telegram/messenger/MessagesController$4;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v8, v7, v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 519
    .end local v2    # "file":Lorg/telegram/tgnet/TLRPC$InputFile;
    .end local v3    # "location":Ljava/lang/String;
    .end local v7    # "req":Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    sget v8, Lorg/telegram/messenger/NotificationCenter;->FileDidFailUpload:I

    if-ne p1, v8, :cond_2

    .line 494
    aget-object v3, p2, v10

    check-cast v3, Ljava/lang/String;

    .line 495
    .restart local v3    # "location":Ljava/lang/String;
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 496
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    goto :goto_0

    .line 498
    .end local v3    # "location":Ljava/lang/String;
    :cond_2
    sget v8, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    if-ne p1, v8, :cond_0

    .line 499
    aget-object v4, p2, v10

    check-cast v4, Ljava/lang/Integer;

    .line 500
    .local v4, "msgId":Ljava/lang/Integer;
    aget-object v5, p2, v9

    check-cast v5, Ljava/lang/Integer;

    .line 501
    .local v5, "newMsgId":Ljava/lang/Integer;
    const/4 v8, 0x3

    aget-object v1, p2, v8

    check-cast v1, Ljava/lang/Long;

    .line 502
    .local v1, "did":Ljava/lang/Long;
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    .line 503
    .local v6, "obj":Lorg/telegram/messenger/MessageObject;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v8, v9, :cond_4

    .line 504
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v8, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 505
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput v10, v8, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 506
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 507
    .local v0, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v0, :cond_3

    .line 508
    iget v8, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 509
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    .line 512
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 514
    .end local v0    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_4
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "obj":Lorg/telegram/messenger/MessageObject;
    check-cast v6, Lorg/telegram/messenger/MessageObject;

    .line 515
    .restart local v6    # "obj":Lorg/telegram/messenger/MessageObject;
    if-eqz v6, :cond_0

    .line 516
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v8, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public generateJoinMessage(IZ)V
    .locals 12
    .param p1, "chat_id"    # I
    .param p2, "ignoreLeft"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 5308
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    .line 5309
    .local v6, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v6, :cond_1

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, v6, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v0, :cond_0

    iget-boolean v0, v6, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    if-eqz v0, :cond_2

    :cond_0
    if-nez p2, :cond_2

    .line 5356
    :cond_1
    :goto_0
    return-void

    .line 5313
    :cond_2
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    .line 5314
    .local v7, "message":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    const/16 v0, 0x100

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 5315
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v0

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->id:I

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->local_id:I

    .line 5316
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    .line 5317
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v0

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->from_id:I

    .line 5318
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 5319
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    .line 5320
    neg-int v0, p1

    int-to-long v10, v0

    iput-wide v10, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    .line 5321
    iput-boolean v2, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->post:Z

    .line 5322
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;-><init>()V

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 5323
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5324
    iget-boolean v0, v6, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_3

    .line 5325
    iget v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    const/high16 v3, -0x80000000

    or-int/2addr v0, v3

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 5327
    :cond_3
    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 5329
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 5330
    .local v9, "pushMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5332
    .local v1, "messagesArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5333
    new-instance v8, Lorg/telegram/messenger/MessageObject;

    const/4 v0, 0x0

    invoke-direct {v8, v7, v0, v2}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 5334
    .local v8, "obj":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5336
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v3, Lorg/telegram/messenger/MessagesController$93;

    invoke-direct {v3, p0, v9}, Lorg/telegram/messenger/MessagesController$93;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 5347
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaController;->getAutodownloadMask()I

    move-result v5

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 5349
    new-instance v0, Lorg/telegram/messenger/MessagesController$94;

    invoke-direct {v0, p0, p1, v9}, Lorg/telegram/messenger/MessagesController$94;-><init>(Lorg/telegram/messenger/MessagesController;ILjava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public generateUpdateMessage()V
    .locals 3

    .prologue
    .line 4458
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-nez v1, :cond_0

    sget-object v1, Lorg/telegram/messenger/UserConfig;->lastUpdateVersion:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lorg/telegram/messenger/UserConfig;->lastUpdateVersion:Ljava/lang/String;

    sget-object v2, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION_STRING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4481
    :cond_0
    :goto_0
    return-void

    .line 4461
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_help_getAppChangelog;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_help_getAppChangelog;-><init>()V

    .line 4462
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_help_getAppChangelog;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$82;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$82;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public getBlockedUsers(Z)V
    .locals 3
    .param p1, "cache"    # Z

    .prologue
    .line 1600
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->loadingBlockedUsers:Z

    if-eqz v1, :cond_1

    .line 1628
    :cond_0
    :goto_0
    return-void

    .line 1603
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->loadingBlockedUsers:Z

    .line 1604
    if-eqz p1, :cond_2

    .line 1605
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getBlockedUsers()V

    goto :goto_0

    .line 1607
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;-><init>()V

    .line 1608
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;
    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;->offset:I

    .line 1609
    const/16 v1, 0xc8

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;->limit:I

    .line 1610
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$26;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$26;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method protected getChannelDifference(IIJ)V
    .locals 17
    .param p1, "channelId"    # I
    .param p2, "newDialogType"    # I
    .param p3, "taskId"    # J

    .prologue
    .line 4801
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->gettingDifferenceChannels:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    .line 4802
    .local v12, "gettingDifferenceChannel":Ljava/lang/Boolean;
    if-nez v12, :cond_0

    .line 4803
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 4805
    :cond_0
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5059
    :cond_1
    :goto_0
    return-void

    .line 4808
    :cond_2
    const/16 v13, 0x64

    .line 4810
    .local v13, "limit":I
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_4

    .line 4811
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 4812
    .local v8, "channelPts":Ljava/lang/Integer;
    if-nez v8, :cond_1

    .line 4815
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 4816
    const/4 v13, 0x1

    .line 4834
    :cond_3
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_7

    .line 4835
    const/4 v9, 0x0

    .line 4837
    .local v9, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :try_start_0
    new-instance v10, Lorg/telegram/tgnet/NativeByteBuffer;

    const/16 v2, 0xc

    invoke-direct {v10, v2}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4838
    .end local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v10, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v10, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 4839
    move/from16 v0, p1

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 4840
    move/from16 v0, p2

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v10

    .line 4844
    .end local v10    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v9}, Lorg/telegram/messenger/MessagesStorage;->createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J

    move-result-wide v6

    .line 4849
    .end local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v6, "newTaskId":J
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->gettingDifferenceChannels:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4850
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;-><init>()V

    .line 4851
    .local v14, "req":Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4852
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelMessagesFilterEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelMessagesFilterEmpty;-><init>()V

    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->filter:Lorg/telegram/tgnet/TLRPC$ChannelMessagesFilter;

    .line 4853
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v14, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->pts:I

    .line 4854
    iput v13, v14, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->limit:I

    .line 4855
    const-string/jumbo v2, "tmessages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start getChannelDifference with pts = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " channelId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4856
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v15

    new-instance v2, Lorg/telegram/messenger/MessagesController$91;

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/MessagesController$91;-><init>(Lorg/telegram/messenger/MessagesController;IIJ)V

    invoke-virtual {v15, v14, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    .line 4818
    .end local v6    # "newTaskId":J
    .end local v8    # "channelPts":Ljava/lang/Integer;
    .end local v14    # "req":Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 4819
    .restart local v8    # "channelPts":Ljava/lang/Integer;
    if-nez v8, :cond_6

    .line 4820
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesStorage;->getChannelPtsSync(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 4821
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_5

    .line 4822
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4824
    :cond_5
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x2

    move/from16 v0, p2

    if-eq v0, v2, :cond_1

    .line 4828
    :cond_6
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_0

    .line 4841
    .restart local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_0
    move-exception v11

    .line 4842
    .local v11, "e":Ljava/lang/Exception;
    :goto_3
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 4846
    .end local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_7
    move-wide/from16 v6, p3

    .restart local v6    # "newTaskId":J
    goto/16 :goto_2

    .line 4841
    .end local v6    # "newTaskId":J
    .restart local v10    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_1
    move-exception v11

    move-object v9, v10

    .end local v10    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    goto :goto_3
.end method

.method public getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 1
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 634
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    return-object v0
.end method

.method public getDifference()V
    .locals 4

    .prologue
    .line 5076
    sget v0, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getDifference(IIIZ)V

    .line 5077
    return-void
.end method

.method public getDifference(IIIZ)V
    .locals 5
    .param p1, "pts"    # I
    .param p2, "date"    # I
    .param p3, "qts"    # I
    .param p4, "slice"    # Z

    .prologue
    const/4 v4, 0x1

    .line 5080
    sget-object v1, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MessagesController;->registerForPush(Ljava/lang/String;)V

    .line 5081
    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    if-nez v1, :cond_1

    .line 5082
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->loadCurrentState()V

    .line 5305
    :cond_0
    :goto_0
    return-void

    .line 5085
    :cond_1
    if-nez p4, :cond_2

    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    if-nez v1, :cond_0

    .line 5088
    :cond_2
    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->firstGettingTask:Z

    if-nez v1, :cond_3

    .line 5089
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MessagesController;->getNewDeleteTask(Ljava/util/ArrayList;)V

    .line 5090
    iput-boolean v4, p0, Lorg/telegram/messenger/MessagesController;->firstGettingTask:Z

    .line 5092
    :cond_3
    iput-boolean v4, p0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    .line 5093
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;-><init>()V

    .line 5094
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->pts:I

    .line 5095
    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->date:I

    .line 5096
    iput p3, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->qts:I

    .line 5097
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->date:I

    if-nez v1, :cond_4

    .line 5098
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->date:I

    .line 5100
    :cond_4
    const-string/jumbo v1, "tmessages"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start getDifference with date = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " pts = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " seq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5101
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/tgnet/ConnectionsManager;->setIsUpdating(Z)V

    .line 5102
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$92;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$92;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .locals 1
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 638
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->encryptedChats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    return-object v0
.end method

.method public getEncryptedChatDB(I)Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .locals 9
    .param p1, "chat_id"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 642
    iget-object v5, p0, Lorg/telegram/messenger/MessagesController;->encryptedChats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 643
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-nez v0, :cond_0

    .line 644
    new-instance v3, Ljava/util/concurrent/Semaphore;

    invoke-direct {v3, v7}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 645
    .local v3, "semaphore":Ljava/util/concurrent/Semaphore;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 646
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLObject;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, p1, v3, v2}, Lorg/telegram/messenger/MessagesStorage;->getEncryptedChat(ILjava/util/concurrent/Semaphore;Ljava/util/ArrayList;)V

    .line 648
    :try_start_0
    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 653
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 654
    .restart local v0    # "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    .line 655
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {p0, v0, v7}, Lorg/telegram/messenger/MessagesController;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    .line 656
    invoke-virtual {p0, v4, v8}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 659
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLObject;>;"
    .end local v3    # "semaphore":Ljava/util/concurrent/Semaphore;
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_0
    return-object v0

    .line 649
    .restart local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLObject;>;"
    .restart local v3    # "semaphore":Ljava/util/concurrent/Semaphore;
    :catch_0
    move-exception v1

    .line 650
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "tmessages"

    invoke-static {v5, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getExportedInvite(I)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    .locals 2
    .param p1, "chat_id"    # I

    .prologue
    .line 676
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->exportedChats:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    return-object v0
.end method

.method public getNewDeleteTask(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1430
    .local p1, "oldTask":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$19;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesController$19;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1437
    return-void
.end method

.method public getUpdatesStartTime(I)J
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 4561
    if-nez p1, :cond_0

    .line 4562
    iget-wide v0, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    .line 4568
    :goto_0
    return-wide v0

    .line 4563
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 4564
    iget-wide v0, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    goto :goto_0

    .line 4565
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 4566
    iget-wide v0, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    goto :goto_0

    .line 4568
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 1
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 619
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method public getUser(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 2
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 623
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 624
    :cond_0
    const/4 v0, 0x0

    .line 626
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->usersByUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_0
.end method

.method public getUserAbout(I)Ljava/lang/String;
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 856
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->fullUsersAbout:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUsers()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 630
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public hideReportSpam(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 7
    .param p1, "dialogId"    # J
    .param p3, "currentUser"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p4, "currentChat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 1212
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 1231
    :goto_0
    return-void

    .line 1215
    :cond_0
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "Notifications"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1216
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1217
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "spam3_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1218
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1219
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;-><init>()V

    .line 1220
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;
    if-eqz p3, :cond_2

    .line 1221
    iget v3, p3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1225
    :cond_1
    :goto_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesController$13;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/MessagesController$13;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    .line 1222
    :cond_2
    if-eqz p4, :cond_1

    .line 1223
    iget v3, p4, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_1
.end method

.method public isDialogMuted(J)Z
    .locals 7
    .param p1, "dialog_id"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 7137
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "Notifications"

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 7138
    .local v2, "preferences":Landroid/content/SharedPreferences;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notify2_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 7139
    .local v0, "mute_type":I
    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    .line 7147
    :cond_0
    :goto_0
    return v3

    .line 7141
    :cond_1
    const/4 v5, 0x3

    if-ne v0, v5, :cond_2

    .line 7142
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyuntil_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 7143
    .local v1, "mute_until":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v5

    if-ge v1, v5, :cond_0

    .end local v1    # "mute_until":I
    :cond_2
    move v3, v4

    .line 7147
    goto :goto_0
.end method

.method public loadChannelParticipants(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "chat_id"    # Ljava/lang/Integer;

    .prologue
    .line 2002
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->loadingFullParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->loadedFullParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2030
    :cond_0
    :goto_0
    return-void

    .line 2005
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->loadingFullParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2007
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;-><init>()V

    .line 2008
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 2009
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    .line 2010
    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->offset:I

    .line 2011
    const/16 v1, 0x20

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->limit:I

    .line 2012
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$39;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/MessagesController$39;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/lang/Integer;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public loadChatInfo(ILjava/util/concurrent/Semaphore;Z)V
    .locals 2
    .param p1, "chat_id"    # I
    .param p2, "semaphore"    # Ljava/util/concurrent/Semaphore;
    .param p3, "force"    # Z

    .prologue
    .line 2033
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/telegram/messenger/MessagesStorage;->loadChatInfo(ILjava/util/concurrent/Semaphore;ZZ)V

    .line 2034
    return-void
.end method

.method public loadCurrentState()V
    .locals 3

    .prologue
    .line 4514
    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->updatingState:Z

    if-eqz v1, :cond_0

    .line 4540
    :goto_0
    return-void

    .line 4517
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->updatingState:Z

    .line 4518
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getState;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updates_getState;-><init>()V

    .line 4519
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_updates_getState;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$84;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$84;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public loadDialogPhotos(IIIJZI)V
    .locals 14
    .param p1, "did"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "max_id"    # J
    .param p6, "fromCache"    # Z
    .param p7, "classGuid"    # I

    .prologue
    .line 1501
    if-eqz p6, :cond_1

    .line 1502
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p7

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/MessagesStorage;->getDialogPhotos(IIIJI)V

    .line 1554
    :cond_0
    :goto_0
    return-void

    .line 1504
    :cond_1
    if-lez p1, :cond_2

    .line 1505
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v13

    .line 1506
    .local v13, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v13, :cond_0

    .line 1509
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;-><init>()V

    .line 1510
    .local v11, "req":Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;
    move/from16 v0, p3

    iput v0, v11, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;->limit:I

    .line 1511
    move/from16 v0, p2

    iput v0, v11, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;->offset:I

    .line 1512
    move-wide/from16 v0, p4

    long-to-int v2, v0

    int-to-long v2, v2

    iput-wide v2, v11, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;->max_id:J

    .line 1513
    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1514
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$22;

    move-object v4, p0

    move v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-wide/from16 v8, p4

    move/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Lorg/telegram/messenger/MessagesController$22;-><init>(Lorg/telegram/messenger/MessagesController;IIIJI)V

    invoke-virtual {v2, v11, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v12

    .line 1523
    .local v12, "reqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v12, v0}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_0

    .line 1524
    .end local v11    # "req":Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;
    .end local v12    # "reqId":I
    .end local v13    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    if-gez p1, :cond_0

    .line 1525
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    .line 1526
    .local v11, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_search;
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterChatPhotos;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterChatPhotos;-><init>()V

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 1527
    move/from16 v0, p3

    iput v0, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    .line 1528
    move/from16 v0, p2

    iput v0, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset:I

    .line 1529
    move-wide/from16 v0, p4

    long-to-int v2, v0

    iput v2, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->max_id:I

    .line 1530
    const-string/jumbo v2, ""

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    .line 1531
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1532
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$23;

    move-object v4, p0

    move v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-wide/from16 v8, p4

    move/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Lorg/telegram/messenger/MessagesController$23;-><init>(Lorg/telegram/messenger/MessagesController;IIIJI)V

    invoke-virtual {v2, v11, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v12

    .line 1551
    .restart local v12    # "reqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v12, v0}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto/16 :goto_0
.end method

.method public loadDialogs(IIZ)V
    .locals 12
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "fromCache"    # Z

    .prologue
    .line 2713
    iget-boolean v8, p0, Lorg/telegram/messenger/MessagesController;->loadingDialogs:Z

    if-eqz v8, :cond_0

    .line 2761
    :goto_0
    return-void

    .line 2716
    :cond_0
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/messenger/MessagesController;->loadingDialogs:Z

    .line 2717
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2718
    const-string/jumbo v8, "tmessages"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "load cacheOffset = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " count = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " cache = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2719
    if-eqz p3, :cond_2

    .line 2720
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    if-nez p1, :cond_1

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v9, v8, p2}, Lorg/telegram/messenger/MessagesStorage;->getDialogs(II)V

    goto :goto_0

    :cond_1
    iget v8, p0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    goto :goto_1

    .line 2722
    :cond_2
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;-><init>()V

    .line 2723
    .local v7, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;
    iput p2, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->limit:I

    .line 2724
    const/4 v2, 0x0

    .line 2725
    .local v2, "found":Z
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v0, v8, -0x1

    .local v0, "a":I
    :goto_2
    if-ltz v0, :cond_3

    .line 2726
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 2727
    .local v1, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-wide v8, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v5, v8

    .line 2728
    .local v5, "lower_id":I
    iget-wide v8, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const/16 v10, 0x20

    shr-long/2addr v8, v10

    long-to-int v3, v8

    .line 2729
    .local v3, "high_id":I
    if-eqz v5, :cond_7

    const/4 v8, 0x1

    if-eq v3, v8, :cond_7

    iget v8, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-lez v8, :cond_7

    .line 2730
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    .line 2731
    .local v6, "message":Lorg/telegram/messenger/MessageObject;
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    if-lez v8, :cond_7

    .line 2732
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_date:I

    .line 2733
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_id:I

    .line 2735
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v8, :cond_5

    .line 2736
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v4, v8

    .line 2742
    .local v4, "id":I
    :goto_3
    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v8

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2743
    const/4 v2, 0x1

    .line 2748
    .end local v1    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v3    # "high_id":I
    .end local v4    # "id":I
    .end local v5    # "lower_id":I
    .end local v6    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_3
    if-nez v2, :cond_4

    .line 2749
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2751
    :cond_4
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    new-instance v9, Lorg/telegram/messenger/MessagesController$52;

    invoke-direct {v9, p0, p2}, Lorg/telegram/messenger/MessagesController$52;-><init>(Lorg/telegram/messenger/MessagesController;I)V

    invoke-virtual {v8, v7, v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    .line 2737
    .restart local v1    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .restart local v3    # "high_id":I
    .restart local v5    # "lower_id":I
    .restart local v6    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_5
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v8, :cond_6

    .line 2738
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v4, v8

    .restart local v4    # "id":I
    goto :goto_3

    .line 2740
    .end local v4    # "id":I
    :cond_6
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v8, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .restart local v4    # "id":I
    goto :goto_3

    .line 2725
    .end local v4    # "id":I
    .end local v6    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_2
.end method

.method public loadFullChat(IIZ)V
    .locals 6
    .param p1, "chat_id"    # I
    .param p2, "classGuid"    # I
    .param p3, "force"    # Z

    .prologue
    .line 955
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->loadingFullChats:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p3, :cond_1

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->loadedFullChats:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1045
    :cond_0
    :goto_0
    return-void

    .line 958
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->loadingFullChats:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 960
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 961
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 962
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getFullChannel;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channels_getFullChannel;-><init>()V

    .line 963
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getFullChannel;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getFullChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 964
    move-object v3, v1

    .line 970
    .end local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getFullChannel;
    .local v3, "request":Lorg/telegram/tgnet/TLObject;
    :goto_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/messenger/MessagesController$10;

    invoke-direct {v5, p0, v0, p1, p2}, Lorg/telegram/messenger/MessagesController$10;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Chat;II)V

    invoke-virtual {v4, v3, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v2

    .line 1042
    .local v2, "reqId":I
    if-eqz p2, :cond_0

    .line 1043
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4, v2, p2}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_0

    .line 966
    .end local v2    # "reqId":I
    .end local v3    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_2
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getFullChat;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getFullChat;-><init>()V

    .line 967
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getFullChat;
    iput p1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getFullChat;->chat_id:I

    .line 968
    move-object v3, v1

    .restart local v3    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_1
.end method

.method public loadFullUser(Lorg/telegram/tgnet/TLRPC$User;IZ)V
    .locals 4
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "classGuid"    # I
    .param p3, "force"    # Z

    .prologue
    .line 1048
    if-eqz p1, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->loadingFullUsers:Ljava/util/ArrayList;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p3, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->loadedFullUsers:Ljava/util/ArrayList;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1098
    :cond_0
    :goto_0
    return-void

    .line 1051
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->loadingFullUsers:Ljava/util/ArrayList;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1052
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_users_getFullUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_users_getFullUser;-><init>()V

    .line 1053
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_users_getFullUser;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_users_getFullUser;->id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1054
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$11;

    invoke-direct {v3, p0, p1, p2}, Lorg/telegram/messenger/MessagesController$11;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;I)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v1

    .line 1097
    .local v1, "reqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_0
.end method

.method public loadMessages(JIIZIIIIZI)V
    .locals 17
    .param p1, "dialog_id"    # J
    .param p3, "count"    # I
    .param p4, "max_id"    # I
    .param p5, "fromCache"    # Z
    .param p6, "midDate"    # I
    .param p7, "classGuid"    # I
    .param p8, "load_type"    # I
    .param p9, "last_message_id"    # I
    .param p10, "isChannel"    # Z
    .param p11, "loadIndex"    # I

    .prologue
    .line 2464
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-virtual/range {v1 .. v16}, Lorg/telegram/messenger/MessagesController;->loadMessages(JIIZIIIIZIIIIZ)V

    .line 2465
    return-void
.end method

.method public loadMessages(JIIZIIIIZIIIIZ)V
    .locals 23
    .param p1, "dialog_id"    # J
    .param p3, "count"    # I
    .param p4, "max_id"    # I
    .param p5, "fromCache"    # Z
    .param p6, "midDate"    # I
    .param p7, "classGuid"    # I
    .param p8, "load_type"    # I
    .param p9, "last_message_id"    # I
    .param p10, "isChannel"    # Z
    .param p11, "loadIndex"    # I
    .param p12, "first_unread"    # I
    .param p13, "unread_count"    # I
    .param p14, "last_date"    # I
    .param p15, "queryFromServer"    # Z

    .prologue
    .line 2468
    const-string/jumbo v3, "tmessages"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "load messages in chat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " max_id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " cache "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mindate = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " guid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " load_type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " last_message_id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p11

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " firstUnread "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p12

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " underad count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p13

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " last_date "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p14

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " queryFromServer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p15

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2469
    move-wide/from16 v0, p1

    long-to-int v0, v0

    move/from16 v18, v0

    .line 2470
    .local v18, "lower_part":I
    if-nez p5, :cond_0

    if-nez v18, :cond_1

    .line 2471
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-virtual/range {v3 .. v12}, Lorg/telegram/messenger/MessagesStorage;->getMessages(JIIIIIZI)V

    .line 2506
    :goto_0
    return-void

    .line 2473
    :cond_1
    new-instance v19, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;

    invoke-direct/range {v19 .. v19}, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;-><init>()V

    .line 2474
    .local v19, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    move-object/from16 v0, v19

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2475
    const/4 v3, 0x3

    move/from16 v0, p8

    if-ne v0, v3, :cond_3

    .line 2476
    move/from16 v0, p3

    neg-int v3, v0

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v19

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->add_offset:I

    .line 2490
    :cond_2
    :goto_1
    move/from16 v0, p3

    move-object/from16 v1, v19

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->limit:I

    .line 2491
    move/from16 v0, p4

    move-object/from16 v1, v19

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->offset_id:I

    .line 2492
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v21

    new-instance v3, Lorg/telegram/messenger/MessagesController$49;

    move-object/from16 v4, p0

    move/from16 v5, p3

    move-wide/from16 v6, p1

    move/from16 v8, p4

    move/from16 v9, p7

    move/from16 v10, p12

    move/from16 v11, p9

    move/from16 v12, p13

    move/from16 v13, p14

    move/from16 v14, p8

    move/from16 v15, p10

    move/from16 v16, p11

    move/from16 v17, p15

    invoke-direct/range {v3 .. v17}, Lorg/telegram/messenger/MessagesController$49;-><init>(Lorg/telegram/messenger/MessagesController;IJIIIIIIIZIZ)V

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v20

    .line 2504
    .local v20, "reqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    move/from16 v0, v20

    move/from16 v1, p7

    invoke-virtual {v3, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_0

    .line 2477
    .end local v20    # "reqId":I
    :cond_3
    const/4 v3, 0x1

    move/from16 v0, p8

    if-ne v0, v3, :cond_4

    .line 2478
    move/from16 v0, p3

    neg-int v3, v0

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v19

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->add_offset:I

    goto :goto_1

    .line 2479
    :cond_4
    const/4 v3, 0x2

    move/from16 v0, p8

    if-ne v0, v3, :cond_5

    if-eqz p4, :cond_5

    .line 2480
    move/from16 v0, p3

    neg-int v3, v0

    add-int/lit8 v3, v3, 0x6

    move-object/from16 v0, v19

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->add_offset:I

    goto :goto_1

    .line 2482
    :cond_5
    if-gez v18, :cond_2

    if-eqz p4, :cond_2

    .line 2483
    move/from16 v0, v18

    neg-int v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 2484
    .local v2, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2485
    const/4 v3, -0x1

    move-object/from16 v0, v19

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->add_offset:I

    .line 2486
    move-object/from16 v0, v19

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->limit:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v19

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->limit:I

    goto/16 :goto_1
.end method

.method public loadPeerSettings(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 9
    .param p1, "dialogId"    # J
    .param p3, "currentUser"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p4, "currentChat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1256
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController;->loadingPeerSettings:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p3, :cond_1

    if-nez p4, :cond_1

    .line 1319
    :cond_0
    :goto_0
    return-void

    .line 1259
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController;->loadingPeerSettings:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "Notifications"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1261
    .local v1, "preferences":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "spam3_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v7, :cond_0

    .line 1264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "spam_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1265
    .local v0, "hidden":Z
    if-eqz v0, :cond_4

    .line 1266
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;-><init>()V

    .line 1267
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;
    if-eqz p3, :cond_3

    .line 1268
    iget v3, p3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1272
    :cond_2
    :goto_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesController$15;

    invoke-direct {v4, p0, p1, p2}, Lorg/telegram/messenger/MessagesController$15;-><init>(Lorg/telegram/messenger/MessagesController;J)V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    .line 1269
    :cond_3
    if-eqz p4, :cond_2

    .line 1270
    iget v3, p4, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_1

    .line 1290
    .end local v2    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;
    :cond_4
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerSettings;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerSettings;-><init>()V

    .line 1291
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerSettings;
    if-eqz p3, :cond_6

    .line 1292
    iget v3, p3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerSettings;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1296
    :cond_5
    :goto_2
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesController$16;

    invoke-direct {v4, p0, p1, p2}, Lorg/telegram/messenger/MessagesController$16;-><init>(Lorg/telegram/messenger/MessagesController;J)V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    .line 1293
    :cond_6
    if-eqz p4, :cond_5

    .line 1294
    iget v3, p4, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerSettings;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_2
.end method

.method protected loadUnknownChannel(Lorg/telegram/tgnet/TLRPC$Chat;J)V
    .locals 10
    .param p1, "channel"    # Lorg/telegram/tgnet/TLRPC$Chat;
    .param p2, "taskId"    # J

    .prologue
    .line 4734
    instance-of v7, p1, Lorg/telegram/tgnet/TLRPC$TL_channel;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->gettingUnknownChannels:Ljava/util/HashMap;

    iget v8, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4778
    :cond_0
    :goto_0
    return-void

    .line 4737
    :cond_1
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->gettingUnknownChannels:Ljava/util/HashMap;

    iget v8, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4738
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    .line 4739
    .local v3, "inputPeer":Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;
    iget v7, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    iput v7, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;->channel_id:I

    .line 4740
    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    iput-wide v8, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;->access_hash:J

    .line 4741
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;-><init>()V

    .line 4742
    .local v6, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;->peers:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4744
    const-wide/16 v8, 0x0

    cmp-long v7, p2, v8

    if-nez v7, :cond_2

    .line 4745
    const/4 v0, 0x0

    .line 4747
    .local v0, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :try_start_0
    new-instance v1, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p1}, Lorg/telegram/tgnet/TLRPC$Chat;->getObjectSize()I

    move-result v7

    add-int/lit8 v7, v7, 0x4

    invoke-direct {v1, v7}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4748
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v1, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v1, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 4749
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/TLRPC$Chat;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 4754
    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v7

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/MessagesStorage;->createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J

    move-result-wide v4

    .line 4758
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v4, "newTaskId":J
    :goto_2
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    new-instance v8, Lorg/telegram/messenger/MessagesController$89;

    invoke-direct {v8, p0, v4, v5, p1}, Lorg/telegram/messenger/MessagesController$89;-><init>(Lorg/telegram/messenger/MessagesController;JLorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v7, v6, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    .line 4751
    .end local v4    # "newTaskId":J
    .restart local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_0
    move-exception v2

    .line 4752
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    const-string/jumbo v7, "tmessages"

    invoke-static {v7, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 4756
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    move-wide v4, p2

    .restart local v4    # "newTaskId":J
    goto :goto_2

    .line 4751
    .end local v4    # "newTaskId":J
    .restart local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    goto :goto_3
.end method

.method public markChannelDialogMessageAsDeleted(Ljava/util/ArrayList;I)V
    .locals 6
    .param p2, "channelId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1734
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    neg-int v4, p2

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 1735
    .local v2, "obj":Lorg/telegram/messenger/MessageObject;
    if-eqz v2, :cond_0

    .line 1736
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1737
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1738
    .local v1, "id":Ljava/lang/Integer;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 1739
    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/telegram/messenger/MessageObject;->deleted:Z

    .line 1744
    .end local v0    # "a":I
    .end local v1    # "id":Ljava/lang/Integer;
    :cond_0
    return-void

    .line 1736
    .restart local v0    # "a":I
    .restart local v1    # "id":Ljava/lang/Integer;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public markDialogAsRead(JIIIZZ)V
    .locals 29
    .param p1, "dialog_id"    # J
    .param p3, "max_id"    # I
    .param p4, "max_positive_id"    # I
    .param p5, "max_date"    # I
    .param p6, "was"    # Z
    .param p7, "popup"    # Z

    .prologue
    .line 3626
    move-wide/from16 v0, p1

    long-to-int v0, v0

    move/from16 v24, v0

    .line 3627
    .local v24, "lower_part":I
    const/16 v3, 0x20

    shr-long v4, p1, v3

    long-to-int v0, v4

    move/from16 v22, v0

    .line 3629
    .local v22, "high_id":I
    if-eqz v24, :cond_4

    .line 3630
    if-eqz p4, :cond_0

    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_1

    .line 3748
    :cond_0
    :goto_0
    return-void

    .line 3633
    :cond_1
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v23

    .line 3635
    .local v23, "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    move/from16 v0, p4

    int-to-long v6, v0

    .line 3636
    .local v6, "messageId":J
    move-object/from16 v0, v23

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v3, :cond_3

    .line 3637
    new-instance v27, Lorg/telegram/tgnet/TLRPC$TL_channels_readHistory;

    invoke-direct/range {v27 .. v27}, Lorg/telegram/tgnet/TLRPC$TL_channels_readHistory;-><init>()V

    .line 3638
    .local v27, "request":Lorg/telegram/tgnet/TLRPC$TL_channels_readHistory;
    move/from16 v0, v24

    neg-int v3, v0

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v3

    move-object/from16 v0, v27

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_readHistory;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 3639
    move/from16 v0, p4

    move-object/from16 v1, v27

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_readHistory;->max_id:I

    .line 3640
    move-object/from16 v26, v27

    .line 3641
    .local v26, "req":Lorg/telegram/tgnet/TLObject;
    move/from16 v0, v24

    neg-int v3, v0

    int-to-long v4, v3

    const/16 v3, 0x20

    shl-long/2addr v4, v3

    or-long/2addr v6, v4

    .line 3648
    .end local v27    # "request":Lorg/telegram/tgnet/TLRPC$TL_channels_readHistory;
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    .line 3649
    .local v28, "value":Ljava/lang/Integer;
    if-nez v28, :cond_2

    .line 3650
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    .line 3652
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v0, p4

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3654
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    move-wide/from16 v4, p1

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/MessagesStorage;->processPendingRead(JJI)V

    .line 3655
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v3

    new-instance v8, Lorg/telegram/messenger/MessagesController$60;

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move/from16 v12, p7

    move/from16 v13, p4

    invoke-direct/range {v8 .. v13}, Lorg/telegram/messenger/MessagesController$60;-><init>(Lorg/telegram/messenger/MessagesController;JZI)V

    invoke-virtual {v3, v8}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3683
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "mainconfig"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v25

    .line 3684
    .local v25, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "ghost_mode"

    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 3685
    .local v21, "ghostMode":Z
    if-nez v21, :cond_0

    .line 3686
    const v3, 0x7fffffff

    move/from16 v0, p4

    if-eq v0, v3, :cond_0

    .line 3687
    move-wide v12, v6

    .line 3688
    .local v12, "messageIdFinal":J
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v8, Lorg/telegram/messenger/MessagesController$61;

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move/from16 v14, p5

    invoke-direct/range {v8 .. v14}, Lorg/telegram/messenger/MessagesController$61;-><init>(Lorg/telegram/messenger/MessagesController;JJI)V

    move-object/from16 v0, v26

    invoke-virtual {v3, v0, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    .line 3643
    .end local v12    # "messageIdFinal":J
    .end local v21    # "ghostMode":Z
    .end local v25    # "preferences":Landroid/content/SharedPreferences;
    .end local v26    # "req":Lorg/telegram/tgnet/TLObject;
    .end local v28    # "value":Ljava/lang/Integer;
    :cond_3
    new-instance v27, Lorg/telegram/tgnet/TLRPC$TL_messages_readHistory;

    invoke-direct/range {v27 .. v27}, Lorg/telegram/tgnet/TLRPC$TL_messages_readHistory;-><init>()V

    .line 3644
    .local v27, "request":Lorg/telegram/tgnet/TLRPC$TL_messages_readHistory;
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_readHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3645
    move/from16 v0, p4

    move-object/from16 v1, v27

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_readHistory;->max_id:I

    .line 3646
    move-object/from16 v26, v27

    .restart local v26    # "req":Lorg/telegram/tgnet/TLObject;
    goto/16 :goto_1

    .line 3703
    .end local v6    # "messageId":J
    .end local v23    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .end local v26    # "req":Lorg/telegram/tgnet/TLObject;
    .end local v27    # "request":Lorg/telegram/tgnet/TLRPC$TL_messages_readHistory;
    :cond_4
    if-eqz p5, :cond_0

    .line 3706
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v2

    .line 3707
    .local v2, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    if-eqz v3, :cond_5

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    array-length v3, v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_5

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-eqz v3, :cond_5

    .line 3708
    new-instance v26, Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;

    invoke-direct/range {v26 .. v26}, Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;-><init>()V

    .line 3709
    .local v26, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;-><init>()V

    move-object/from16 v0, v26

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    .line 3710
    move-object/from16 v0, v26

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->chat_id:I

    .line 3711
    move-object/from16 v0, v26

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->access_hash:J

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->access_hash:J

    .line 3712
    move/from16 v0, p5

    move-object/from16 v1, v26

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;->max_date:I

    .line 3714
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesController$62;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/messenger/MessagesController$62;-><init>(Lorg/telegram/messenger/MessagesController;)V

    move-object/from16 v0, v26

    invoke-virtual {v3, v0, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 3721
    .end local v26    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v15

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v16, p1

    move/from16 v20, p5

    invoke-virtual/range {v15 .. v20}, Lorg/telegram/messenger/MessagesStorage;->processPendingRead(JJI)V

    .line 3723
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v3

    new-instance v14, Lorg/telegram/messenger/MessagesController$63;

    move-object/from16 v15, p0

    move-wide/from16 v16, p1

    move/from16 v18, p5

    move/from16 v19, p7

    invoke-direct/range {v14 .. v19}, Lorg/telegram/messenger/MessagesController$63;-><init>(Lorg/telegram/messenger/MessagesController;JIZ)V

    invoke-virtual {v3, v14}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3743
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    if-lez v3, :cond_0

    if-eqz p6, :cond_0

    .line 3744
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v3

    move/from16 v0, p5

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 3745
    .local v16, "serverTime":I
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v14

    iget v15, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v17, v16

    invoke-virtual/range {v14 .. v19}, Lorg/telegram/messenger/MessagesStorage;->createTaskForSecretChat(IIIILjava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public markMessageAsRead(JJI)V
    .locals 9
    .param p1, "dialog_id"    # J
    .param p3, "random_id"    # J
    .param p5, "ttl"    # I

    .prologue
    .line 3604
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    if-gtz p5, :cond_1

    const/high16 v0, -0x80000000

    if-eq p5, v0, :cond_1

    .line 3623
    :cond_0
    :goto_0
    return-void

    .line 3607
    :cond_1
    long-to-int v8, p1

    .line 3608
    .local v8, "lower_part":I
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v7, v0

    .line 3609
    .local v7, "high_id":I
    if-nez v8, :cond_0

    .line 3612
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v6

    .line 3613
    .local v6, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-eqz v6, :cond_0

    .line 3616
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3617
    .local v5, "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3618
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v5, v1}, Lorg/telegram/messenger/SecretChatHelper;->sendMessagesReadMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 3619
    if-lez p5, :cond_0

    .line 3620
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    .line 3621
    .local v2, "time":I
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget v1, v6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    const/4 v4, 0x0

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage;->createTaskForSecretChat(IIIILjava/util/ArrayList;)V

    goto :goto_0
.end method

.method public markMessageContentAsRead(Lorg/telegram/messenger/MessageObject;)V
    .locals 10
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 3578
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3579
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    int-to-long v8, v1

    .line 3580
    .local v8, "messageId":J
    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v1, :cond_0

    .line 3581
    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    int-to-long v2, v1

    const/16 v1, 0x20

    shl-long/2addr v2, v1

    or-long/2addr v8, v2

    .line 3583
    :cond_0
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3584
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->markMessagesContentAsRead(Ljava/util/ArrayList;)V

    .line 3585
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagesReadContent:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3586
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    if-gez v1, :cond_1

    .line 3587
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const/high16 v6, -0x80000000

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->markMessageAsRead(JJI)V

    .line 3601
    :goto_0
    return-void

    .line 3589
    :cond_1
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_readMessageContents;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_readMessageContents;-><init>()V

    .line 3590
    .local v7, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_readMessageContents;
    iget-object v1, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_readMessageContents;->id:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3591
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$59;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$59;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v7, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public performLogout(Z)V
    .locals 7
    .param p1, "byUser"    # Z

    .prologue
    const/4 v6, 0x0

    .line 4431
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "Notifications"

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4432
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4433
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "emoji"

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4434
    const-string/jumbo v2, "lastGifLoadTime"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4435
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "mainconfig"

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4436
    const-string/jumbo v2, "gifhint"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4438
    if-eqz p1, :cond_0

    .line 4439
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->unregistedPush()V

    .line 4440
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_auth_logOut;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_auth_logOut;-><init>()V

    .line 4441
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_auth_logOut;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$81;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/MessagesController$81;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 4450
    .end local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_auth_logOut;
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->clearConfig()V

    .line 4451
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4452
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/MessagesStorage;->cleanup(Z)V

    .line 4453
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->cleanup()V

    .line 4454
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ContactsController;->deleteAllAppAccounts()V

    .line 4455
    return-void

    .line 4448
    :cond_0
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->cleanup()V

    goto :goto_0
.end method

.method public pinChannelMessage(Lorg/telegram/tgnet/TLRPC$Chat;IZ)V
    .locals 3
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;
    .param p2, "id"    # I
    .param p3, "notify"    # Z

    .prologue
    .line 1803
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_updatePinnedMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_updatePinnedMessage;-><init>()V

    .line 1804
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_updatePinnedMessage;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_updatePinnedMessage;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 1805
    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_updatePinnedMessage;->id:I

    .line 1806
    if-nez p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_updatePinnedMessage;->silent:Z

    .line 1807
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$33;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$33;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 1816
    return-void

    .line 1806
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public processChatInfo(ILorg/telegram/tgnet/TLRPC$ChatFull;Ljava/util/ArrayList;ZZZLorg/telegram/messenger/MessageObject;)V
    .locals 7
    .param p1, "chat_id"    # I
    .param p2, "info"    # Lorg/telegram/tgnet/TLRPC$ChatFull;
    .param p4, "fromCache"    # Z
    .param p5, "force"    # Z
    .param p6, "byChannelUsers"    # Z
    .param p7, "pinnedMessageObject"    # Lorg/telegram/messenger/MessageObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/telegram/tgnet/TLRPC$ChatFull;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;ZZZ",
            "Lorg/telegram/messenger/MessageObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2037
    .local p3, "usersArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    if-eqz p4, :cond_0

    if-lez p1, :cond_0

    if-nez p6, :cond_0

    .line 2038
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p5}, Lorg/telegram/messenger/MessagesController;->loadFullChat(IIZ)V

    .line 2040
    :cond_0
    if-eqz p2, :cond_1

    .line 2041
    new-instance v0, Lorg/telegram/messenger/MessagesController$40;

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p2

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MessagesController$40;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;ZLorg/telegram/tgnet/TLRPC$ChatFull;ZLorg/telegram/messenger/MessageObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2049
    :cond_1
    return-void
.end method

.method public processDialogsUpdate(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "dialogsRes"    # Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$messages_Dialogs;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3391
    .local p2, "encChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$57;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesController$57;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$messages_Dialogs;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3543
    return-void
.end method

.method public processDialogsUpdateRead(Ljava/util/HashMap;)V
    .locals 1
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
    .line 3289
    .local p1, "dialogsToUpdate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    new-instance v0, Lorg/telegram/messenger/MessagesController$55;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/MessagesController$55;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/HashMap;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3302
    return-void
.end method

.method public processLoadedBlockedUsers(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 1
    .param p3, "cache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1631
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    new-instance v0, Lorg/telegram/messenger/MessagesController$27;

    invoke-direct {v0, p0, p2, p3, p1}, Lorg/telegram/messenger/MessagesController$27;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;ZLjava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1649
    return-void
.end method

.method public processLoadedDeleteTask(ILjava/util/ArrayList;)V
    .locals 2
    .param p1, "taskTime"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1469
    .local p2, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$21;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/MessagesController$21;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1498
    return-void
.end method

.method public processLoadedDialogs(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Ljava/util/ArrayList;IIIZZ)V
    .locals 10
    .param p1, "dialogsRes"    # Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .param p5, "loadType"    # I
    .param p6, "resetEnd"    # Z
    .param p7, "migrate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$messages_Dialogs;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            ">;IIIZZ)V"
        }
    .end annotation

    .prologue
    .line 2929
    .local p2, "encChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    sget-object v9, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesController$54;

    move-object v1, p0

    move v2, p5

    move-object v3, p1

    move/from16 v4, p6

    move v5, p4

    move v6, p3

    move-object v7, p2

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/MessagesController$54;-><init>(Lorg/telegram/messenger/MessagesController;ILorg/telegram/tgnet/TLRPC$messages_Dialogs;ZIILjava/util/ArrayList;Z)V

    invoke-virtual {v9, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3200
    return-void
.end method

.method public processLoadedMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIZIIIIIIZZIZ)V
    .locals 22
    .param p1, "messagesRes"    # Lorg/telegram/tgnet/TLRPC$messages_Messages;
    .param p2, "dialog_id"    # J
    .param p4, "count"    # I
    .param p5, "max_id"    # I
    .param p6, "isCache"    # Z
    .param p7, "classGuid"    # I
    .param p8, "first_unread"    # I
    .param p9, "last_message_id"    # I
    .param p10, "unread_count"    # I
    .param p11, "last_date"    # I
    .param p12, "load_type"    # I
    .param p13, "isChannel"    # Z
    .param p14, "isEnd"    # Z
    .param p15, "loadIndex"    # I
    .param p16, "queryFromServer"    # Z

    .prologue
    .line 2563
    const-string/jumbo v2, "tmessages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processLoadedMessages size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in chat "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " max_id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " cache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " guid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " load_type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p12

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " last_message_id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " isChannel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p13

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p15

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " firstUnread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " underad count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p10

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " last_date "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p11

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " queryFromServer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2564
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/MessagesController$51;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move/from16 v8, p6

    move/from16 v9, p4

    move/from16 v10, p12

    move/from16 v11, p16

    move/from16 v12, p8

    move/from16 v13, p5

    move/from16 v14, p7

    move/from16 v15, p9

    move/from16 v16, p13

    move/from16 v17, p15

    move/from16 v18, p10

    move/from16 v19, p11

    move/from16 v20, p14

    invoke-direct/range {v3 .. v20}, Lorg/telegram/messenger/MessagesController$51;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$messages_Messages;JZIIZIIIIZIIIZ)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2710
    return-void
.end method

.method public processLoadedUserPhotos(Lorg/telegram/tgnet/TLRPC$photos_Photos;IIIJZI)V
    .locals 9
    .param p1, "res"    # Lorg/telegram/tgnet/TLRPC$photos_Photos;
    .param p2, "did"    # I
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .param p5, "max_id"    # J
    .param p7, "fromCache"    # Z
    .param p8, "classGuid"    # I

    .prologue
    .line 1710
    if-nez p7, :cond_1

    .line 1711
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$photos_Photos;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 1712
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lorg/telegram/messenger/MessagesStorage;->putDialogPhotos(ILorg/telegram/tgnet/TLRPC$photos_Photos;)V

    .line 1717
    :cond_0
    new-instance v0, Lorg/telegram/messenger/MessagesController$30;

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p7

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/MessagesController$30;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$photos_Photos;ZIIII)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1724
    :goto_0
    return-void

    .line 1713
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$photos_Photos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1714
    :cond_2
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-wide v4, p5

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/MessagesController;->loadDialogPhotos(IIIJZI)V

    goto :goto_0
.end method

.method protected processNewChannelDifferenceParams(III)V
    .locals 10
    .param p1, "pts"    # I
    .param p2, "pts_count"    # I
    .param p3, "channelId"    # I

    .prologue
    .line 1322
    const-string/jumbo v6, "tmessages"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processNewChannelDifferenceParams pts = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " pts_count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " channeldId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    neg-int v7, p3

    int-to-long v8, v7

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 1324
    .local v2, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1364
    :cond_0
    :goto_0
    return-void

    .line 1327
    :cond_1
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1328
    .local v1, "channelPts":Ljava/lang/Integer;
    if-nez v1, :cond_3

    .line 1329
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    invoke-virtual {v6, p3}, Lorg/telegram/messenger/MessagesStorage;->getChannelPtsSync(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1330
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_2

    .line 1331
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1333
    :cond_2
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1335
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, p2

    if-ne v6, p1, :cond_4

    .line 1336
    const-string/jumbo v6, "tmessages"

    const-string/jumbo v7, "APPLY CHANNEL PTS"

    invoke-static {v6, v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1338
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    invoke-virtual {v6, p3, p1}, Lorg/telegram/messenger/MessagesStorage;->saveChannelPts(II)V

    goto :goto_0

    .line 1339
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, p1, :cond_0

    .line 1340
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 1341
    .local v5, "updatesStartWaitTime":Ljava/lang/Long;
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->gettingDifferenceChannels:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 1342
    .local v3, "gettingDifferenceChannel":Ljava/lang/Boolean;
    if-nez v3, :cond_5

    .line 1343
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1345
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_6

    if-eqz v5, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x5dc

    cmp-long v6, v6, v8

    if-gtz v6, :cond_9

    .line 1346
    :cond_6
    const-string/jumbo v6, "tmessages"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ADD CHANNEL UPDATE TO QUEUE pts = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " pts_count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    if-nez v5, :cond_7

    .line 1348
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1350
    :cond_7
    new-instance v4, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v6}, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/MessagesController$1;)V

    .line 1351
    .local v4, "updates":Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;
    iput p1, v4, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;->pts:I

    .line 1352
    iput p2, v4, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;->pts_count:I

    .line 1353
    iput p3, v4, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;->chat_id:I

    .line 1354
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1355
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    if-nez v0, :cond_8

    .line 1356
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1357
    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    :cond_8
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1361
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    .end local v4    # "updates":Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;
    :cond_9
    invoke-direct {p0, p3}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V

    goto/16 :goto_0
.end method

.method protected processNewDifferenceParams(IIII)V
    .locals 6
    .param p1, "seq"    # I
    .param p2, "pts"    # I
    .param p3, "date"    # I
    .param p4, "pts_count"    # I

    .prologue
    .line 1367
    const-string/jumbo v1, "tmessages"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processNewDifferenceParams seq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " pts = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " date = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " pts_count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 1369
    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    add-int/2addr v1, p4

    if-ne v1, p2, :cond_3

    .line 1370
    const-string/jumbo v1, "tmessages"

    const-string/jumbo v2, "APPLY PTS"

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    sput p2, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    .line 1372
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    sget v3, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    sget v5, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->saveDiffParams(IIII)V

    .line 1388
    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    .line 1389
    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    add-int/lit8 v1, v1, 0x1

    if-ne v1, p1, :cond_7

    .line 1390
    const-string/jumbo v1, "tmessages"

    const-string/jumbo v2, "APPLY SEQ"

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    sput p1, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    .line 1392
    const/4 v1, -0x1

    if-eq p3, v1, :cond_1

    .line 1393
    sput p3, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    .line 1395
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    sget v3, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    sget v5, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->saveDiffParams(IIII)V

    .line 1410
    :cond_2
    :goto_1
    return-void

    .line 1373
    :cond_3
    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    if-eq v1, p2, :cond_0

    .line 1374
    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    if-nez v1, :cond_4

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x5dc

    cmp-long v1, v2, v4

    if-gtz v1, :cond_6

    .line 1375
    :cond_4
    const-string/jumbo v1, "tmessages"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ADD UPDATE TO QUEUE pts = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " pts_count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    .line 1377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    .line 1379
    :cond_5
    new-instance v0, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/MessagesController$1;)V

    .line 1380
    .local v0, "updates":Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;
    iput p2, v0, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;->pts:I

    .line 1381
    iput p4, v0, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;->pts_count:I

    .line 1382
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->updatesQueuePts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1384
    .end local v0    # "updates":Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->getDifference()V

    goto/16 :goto_0

    .line 1396
    :cond_7
    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    if-eq v1, p1, :cond_2

    .line 1397
    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    if-nez v1, :cond_8

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x5dc

    cmp-long v1, v2, v4

    if-gtz v1, :cond_a

    .line 1398
    :cond_8
    const-string/jumbo v1, "tmessages"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ADD UPDATE TO QUEUE seq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_9

    .line 1400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    .line 1402
    :cond_9
    new-instance v0, Lorg/telegram/messenger/MessagesController$UserActionUpdatesSeq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/MessagesController$UserActionUpdatesSeq;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/MessagesController$1;)V

    .line 1403
    .local v0, "updates":Lorg/telegram/messenger/MessagesController$UserActionUpdatesSeq;
    iput p1, v0, Lorg/telegram/messenger/MessagesController$UserActionUpdatesSeq;->seq:I

    .line 1404
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueSeq:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1406
    .end local v0    # "updates":Lorg/telegram/messenger/MessagesController$UserActionUpdatesSeq;
    :cond_a
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->getDifference()V

    goto/16 :goto_1
.end method

.method public processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z
    .locals 90
    .param p4, "fromGetDifference"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Update;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 5948
    .local p1, "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Update;>;"
    .local p2, "usersArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .local p3, "chatsArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5949
    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 5950
    :cond_0
    new-instance v4, Lorg/telegram/messenger/MessagesController$101;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v4, v0, v1, v2}, Lorg/telegram/messenger/MessagesController$101;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 5958
    :cond_1
    const/4 v4, 0x1

    .line 7129
    :goto_0
    return v4

    .line 5960
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    .line 5962
    .local v44, "currentTime":J
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 5963
    .local v11, "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    new-instance v89, Ljava/util/HashMap;

    invoke-direct/range {v89 .. v89}, Ljava/util/HashMap;-><init>()V

    .line 5964
    .local v89, "webPages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$WebPage;>;"
    new-instance v74, Ljava/util/ArrayList;

    invoke-direct/range {v74 .. v74}, Ljava/util/ArrayList;-><init>()V

    .line 5965
    .local v74, "pushMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    new-instance v63, Ljava/util/ArrayList;

    invoke-direct/range {v63 .. v63}, Ljava/util/ArrayList;-><init>()V

    .line 5966
    .local v63, "messagesArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 5967
    .local v12, "editingMessages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    new-instance v16, Landroid/util/SparseArray;

    invoke-direct/range {v16 .. v16}, Landroid/util/SparseArray;-><init>()V

    .line 5968
    .local v16, "channelViews":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    new-instance v19, Landroid/util/SparseArray;

    invoke-direct/range {v19 .. v19}, Landroid/util/SparseArray;-><init>()V

    .line 5969
    .local v19, "markAsReadMessagesInbox":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    new-instance v20, Landroid/util/SparseArray;

    invoke-direct/range {v20 .. v20}, Landroid/util/SparseArray;-><init>()V

    .line 5970
    .local v20, "markAsReadMessagesOutbox":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 5971
    .local v22, "markAsReadMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 5972
    .local v21, "markAsReadEncrypted":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v23, Landroid/util/SparseArray;

    invoke-direct/range {v23 .. v23}, Landroid/util/SparseArray;-><init>()V

    .line 5973
    .local v23, "deletedMessages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    const/16 v72, 0x0

    .line 5974
    .local v72, "printChanged":Z
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 5975
    .local v15, "chatInfoToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$ChatParticipants;>;"
    new-instance v83, Ljava/util/ArrayList;

    invoke-direct/range {v83 .. v83}, Ljava/util/ArrayList;-><init>()V

    .line 5976
    .local v83, "updatesOnMainThread":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Update;>;"
    new-instance v76, Ljava/util/ArrayList;

    invoke-direct/range {v76 .. v76}, Ljava/util/ArrayList;-><init>()V

    .line 5977
    .local v76, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 5979
    .local v14, "contactsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v41, 0x1

    .line 5982
    .local v41, "checkForUsers":Z
    if-eqz p2, :cond_3

    .line 5983
    new-instance v86, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct/range {v86 .. v86}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 5984
    .local v86, "usersDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    const/16 v30, 0x0

    .local v30, "a":I
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_4

    .line 5985
    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Lorg/telegram/tgnet/TLRPC$User;

    .line 5986
    .local v84, "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, v84

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v86

    move-object/from16 v1, v84

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5984
    add-int/lit8 v30, v30, 0x1

    goto :goto_1

    .line 5989
    .end local v30    # "a":I
    .end local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v86    # "usersDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_3
    const/16 v41, 0x0

    .line 5990
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v86, v0

    .line 5992
    .restart local v86    # "usersDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_4
    if-eqz p3, :cond_5

    .line 5993
    new-instance v40, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct/range {v40 .. v40}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 5994
    .local v40, "chatsDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    const/16 v30, 0x0

    .restart local v30    # "a":I
    :goto_2
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_6

    .line 5995
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 5996
    .local v38, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5994
    add-int/lit8 v30, v30, 0x1

    goto :goto_2

    .line 5999
    .end local v30    # "a":I
    .end local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v40    # "chatsDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    :cond_5
    const/16 v41, 0x0

    .line 6000
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v40, v0

    .line 6002
    .restart local v40    # "chatsDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    :cond_6
    if-eqz p4, :cond_7

    .line 6003
    const/16 v41, 0x0

    .line 6006
    :cond_7
    if-nez p2, :cond_8

    if-eqz p3, :cond_9

    .line 6007
    :cond_8
    new-instance v4, Lorg/telegram/messenger/MessagesController$102;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v4, v0, v1, v2}, Lorg/telegram/messenger/MessagesController$102;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 6016
    :cond_9
    const/16 v58, 0x0

    .line 6018
    .local v58, "interfaceUpdateMask":I
    const/16 v36, 0x0

    .local v36, "c":I
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v36

    if-ge v0, v4, :cond_9a

    .line 6019
    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Lorg/telegram/tgnet/TLRPC$Update;

    .line 6020
    .local v80, "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    if-nez v4, :cond_a

    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    if-eqz v4, :cond_2f

    .line 6022
    :cond_a
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    if-eqz v4, :cond_f

    .line 6023
    check-cast v80, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    .end local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, v80

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v61, v0

    .line 6033
    .local v61, "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_b
    :goto_4
    const/16 v38, 0x0

    .line 6034
    .restart local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v41, :cond_21

    .line 6035
    const/16 v39, 0x0

    .line 6036
    .local v39, "chat_id":I
    const/16 v85, 0x0

    .line 6037
    .local v85, "user_id":I
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v4, :cond_11

    .line 6038
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v39, v0

    .line 6044
    :cond_c
    :goto_5
    if-eqz v39, :cond_14

    .line 6045
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    check-cast v38, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 6046
    .restart local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-nez v38, :cond_d

    .line 6047
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v38

    .line 6049
    :cond_d
    if-nez v38, :cond_e

    .line 6050
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move/from16 v0, v39

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(I)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v38

    .line 6051
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 6053
    :cond_e
    if-nez v38, :cond_13

    .line 6054
    const-string/jumbo v4, "tmessages"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "not found chat "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6055
    const/4 v4, 0x0

    goto/16 :goto_0

    .end local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v39    # "chat_id":I
    .end local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v85    # "user_id":I
    .restart local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_f
    move-object/from16 v4, v80

    .line 6025
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v61, v0

    .line 6026
    .restart local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_10

    .line 6027
    const-string/jumbo v4, "tmessages"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " channelId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v61

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6029
    :cond_10
    move-object/from16 v0, v61

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-nez v4, :cond_b

    move-object/from16 v0, v61

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v4, v6, :cond_b

    .line 6030
    const/4 v4, 0x1

    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    goto/16 :goto_4

    .line 6039
    .end local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    .restart local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v39    # "chat_id":I
    .restart local v85    # "user_id":I
    :cond_11
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v4, :cond_12

    .line 6040
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    move/from16 v39, v0

    goto/16 :goto_5

    .line 6041
    :cond_12
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v4, :cond_c

    .line 6042
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v85, v0

    goto/16 :goto_5

    .line 6057
    :cond_13
    move-object/from16 v0, v38

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v4, :cond_14

    .line 6058
    move-object/from16 v0, v61

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v6, -0x80000000

    or-int/2addr v4, v6

    move-object/from16 v0, v61

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 6062
    :cond_14
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v43, v4, 0x3

    .line 6063
    .local v43, "count":I
    const/16 v30, 0x0

    .restart local v30    # "a":I
    :goto_6
    move/from16 v0, v30

    move/from16 v1, v43

    if-ge v0, v1, :cond_21

    .line 6064
    const/16 v31, 0x0

    .line 6065
    .local v31, "allowMin":Z
    if-eqz v30, :cond_15

    .line 6066
    const/4 v4, 0x1

    move/from16 v0, v30

    if-ne v0, v4, :cond_1b

    .line 6067
    move-object/from16 v0, v61

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v85, v0

    .line 6068
    move-object/from16 v0, v61

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    if-eqz v4, :cond_15

    .line 6069
    const/16 v31, 0x1

    .line 6078
    :cond_15
    :goto_7
    if-lez v85, :cond_20

    .line 6079
    invoke-static/range {v85 .. v85}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v86

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Lorg/telegram/tgnet/TLRPC$User;

    .line 6080
    .restart local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v84, :cond_16

    if-nez v31, :cond_17

    move-object/from16 v0, v84

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_17

    .line 6081
    :cond_16
    invoke-static/range {v85 .. v85}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v84

    .line 6083
    :cond_17
    if-eqz v84, :cond_18

    if-nez v31, :cond_1a

    move-object/from16 v0, v84

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_1a

    .line 6084
    :cond_18
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move/from16 v0, v85

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(I)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v84

    .line 6085
    if-eqz v84, :cond_19

    if-nez v31, :cond_19

    move-object/from16 v0, v84

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_19

    .line 6086
    const/16 v84, 0x0

    .line 6088
    :cond_19
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 6090
    :cond_1a
    if-nez v84, :cond_1f

    .line 6091
    const-string/jumbo v4, "tmessages"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "not found user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v85

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6092
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 6071
    .end local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1b
    const/4 v4, 0x2

    move/from16 v0, v30

    if-ne v0, v4, :cond_1d

    .line 6072
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    if-eqz v4, :cond_1c

    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    move/from16 v85, v0

    :goto_8
    goto :goto_7

    :cond_1c
    const/16 v85, 0x0

    goto :goto_8

    .line 6074
    :cond_1d
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    add-int/lit8 v6, v30, -0x3

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 6075
    .local v50, "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    move-object/from16 v0, v50

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    if-eqz v4, :cond_1e

    check-cast v50, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    .end local v50    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    move-object/from16 v0, v50

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;->user_id:I

    move/from16 v85, v0

    :goto_9
    goto/16 :goto_7

    .restart local v50    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_1e
    const/16 v85, 0x0

    goto :goto_9

    .line 6094
    .end local v50    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    .restart local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1f
    const/4 v4, 0x1

    move/from16 v0, v30

    if-ne v0, v4, :cond_20

    move-object/from16 v0, v84

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v4, :cond_20

    move-object/from16 v0, v84

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-gtz v4, :cond_20

    .line 6095
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v85 .. v85}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6096
    or-int/lit8 v58, v58, 0x4

    .line 6063
    .end local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_20
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_6

    .line 6102
    .end local v30    # "a":I
    .end local v31    # "allowMin":Z
    .end local v39    # "chat_id":I
    .end local v43    # "count":I
    .end local v85    # "user_id":I
    :cond_21
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser;

    if-eqz v4, :cond_22

    .line 6103
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v86

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Lorg/telegram/tgnet/TLRPC$User;

    .line 6104
    .restart local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v84, :cond_28

    move-object/from16 v0, v84

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v4, :cond_28

    .line 6105
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;-><init>()V

    move-object/from16 v0, v61

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 6111
    .end local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_22
    move-object/from16 v0, v63

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6112
    invoke-static/range {v61 .. v61}, Lorg/telegram/messenger/ImageLoader;->saveMessageThumbs(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 6113
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v4, :cond_29

    .line 6114
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v4, v4

    int-to-long v6, v4

    move-object/from16 v0, v61

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 6124
    :goto_a
    move-object/from16 v0, v61

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz v4, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v75, v0

    .line 6125
    .local v75, "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :goto_b
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v75

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Ljava/lang/Integer;

    .line 6126
    .local v87, "value":Ljava/lang/Integer;
    if-nez v87, :cond_23

    .line 6127
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v61

    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    move-object/from16 v0, v61

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-virtual {v4, v6, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v87

    .line 6128
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v75

    move-object/from16 v1, v87

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6130
    :cond_23
    invoke-virtual/range {v87 .. v87}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v61

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v4, v6, :cond_2d

    if-eqz v38, :cond_24

    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-nez v4, :cond_2d

    :cond_24
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo;

    if-nez v4, :cond_2d

    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;

    if-nez v4, :cond_2d

    const/4 v4, 0x1

    :goto_c
    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 6132
    new-instance v69, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v0, v69

    move-object/from16 v1, v61

    move-object/from16 v2, v86

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 6133
    .local v69, "obj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v69

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xb

    if-ne v4, v6, :cond_2e

    .line 6134
    or-int/lit8 v58, v58, 0x8

    .line 6138
    :cond_25
    :goto_d
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/ArrayList;

    .line 6139
    .local v32, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v32, :cond_26

    .line 6140
    new-instance v32, Ljava/util/ArrayList;

    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 6141
    .restart local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v11, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6143
    :cond_26
    move-object/from16 v0, v32

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6144
    invoke-virtual/range {v69 .. v69}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v4

    if-nez v4, :cond_27

    invoke-virtual/range {v69 .. v69}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 6145
    move-object/from16 v0, v74

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6018
    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    .end local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v87    # "value":Ljava/lang/Integer;
    :cond_27
    :goto_e
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_3

    .line 6106
    .restart local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_28
    move-object/from16 v0, v61

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v4, v6, :cond_22

    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v4, v6, :cond_22

    goto :goto_e

    .line 6115
    .end local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_29
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v4, :cond_2a

    .line 6116
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v4, v4

    int-to-long v6, v4

    move-object/from16 v0, v61

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto/16 :goto_a

    .line 6118
    :cond_2a
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v4, v6, :cond_2b

    .line 6119
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v0, v61

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 6121
    :cond_2b
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v6, v4

    move-object/from16 v0, v61

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto/16 :goto_a

    .line 6124
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v75, v0

    goto/16 :goto_b

    .line 6130
    .restart local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v87    # "value":Ljava/lang/Integer;
    :cond_2d
    const/4 v4, 0x0

    goto/16 :goto_c

    .line 6135
    .restart local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_2e
    move-object/from16 v0, v69

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xa

    if-ne v4, v6, :cond_25

    .line 6136
    or-int/lit8 v58, v58, 0x10

    goto/16 :goto_d

    .line 6147
    .end local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    .end local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v87    # "value":Ljava/lang/Integer;
    .restart local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_2f
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadMessagesContents;

    if-eqz v4, :cond_30

    .line 6148
    const/16 v30, 0x0

    .restart local v30    # "a":I
    :goto_f
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_27

    .line 6149
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->messages:Ljava/util/ArrayList;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v54, v0

    .line 6150
    .local v54, "id":J
    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6148
    add-int/lit8 v30, v30, 0x1

    goto :goto_f

    .line 6152
    .end local v30    # "a":I
    .end local v54    # "id":J
    :cond_30
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;

    if-nez v4, :cond_31

    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;

    if-eqz v4, :cond_36

    .line 6155
    :cond_31
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;

    if-eqz v4, :cond_34

    move-object/from16 v4, v80

    .line 6156
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v71, v0

    .line 6157
    .local v71, "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v4, :cond_33

    .line 6158
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v4, v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->max_id:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6159
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v4, v4

    int-to-long v0, v4

    move-wide/from16 v48, v0

    .line 6164
    .local v48, "dialog_id":J
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v75, v0

    .line 6176
    .restart local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :goto_11
    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v75

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Ljava/lang/Integer;

    .line 6177
    .restart local v87    # "value":Ljava/lang/Integer;
    if-nez v87, :cond_32

    .line 6178
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    instance-of v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;

    move-wide/from16 v0, v48

    invoke-virtual {v4, v6, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v87

    .line 6180
    :cond_32
    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual/range {v87 .. v87}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, v80

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Update;->max_id:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v75

    invoke-virtual {v0, v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    .line 6161
    .end local v48    # "dialog_id":J
    .end local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v87    # "value":Ljava/lang/Integer;
    :cond_33
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->max_id:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6162
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v0, v4

    move-wide/from16 v48, v0

    .restart local v48    # "dialog_id":J
    goto :goto_10

    .end local v48    # "dialog_id":J
    .end local v71    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    :cond_34
    move-object/from16 v4, v80

    .line 6166
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v71, v0

    .line 6167
    .restart local v71    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v4, :cond_35

    .line 6168
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v4, v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->max_id:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6169
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v4, v4

    int-to-long v0, v4

    move-wide/from16 v48, v0

    .line 6174
    .restart local v48    # "dialog_id":J
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v75, v0

    .restart local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    goto/16 :goto_11

    .line 6171
    .end local v48    # "dialog_id":J
    .end local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_35
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->max_id:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6172
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v0, v4

    move-wide/from16 v48, v0

    .restart local v48    # "dialog_id":J
    goto :goto_12

    .line 6181
    .end local v48    # "dialog_id":J
    .end local v71    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    :cond_36
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteMessages;

    if-eqz v4, :cond_38

    .line 6182
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/util/ArrayList;

    .line 6183
    .local v35, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v35, :cond_37

    .line 6184
    new-instance v35, Ljava/util/ArrayList;

    .end local v35    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 6185
    .restart local v35    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6187
    :cond_37
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->messages:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_e

    .line 6188
    .end local v35    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_38
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserTyping;

    if-nez v4, :cond_39

    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatUserTyping;

    if-eqz v4, :cond_43

    .line 6189
    :cond_39
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-eq v4, v6, :cond_27

    .line 6190
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->chat_id:I

    neg-int v4, v4

    int-to-long v0, v4

    move-wide/from16 v78, v0

    .line 6191
    .local v78, "uid":J
    const-wide/16 v6, 0x0

    cmp-long v4, v78, v6

    if-nez v4, :cond_3a

    .line 6192
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    int-to-long v0, v4

    move-wide/from16 v78, v0

    .line 6194
    :cond_3a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v78 .. v79}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/ArrayList;

    .line 6195
    .local v33, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_sendMessageCancelAction;

    if-eqz v4, :cond_3e

    .line 6196
    if-eqz v33, :cond_3c

    .line 6197
    const/16 v30, 0x0

    .restart local v30    # "a":I
    :goto_13
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_3b

    .line 6198
    move-object/from16 v0, v33

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Lorg/telegram/messenger/MessagesController$PrintingUser;

    .line 6199
    .local v73, "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    move-object/from16 v0, v73

    iget v4, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    if-ne v4, v6, :cond_3d

    .line 6200
    move-object/from16 v0, v33

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6201
    const/16 v72, 0x1

    .line 6205
    .end local v73    # "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    :cond_3b
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 6206
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v78 .. v79}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6235
    .end local v30    # "a":I
    :cond_3c
    :goto_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    .line 6197
    .restart local v30    # "a":I
    .restart local v73    # "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    :cond_3d
    add-int/lit8 v30, v30, 0x1

    goto :goto_13

    .line 6210
    .end local v30    # "a":I
    .end local v73    # "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    :cond_3e
    if-nez v33, :cond_3f

    .line 6211
    new-instance v33, Ljava/util/ArrayList;

    .end local v33    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 6212
    .restart local v33    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v78 .. v79}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-virtual {v4, v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6214
    :cond_3f
    const/16 v51, 0x0

    .line 6215
    .local v51, "exist":Z
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .local v53, "i$":Ljava/util/Iterator;
    :cond_40
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Lorg/telegram/messenger/MessagesController$PrintingUser;

    .line 6216
    .local v77, "u":Lorg/telegram/messenger/MessagesController$PrintingUser;
    move-object/from16 v0, v77

    iget v4, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    if-ne v4, v6, :cond_40

    .line 6217
    const/16 v51, 0x1

    .line 6218
    move-wide/from16 v0, v44

    move-object/from16 v2, v77

    iput-wide v0, v2, Lorg/telegram/messenger/MessagesController$PrintingUser;->lastTime:J

    .line 6219
    move-object/from16 v0, v77

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object/from16 v0, v80

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-eq v4, v6, :cond_41

    .line 6220
    const/16 v72, 0x1

    .line 6222
    :cond_41
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    move-object/from16 v0, v77

    iput-object v4, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    .line 6226
    .end local v77    # "u":Lorg/telegram/messenger/MessagesController$PrintingUser;
    :cond_42
    if-nez v51, :cond_3c

    .line 6227
    new-instance v67, Lorg/telegram/messenger/MessagesController$PrintingUser;

    invoke-direct/range {v67 .. v67}, Lorg/telegram/messenger/MessagesController$PrintingUser;-><init>()V

    .line 6228
    .local v67, "newUser":Lorg/telegram/messenger/MessagesController$PrintingUser;
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    move-object/from16 v0, v67

    iput v4, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    .line 6229
    move-wide/from16 v0, v44

    move-object/from16 v2, v67

    iput-wide v0, v2, Lorg/telegram/messenger/MessagesController$PrintingUser;->lastTime:J

    .line 6230
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    move-object/from16 v0, v67

    iput-object v4, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    .line 6231
    move-object/from16 v0, v33

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6232
    const/16 v72, 0x1

    goto/16 :goto_14

    .line 6237
    .end local v33    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    .end local v51    # "exist":Z
    .end local v53    # "i$":Ljava/util/Iterator;
    .end local v67    # "newUser":Lorg/telegram/messenger/MessagesController$PrintingUser;
    .end local v78    # "uid":J
    :cond_43
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipants;

    if-eqz v4, :cond_44

    .line 6238
    or-int/lit8 v58, v58, 0x20

    .line 6239
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 6240
    :cond_44
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserStatus;

    if-eqz v4, :cond_45

    .line 6241
    or-int/lit8 v58, v58, 0x4

    .line 6242
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 6243
    :cond_45
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserName;

    if-eqz v4, :cond_46

    .line 6244
    or-int/lit8 v58, v58, 0x1

    .line 6245
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 6246
    :cond_46
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhoto;

    if-eqz v4, :cond_47

    .line 6247
    or-int/lit8 v58, v58, 0x2

    .line 6248
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->clearUserPhotos(I)V

    .line 6249
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 6275
    :cond_47
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhone;

    if-eqz v4, :cond_48

    .line 6276
    move/from16 v0, v58

    or-int/lit16 v0, v0, 0x400

    move/from16 v58, v0

    .line 6277
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 6278
    :cond_48
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateContactRegistered;

    if-eqz v4, :cond_4a

    .line 6279
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/MessagesController;->enableJoined:Z

    if-eqz v4, :cond_27

    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v86

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->isDialogHasMessages(J)Z

    move-result v4

    if-nez v4, :cond_27

    .line 6280
    new-instance v66, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct/range {v66 .. v66}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    .line 6281
    .local v66, "newMessage":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserJoined;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserJoined;-><init>()V

    move-object/from16 v0, v66

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 6282
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v4

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->id:I

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->local_id:I

    .line 6283
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 6284
    const/4 v4, 0x0

    move-object/from16 v0, v66

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->unread:Z

    .line 6285
    const/16 v4, 0x100

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 6286
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->date:I

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    .line 6287
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->from_id:I

    .line 6288
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    move-object/from16 v0, v66

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 6289
    move-object/from16 v0, v66

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 6290
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    int-to-long v6, v4

    move-object/from16 v0, v66

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    .line 6292
    move-object/from16 v0, v63

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6293
    new-instance v69, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    move-object/from16 v0, v66

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v0, v69

    move-object/from16 v1, v66

    move-object/from16 v2, v86

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 6294
    .restart local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v66

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/ArrayList;

    .line 6295
    .restart local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v32, :cond_49

    .line 6296
    new-instance v32, Ljava/util/ArrayList;

    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 6297
    .restart local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v66

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v11, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6299
    :cond_49
    move-object/from16 v0, v32

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 6301
    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v66    # "newMessage":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    .end local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_4a
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateContactLink;

    if-eqz v4, :cond_4e

    .line 6302
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->my_link:Lorg/telegram/tgnet/TLRPC$ContactLink;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_contactLinkContact;

    if-eqz v4, :cond_4c

    .line 6303
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    neg-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v57

    .line 6304
    .local v57, "idx":I
    const/4 v4, -0x1

    move/from16 v0, v57

    if-eq v0, v4, :cond_4b

    .line 6305
    move/from16 v0, v57

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6307
    :cond_4b
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 6308
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 6311
    .end local v57    # "idx":I
    :cond_4c
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v57

    .line 6312
    .restart local v57    # "idx":I
    const/4 v4, -0x1

    move/from16 v0, v57

    if-eq v0, v4, :cond_4d

    .line 6313
    move/from16 v0, v57

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6315
    :cond_4d
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 6316
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    neg-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 6319
    .end local v57    # "idx":I
    :cond_4e
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewAuthorization;

    if-eqz v4, :cond_50

    .line 6320
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->date:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->hasAuthMessage(I)Z

    move-result v4

    if-nez v4, :cond_27

    .line 6321
    new-instance v4, Lorg/telegram/messenger/MessagesController$103;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/messenger/MessagesController$103;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 6327
    new-instance v66, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct/range {v66 .. v66}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    .line 6328
    .restart local v66    # "newMessage":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionLoginUnknownLocation;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageActionLoginUnknownLocation;-><init>()V

    move-object/from16 v0, v66

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 6329
    move-object/from16 v0, v66

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v0, v80

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->device:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    .line 6330
    move-object/from16 v0, v66

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v0, v80

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->location:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->address:Ljava/lang/String;

    .line 6331
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v4

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->id:I

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->local_id:I

    .line 6332
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 6333
    const/4 v4, 0x1

    move-object/from16 v0, v66

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->unread:Z

    .line 6334
    const/16 v4, 0x100

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 6335
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->date:I

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    .line 6336
    const v4, 0xbdb28

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->from_id:I

    .line 6337
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    move-object/from16 v0, v66

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 6338
    move-object/from16 v0, v66

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 6339
    const-wide/32 v6, 0xbdb28

    move-object/from16 v0, v66

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    .line 6341
    move-object/from16 v0, v63

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6342
    new-instance v69, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    move-object/from16 v0, v66

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v0, v69

    move-object/from16 v1, v66

    move-object/from16 v2, v86

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 6343
    .restart local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v66

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/ArrayList;

    .line 6344
    .restart local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v32, :cond_4f

    .line 6345
    new-instance v32, Ljava/util/ArrayList;

    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 6346
    .restart local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v66

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v11, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6348
    :cond_4f
    move-object/from16 v0, v32

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6349
    move-object/from16 v0, v74

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 6351
    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v66    # "newMessage":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    .end local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_50
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewGeoChatMessage;

    if-nez v4, :cond_27

    .line 6353
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;

    if-eqz v4, :cond_52

    .line 6354
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    move-object/from16 v4, v80

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;->message:Lorg/telegram/tgnet/TLRPC$EncryptedMessage;

    invoke-virtual {v6, v4}, Lorg/telegram/messenger/SecretChatHelper;->decryptMessage(Lorg/telegram/tgnet/TLRPC$EncryptedMessage;)Ljava/util/ArrayList;

    move-result-object v46

    .line 6355
    .local v46, "decryptedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    if-eqz v46, :cond_27

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_27

    .line 6356
    check-cast v80, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;

    .end local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;->message:Lorg/telegram/tgnet/TLRPC$EncryptedMessage;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->chat_id:I

    move/from16 v42, v0

    .line 6357
    .local v42, "cid":I
    move/from16 v0, v42

    int-to-long v6, v0

    const/16 v4, 0x20

    shl-long v78, v6, v4

    .line 6358
    .restart local v78    # "uid":J
    invoke-static/range {v78 .. v79}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/ArrayList;

    .line 6359
    .restart local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v32, :cond_51

    .line 6360
    new-instance v32, Ljava/util/ArrayList;

    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 6361
    .restart local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-static/range {v78 .. v79}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v11, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6363
    :cond_51
    const/16 v30, 0x0

    .restart local v30    # "a":I
    :goto_15
    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_27

    .line 6364
    move-object/from16 v0, v46

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lorg/telegram/tgnet/TLRPC$Message;

    .line 6365
    .restart local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static/range {v61 .. v61}, Lorg/telegram/messenger/ImageLoader;->saveMessageThumbs(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 6366
    move-object/from16 v0, v63

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6367
    new-instance v69, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    invoke-static/range {v78 .. v79}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v0, v69

    move-object/from16 v1, v61

    move-object/from16 v2, v86

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 6368
    .restart local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v32

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6369
    move-object/from16 v0, v74

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6363
    add-int/lit8 v30, v30, 0x1

    goto :goto_15

    .line 6372
    .end local v30    # "a":I
    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v42    # "cid":I
    .end local v46    # "decryptedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    .end local v78    # "uid":J
    .restart local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_52
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedChatTyping;

    if-eqz v4, :cond_57

    .line 6373
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->chat_id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getEncryptedChatDB(I)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v47

    .line 6374
    .local v47, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-eqz v47, :cond_27

    .line 6375
    move-object/from16 v0, v47

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    move-object/from16 v0, v80

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    .line 6376
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->chat_id:I

    int-to-long v6, v4

    const/16 v4, 0x20

    shl-long v78, v6, v4

    .line 6377
    .restart local v78    # "uid":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v78 .. v79}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/ArrayList;

    .line 6378
    .restart local v33    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    if-nez v33, :cond_53

    .line 6379
    new-instance v33, Ljava/util/ArrayList;

    .end local v33    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 6380
    .restart local v33    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v78 .. v79}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-virtual {v4, v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6382
    :cond_53
    const/16 v51, 0x0

    .line 6383
    .restart local v51    # "exist":Z
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53    # "i$":Ljava/util/Iterator;
    :cond_54
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Lorg/telegram/messenger/MessagesController$PrintingUser;

    .line 6384
    .restart local v77    # "u":Lorg/telegram/messenger/MessagesController$PrintingUser;
    move-object/from16 v0, v77

    iget v4, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    if-ne v4, v6, :cond_54

    .line 6385
    const/16 v51, 0x1

    .line 6386
    move-wide/from16 v0, v44

    move-object/from16 v2, v77

    iput-wide v0, v2, Lorg/telegram/messenger/MessagesController$PrintingUser;->lastTime:J

    .line 6387
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;-><init>()V

    move-object/from16 v0, v77

    iput-object v4, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    .line 6391
    .end local v77    # "u":Lorg/telegram/messenger/MessagesController$PrintingUser;
    :cond_55
    if-nez v51, :cond_56

    .line 6392
    new-instance v67, Lorg/telegram/messenger/MessagesController$PrintingUser;

    invoke-direct/range {v67 .. v67}, Lorg/telegram/messenger/MessagesController$PrintingUser;-><init>()V

    .line 6393
    .restart local v67    # "newUser":Lorg/telegram/messenger/MessagesController$PrintingUser;
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    move-object/from16 v0, v67

    iput v4, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    .line 6394
    move-wide/from16 v0, v44

    move-object/from16 v2, v67

    iput-wide v0, v2, Lorg/telegram/messenger/MessagesController$PrintingUser;->lastTime:J

    .line 6395
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;-><init>()V

    move-object/from16 v0, v67

    iput-object v4, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    .line 6396
    move-object/from16 v0, v33

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6397
    const/16 v72, 0x1

    .line 6399
    .end local v67    # "newUser":Lorg/telegram/messenger/MessagesController$PrintingUser;
    :cond_56
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    .line 6401
    .end local v33    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    .end local v47    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v51    # "exist":Z
    .end local v53    # "i$":Ljava/util/Iterator;
    .end local v78    # "uid":J
    :cond_57
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;

    if-eqz v4, :cond_58

    .line 6402
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->chat_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->max_date:I

    move-object/from16 v0, v80

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Update;->date:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6403
    check-cast v80, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;

    .end local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, v76

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 6404
    .restart local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_58
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdd;

    if-eqz v4, :cond_59

    .line 6405
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Update;->chat_id:I

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    const/4 v7, 0x0

    move-object/from16 v0, v80

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$Update;->inviter_id:I

    move-object/from16 v0, v80

    iget v9, v0, Lorg/telegram/tgnet/TLRPC$Update;->version:I

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(IIIII)V

    goto/16 :goto_e

    .line 6406
    :cond_59
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantDelete;

    if-eqz v4, :cond_5a

    .line 6407
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Update;->chat_id:I

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, v80

    iget v9, v0, Lorg/telegram/tgnet/TLRPC$Update;->version:I

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(IIIII)V

    goto/16 :goto_e

    .line 6408
    :cond_5a
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateDcOptions;

    if-eqz v4, :cond_5b

    .line 6409
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->updateDcSettings()V

    goto/16 :goto_e

    .line 6410
    :cond_5b
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;

    if-eqz v4, :cond_5c

    .line 6411
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v4

    check-cast v80, Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;

    .end local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, v80

    move-object/from16 v1, v86

    invoke-virtual {v4, v0, v1}, Lorg/telegram/messenger/SecretChatHelper;->processUpdateEncryption(Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;Ljava/util/concurrent/ConcurrentHashMap;)V

    goto/16 :goto_e

    .line 6412
    .restart local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_5c
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;

    if-eqz v4, :cond_5e

    move-object/from16 v52, v80

    .line 6413
    check-cast v52, Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;

    .line 6414
    .local v52, "finalUpdate":Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;
    move-object/from16 v0, v52

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;->blocked:Z

    if-eqz v4, :cond_5d

    .line 6415
    new-instance v56, Ljava/util/ArrayList;

    invoke-direct/range {v56 .. v56}, Ljava/util/ArrayList;-><init>()V

    .line 6416
    .local v56, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, v52

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v56

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6417
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v0, v56

    invoke-virtual {v4, v0, v6}, Lorg/telegram/messenger/MessagesStorage;->putBlockedUsers(Ljava/util/ArrayList;Z)V

    .line 6421
    .end local v56    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_16
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v4

    new-instance v6, Lorg/telegram/messenger/MessagesController$104;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v6, v0, v1}, Lorg/telegram/messenger/MessagesController$104;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_e

    .line 6419
    :cond_5d
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v52

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;->user_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->deleteBlockedUser(I)V

    goto :goto_16

    .line 6439
    .end local v52    # "finalUpdate":Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;
    :cond_5e
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;

    if-eqz v4, :cond_5f

    .line 6440
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 6441
    :cond_5f
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;

    if-eqz v4, :cond_62

    move-object/from16 v68, v80

    .line 6442
    check-cast v68, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;

    .line 6443
    .local v68, "notification":Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;
    move-object/from16 v0, v68

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->popup:Z

    if-eqz v4, :cond_60

    move-object/from16 v0, v68

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->message:Ljava/lang/String;

    if-eqz v4, :cond_60

    move-object/from16 v0, v68

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->message:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_60

    .line 6444
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->needShowAlert:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, v68

    iget-object v9, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->message:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 6446
    :cond_60
    new-instance v66, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v66 .. v66}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 6447
    .local v66, "newMessage":Lorg/telegram/tgnet/TLRPC$TL_message;
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v4

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->local_id:I

    .line 6448
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 6449
    const/4 v4, 0x1

    move-object/from16 v0, v66

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->unread:Z

    .line 6450
    const/16 v4, 0x100

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 6451
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->date:I

    .line 6452
    const v4, 0xbdb28

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    .line 6453
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    move-object/from16 v0, v66

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 6454
    move-object/from16 v0, v66

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 6455
    const-wide/32 v6, 0xbdb28

    move-object/from16 v0, v66

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    .line 6456
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v66

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 6457
    move-object/from16 v0, v66

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    or-int/lit16 v4, v4, 0x200

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 6458
    move-object/from16 v0, v68

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->message:Ljava/lang/String;

    move-object/from16 v0, v66

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    .line 6460
    move-object/from16 v0, v63

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6461
    new-instance v69, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    move-object/from16 v0, v66

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v0, v69

    move-object/from16 v1, v66

    move-object/from16 v2, v86

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 6462
    .restart local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v66

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/ArrayList;

    .line 6463
    .restart local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v32, :cond_61

    .line 6464
    new-instance v32, Ljava/util/ArrayList;

    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 6465
    .restart local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v66

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v11, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6467
    :cond_61
    move-object/from16 v0, v32

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6468
    move-object/from16 v0, v74

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 6469
    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v66    # "newMessage":Lorg/telegram/tgnet/TLRPC$TL_message;
    .end local v68    # "notification":Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;
    .end local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_62
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updatePrivacy;

    if-eqz v4, :cond_63

    .line 6470
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 6471
    :cond_63
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateWebPage;

    if-eqz v4, :cond_64

    .line 6472
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v80

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    move-object/from16 v0, v89

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    .line 6473
    :cond_64
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelTooLong;

    if-eqz v4, :cond_6d

    .line 6474
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_65

    .line 6475
    const-string/jumbo v4, "tmessages"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " channelId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v80

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6477
    :cond_65
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Integer;

    .line 6478
    .local v37, "channelPts":Ljava/lang/Integer;
    if-nez v37, :cond_6a

    .line 6479
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->getChannelPtsSync(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    .line 6480
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_6b

    .line 6481
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 6482
    .restart local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v38, :cond_66

    move-object/from16 v0, v38

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v4, :cond_67

    .line 6483
    :cond_66
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v38

    .line 6485
    :cond_67
    if-eqz v38, :cond_68

    move-object/from16 v0, v38

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v4, :cond_69

    .line 6486
    :cond_68
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(I)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v38

    .line 6487
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 6489
    :cond_69
    if-eqz v38, :cond_6a

    move-object/from16 v0, v38

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-nez v4, :cond_6a

    .line 6490
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v6, v7}, Lorg/telegram/messenger/MessagesController;->loadUnknownChannel(Lorg/telegram/tgnet/TLRPC$Chat;J)V

    .line 6496
    .end local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_6a
    :goto_17
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_27

    .line 6497
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6c

    .line 6498
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v4, v6, :cond_27

    .line 6499
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V

    goto/16 :goto_e

    .line 6493
    :cond_6b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v37

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    .line 6502
    :cond_6c
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V

    goto/16 :goto_e

    .line 6505
    .end local v37    # "channelPts":Ljava/lang/Integer;
    :cond_6d
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;

    if-nez v4, :cond_6e

    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;

    if-eqz v4, :cond_71

    .line 6506
    :cond_6e
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->max_id:I

    int-to-long v0, v4

    move-wide/from16 v64, v0

    .line 6507
    .local v64, "message_id":J
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    int-to-long v6, v4

    const/16 v4, 0x20

    shl-long/2addr v6, v4

    or-long v64, v64, v6

    .line 6508
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    neg-int v4, v4

    int-to-long v0, v4

    move-wide/from16 v48, v0

    .line 6511
    .restart local v48    # "dialog_id":J
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;

    if-eqz v4, :cond_70

    .line 6512
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v75, v0

    .line 6513
    .restart local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    neg-int v4, v4

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6519
    :goto_18
    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v75

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Ljava/lang/Integer;

    .line 6520
    .restart local v87    # "value":Ljava/lang/Integer;
    if-nez v87, :cond_6f

    .line 6521
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    instance-of v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;

    move-wide/from16 v0, v48

    invoke-virtual {v4, v6, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v87

    .line 6523
    :cond_6f
    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual/range {v87 .. v87}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, v80

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Update;->max_id:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v75

    invoke-virtual {v0, v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    .line 6515
    .end local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v87    # "value":Ljava/lang/Integer;
    :cond_70
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v75, v0

    .line 6516
    .restart local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    neg-int v4, v4

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_18

    .line 6524
    .end local v48    # "dialog_id":J
    .end local v64    # "message_id":J
    .end local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_71
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteChannelMessages;

    if-eqz v4, :cond_74

    .line 6525
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_72

    .line 6526
    const-string/jumbo v4, "tmessages"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " channelId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v80

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6528
    :cond_72
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/util/ArrayList;

    .line 6529
    .restart local v35    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v35, :cond_73

    .line 6530
    new-instance v35, Ljava/util/ArrayList;

    .end local v35    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 6531
    .restart local v35    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6533
    :cond_73
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->messages:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_e

    .line 6534
    .end local v35    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_74
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannel;

    if-eqz v4, :cond_76

    .line 6535
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_75

    .line 6536
    const-string/jumbo v4, "tmessages"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " channelId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v80

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6538
    :cond_75
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 6539
    :cond_76
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageViews;

    if-eqz v4, :cond_79

    .line 6540
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_77

    .line 6541
    const-string/jumbo v4, "tmessages"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " channelId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v80

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_77
    move-object/from16 v81, v80

    .line 6543
    check-cast v81, Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageViews;

    .line 6544
    .local v81, "updateChannelMessageViews":Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageViews;
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/util/SparseIntArray;

    .line 6545
    .local v34, "array":Landroid/util/SparseIntArray;
    if-nez v34, :cond_78

    .line 6546
    new-instance v34, Landroid/util/SparseIntArray;

    .end local v34    # "array":Landroid/util/SparseIntArray;
    invoke-direct/range {v34 .. v34}, Landroid/util/SparseIntArray;-><init>()V

    .line 6547
    .restart local v34    # "array":Landroid/util/SparseIntArray;
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6549
    :cond_78
    move-object/from16 v0, v81

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageViews;->id:I

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->views:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_e

    .line 6550
    .end local v34    # "array":Landroid/util/SparseIntArray;
    .end local v81    # "updateChannelMessageViews":Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageViews;
    :cond_79
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdmin;

    if-eqz v4, :cond_7b

    .line 6551
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Update;->chat_id:I

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    const/4 v7, 0x2

    move-object/from16 v0, v80

    iget-boolean v8, v0, Lorg/telegram/tgnet/TLRPC$Update;->is_admin:Z

    if-eqz v8, :cond_7a

    const/4 v8, 0x1

    :goto_19
    move-object/from16 v0, v80

    iget v9, v0, Lorg/telegram/tgnet/TLRPC$Update;->version:I

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(IIIII)V

    goto/16 :goto_e

    :cond_7a
    const/4 v8, 0x0

    goto :goto_19

    .line 6552
    :cond_7b
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatAdmins;

    if-eqz v4, :cond_7c

    .line 6553
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 6554
    :cond_7c
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSets;

    if-eqz v4, :cond_7d

    .line 6555
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 6556
    :cond_7d
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;

    if-eqz v4, :cond_7e

    .line 6557
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 6558
    :cond_7e
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewStickerSet;

    if-eqz v4, :cond_7f

    .line 6559
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 6560
    :cond_7f
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;

    if-eqz v4, :cond_80

    .line 6561
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 6562
    :cond_80
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateSavedGifs;

    if-eqz v4, :cond_81

    .line 6563
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 6564
    :cond_81
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    if-nez v4, :cond_82

    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;

    if-eqz v4, :cond_98

    .line 6566
    :cond_82
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    if-eqz v4, :cond_8e

    move-object/from16 v4, v80

    .line 6567
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v61, v0

    .line 6568
    .restart local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_83

    .line 6569
    const-string/jumbo v4, "tmessages"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " channelId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v61

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6571
    :cond_83
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 6572
    .restart local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-nez v38, :cond_84

    .line 6573
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v38

    .line 6575
    :cond_84
    if-nez v38, :cond_85

    .line 6576
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v61

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(I)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v38

    .line 6577
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 6579
    :cond_85
    if-eqz v38, :cond_86

    move-object/from16 v0, v38

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v4, :cond_86

    .line 6580
    move-object/from16 v0, v61

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v6, -0x80000000

    or-int/2addr v4, v6

    move-object/from16 v0, v61

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 6585
    .end local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_86
    :goto_1a
    move-object/from16 v0, v61

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz v4, :cond_88

    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz v4, :cond_87

    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_88

    .line 6586
    :cond_87
    const-string/jumbo v4, "-1"

    move-object/from16 v0, v61

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 6587
    const-string/jumbo v4, ""

    move-object/from16 v0, v61

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 6589
    :cond_88
    if-nez p4, :cond_90

    .line 6590
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v43

    .line 6591
    .restart local v43    # "count":I
    const/16 v30, 0x0

    .restart local v30    # "a":I
    :goto_1b
    move/from16 v0, v30

    move/from16 v1, v43

    if-ge v0, v1, :cond_90

    .line 6592
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 6593
    .restart local v50    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    move-object/from16 v0, v50

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    if-eqz v4, :cond_8f

    .line 6594
    check-cast v50, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    .end local v50    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    move-object/from16 v0, v50

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;->user_id:I

    move/from16 v85, v0

    .line 6595
    .restart local v85    # "user_id":I
    invoke-static/range {v85 .. v85}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v86

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Lorg/telegram/tgnet/TLRPC$User;

    .line 6596
    .restart local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v84, :cond_89

    move-object/from16 v0, v84

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_8a

    .line 6597
    :cond_89
    invoke-static/range {v85 .. v85}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v84

    .line 6599
    :cond_8a
    if-eqz v84, :cond_8b

    move-object/from16 v0, v84

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_8d

    .line 6600
    :cond_8b
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move/from16 v0, v85

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(I)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v84

    .line 6601
    if-eqz v84, :cond_8c

    move-object/from16 v0, v84

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_8c

    .line 6602
    const/16 v84, 0x0

    .line 6604
    :cond_8c
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 6606
    :cond_8d
    if-nez v84, :cond_8f

    .line 6607
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 6583
    .end local v30    # "a":I
    .end local v43    # "count":I
    .end local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v85    # "user_id":I
    .restart local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_8e
    check-cast v80, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;

    .end local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, v80

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v61, v0

    .restart local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    goto/16 :goto_1a

    .line 6591
    .restart local v30    # "a":I
    .restart local v43    # "count":I
    :cond_8f
    add-int/lit8 v30, v30, 0x1

    goto :goto_1b

    .line 6613
    .end local v30    # "a":I
    .end local v43    # "count":I
    :cond_90
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v4, :cond_93

    .line 6614
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v4, v4

    int-to-long v6, v4

    move-object/from16 v0, v61

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 6624
    :goto_1c
    move-object/from16 v0, v61

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz v4, :cond_96

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v75, v0

    .line 6625
    .restart local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :goto_1d
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v75

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Ljava/lang/Integer;

    .line 6626
    .restart local v87    # "value":Ljava/lang/Integer;
    if-nez v87, :cond_91

    .line 6627
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v61

    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    move-object/from16 v0, v61

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-virtual {v4, v6, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v87

    .line 6628
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v75

    move-object/from16 v1, v87

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6630
    :cond_91
    invoke-virtual/range {v87 .. v87}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v61

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v4, v6, :cond_97

    const/4 v4, 0x1

    :goto_1e
    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 6632
    invoke-static/range {v61 .. v61}, Lorg/telegram/messenger/ImageLoader;->saveMessageThumbs(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 6634
    new-instance v69, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v0, v69

    move-object/from16 v1, v61

    move-object/from16 v2, v86

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 6636
    .restart local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/ArrayList;

    .line 6637
    .restart local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v32, :cond_92

    .line 6638
    new-instance v32, Ljava/util/ArrayList;

    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 6639
    .restart local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v12, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6641
    :cond_92
    move-object/from16 v0, v32

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 6615
    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    .end local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v87    # "value":Ljava/lang/Integer;
    :cond_93
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v4, :cond_94

    .line 6616
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v4, v4

    int-to-long v6, v4

    move-object/from16 v0, v61

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto/16 :goto_1c

    .line 6618
    :cond_94
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v4, v6, :cond_95

    .line 6619
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v0, v61

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 6621
    :cond_95
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v6, v4

    move-object/from16 v0, v61

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto/16 :goto_1c

    .line 6624
    :cond_96
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v75, v0

    goto/16 :goto_1d

    .line 6630
    .restart local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v87    # "value":Ljava/lang/Integer;
    :cond_97
    const/4 v4, 0x0

    goto/16 :goto_1e

    .line 6642
    .end local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v87    # "value":Ljava/lang/Integer;
    .restart local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_98
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelPinnedMessage;

    if-eqz v4, :cond_27

    .line 6643
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_99

    .line 6644
    const-string/jumbo v4, "tmessages"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " channelId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v80

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_99
    move-object/from16 v82, v80

    .line 6646
    check-cast v82, Lorg/telegram/tgnet/TLRPC$TL_updateChannelPinnedMessage;

    .line 6647
    .local v82, "updateChannelPinnedMessage":Lorg/telegram/tgnet/TLRPC$TL_updateChannelPinnedMessage;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    move-object/from16 v0, v82

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelPinnedMessage;->id:I

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->updateChannelPinnedMessage(II)V

    goto/16 :goto_e

    .line 6650
    .end local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    .end local v82    # "updateChannelPinnedMessage":Lorg/telegram/tgnet/TLRPC$TL_updateChannelPinnedMessage;
    :cond_9a
    invoke-virtual {v11}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9c

    .line 6651
    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53    # "i$":Ljava/util/Iterator;
    :cond_9b
    :goto_1f
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9c

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Ljava/util/Map$Entry;

    .line 6652
    .local v70, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    invoke-interface/range {v70 .. v70}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Long;

    .line 6653
    .local v60, "key":Ljava/lang/Long;
    invoke-interface/range {v70 .. v70}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Ljava/util/ArrayList;

    .line 6654
    .local v88, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-virtual/range {v60 .. v60}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v6, v7, v1}, Lorg/telegram/messenger/MessagesController;->updatePrintingUsersWithNewMessages(JLjava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_9b

    .line 6655
    const/16 v72, 0x1

    goto :goto_1f

    .line 6660
    .end local v53    # "i$":Ljava/util/Iterator;
    .end local v60    # "key":Ljava/lang/Long;
    .end local v70    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    .end local v88    # "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_9c
    if-eqz v72, :cond_9d

    .line 6661
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MessagesController;->updatePrintingStrings()V

    .line 6664
    :cond_9d
    move/from16 v59, v58

    .line 6665
    .local v59, "interfaceUpdateMaskFinal":I
    move/from16 v13, v72

    .line 6667
    .local v13, "printChangedArg":Z
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9e

    .line 6668
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    move-object/from16 v0, v86

    invoke-virtual {v4, v14, v0}, Lorg/telegram/messenger/ContactsController;->processContactsUpdates(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 6671
    :cond_9e
    invoke-virtual/range {v74 .. v74}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9f

    .line 6672
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v4

    new-instance v6, Lorg/telegram/messenger/MessagesController$105;

    move-object/from16 v0, p0

    move-object/from16 v1, v74

    invoke-direct {v6, v0, v1}, Lorg/telegram/messenger/MessagesController$105;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 6685
    :cond_9f
    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a0

    .line 6686
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/MediaController;->getAutodownloadMask()I

    move-result v9

    move-object/from16 v5, v63

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 6688
    :cond_a0
    invoke-virtual {v12}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a2

    .line 6689
    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53    # "i$":Ljava/util/Iterator;
    :goto_20
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a2

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Ljava/util/Map$Entry;

    .line 6690
    .restart local v70    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;-><init>()V

    .line 6691
    .local v5, "messagesRes":Lorg/telegram/tgnet/TLRPC$TL_messages_messages;
    invoke-interface/range {v70 .. v70}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/util/ArrayList;

    .line 6692
    .local v62, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/16 v30, 0x0

    .restart local v30    # "a":I
    :goto_21
    invoke-virtual/range {v62 .. v62}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_a1

    .line 6693
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    move-object/from16 v0, v62

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6692
    add-int/lit8 v30, v30, 0x1

    goto :goto_21

    .line 6695
    :cond_a1
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-interface/range {v70 .. v70}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, -0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIZ)V

    goto :goto_20

    .line 6699
    .end local v5    # "messagesRes":Lorg/telegram/tgnet/TLRPC$TL_messages_messages;
    .end local v30    # "a":I
    .end local v53    # "i$":Ljava/util/Iterator;
    .end local v62    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v70    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    :cond_a2
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-eqz v4, :cond_a3

    .line 6700
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v6}, Lorg/telegram/messenger/MessagesStorage;->putChannelViews(Landroid/util/SparseArray;Z)V

    .line 6703
    :cond_a3
    new-instance v6, Lorg/telegram/messenger/MessagesController$106;

    move-object/from16 v7, p0

    move/from16 v8, v59

    move-object/from16 v9, v83

    move-object/from16 v10, v89

    invoke-direct/range {v6 .. v16}, Lorg/telegram/messenger/MessagesController$106;-><init>(Lorg/telegram/messenger/MessagesController;ILjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/ArrayList;Ljava/util/ArrayList;Landroid/util/SparseArray;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 7012
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v4

    new-instance v17, Lorg/telegram/messenger/MessagesController$107;

    move-object/from16 v18, p0

    invoke-direct/range {v17 .. v23}, Lorg/telegram/messenger/MessagesController$107;-><init>(Lorg/telegram/messenger/MessagesController;Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;Ljava/util/ArrayList;Landroid/util/SparseArray;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 7102
    invoke-virtual/range {v89 .. v89}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a4

    .line 7103
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v89

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->putWebPages(Ljava/util/HashMap;)V

    .line 7105
    :cond_a4
    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_a5

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_a5

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a7

    .line 7106
    :cond_a5
    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-eqz v4, :cond_a6

    .line 7107
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1, v6}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithReadMessages(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)V

    .line 7109
    :cond_a6
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v4, v0, v1, v2, v6}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsRead(Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;Z)V

    .line 7111
    :cond_a7
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a8

    .line 7112
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->markMessagesContentAsRead(Ljava/util/ArrayList;)V

    .line 7114
    :cond_a8
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-eqz v4, :cond_a9

    .line 7115
    const/16 v30, 0x0

    .restart local v30    # "a":I
    :goto_22
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_a9

    .line 7116
    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v60

    .line 7117
    .local v60, "key":I
    move-object/from16 v0, v23

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/util/ArrayList;

    .line 7118
    .restart local v35    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v60

    invoke-virtual {v4, v0, v6, v1}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeleted(Ljava/util/ArrayList;ZI)V

    .line 7119
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v60

    invoke-virtual {v4, v0, v6, v1}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithDeletedMessages(Ljava/util/ArrayList;ZI)V

    .line 7115
    add-int/lit8 v30, v30, 0x1

    goto :goto_22

    .line 7122
    .end local v30    # "a":I
    .end local v35    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v60    # "key":I
    :cond_a9
    invoke-virtual/range {v76 .. v76}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_aa

    .line 7123
    const/16 v30, 0x0

    .restart local v30    # "a":I
    :goto_23
    invoke-virtual/range {v76 .. v76}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_aa

    .line 7124
    move-object/from16 v0, v76

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;

    .line 7125
    .local v80, "update":Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v24

    move-object/from16 v0, v80

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;->chat_id:I

    move/from16 v25, v0

    move-object/from16 v0, v80

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;->max_date:I

    move/from16 v26, v0

    move-object/from16 v0, v80

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;->date:I

    move/from16 v27, v0

    const/16 v28, 0x1

    const/16 v29, 0x0

    invoke-virtual/range {v24 .. v29}, Lorg/telegram/messenger/MessagesStorage;->createTaskForSecretChat(IIIILjava/util/ArrayList;)V

    .line 7123
    add-int/lit8 v30, v30, 0x1

    goto :goto_23

    .line 7129
    .end local v30    # "a":I
    .end local v80    # "update":Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;
    :cond_aa
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V
    .locals 52
    .param p1, "updates"    # Lorg/telegram/tgnet/TLRPC$Updates;
    .param p2, "fromQueue"    # Z

    .prologue
    .line 5472
    const/16 v31, 0x0

    .line 5473
    .local v31, "needGetChannelsDiff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v32, 0x0

    .line 5474
    .local v32, "needGetDiff":Z
    const/16 v33, 0x0

    .line 5475
    .local v33, "needReceivedQueue":Z
    const/16 v44, 0x0

    .line 5476
    .local v44, "updateStatus":Z
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateShort;

    if-eqz v4, :cond_1

    .line 5477
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 5478
    .local v11, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Update;>;"
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->update:Lorg/telegram/tgnet/TLRPC$Update;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5479
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4, v6, v7}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    .line 5906
    .end local v11    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Update;>;"
    :cond_0
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/SecretChatHelper;->processPendingEncMessages()V

    .line 5907
    if-nez p2, :cond_64

    .line 5908
    new-instance v25, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5909
    .local v25, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_1
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_63

    .line 5910
    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    .line 5911
    .local v24, "key":Ljava/lang/Integer;
    if-eqz v31, :cond_62

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 5912
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V

    .line 5909
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 5480
    .end local v10    # "a":I
    .end local v24    # "key":Ljava/lang/Integer;
    .end local v25    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;

    if-nez v4, :cond_2

    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;

    if-eqz v4, :cond_2a

    .line 5481
    :cond_2
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;

    if-eqz v4, :cond_12

    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Updates;->from_id:I

    move/from16 v50, v0

    .line 5482
    .local v50, "user_id":I
    :goto_3
    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v47

    .line 5483
    .local v47, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/16 v48, 0x0

    .line 5484
    .local v48, "user2":Lorg/telegram/tgnet/TLRPC$User;
    const/16 v49, 0x0

    .line 5485
    .local v49, "user3":Lorg/telegram/tgnet/TLRPC$User;
    const/16 v16, 0x0

    .line 5487
    .local v16, "channel":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v47, :cond_3

    move-object/from16 v0, v47

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_5

    .line 5488
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move/from16 v0, v50

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(I)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v47

    .line 5489
    if-eqz v47, :cond_4

    move-object/from16 v0, v47

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_4

    .line 5490
    const/16 v47, 0x0

    .line 5492
    :cond_4
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 5495
    :cond_5
    const/16 v30, 0x0

    .line 5496
    .local v30, "needFwdUser":Z
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    if-eqz v4, :cond_9

    .line 5497
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    if-eqz v4, :cond_7

    .line 5498
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v48

    .line 5499
    if-nez v48, :cond_6

    .line 5500
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(I)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v48

    .line 5501
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 5503
    :cond_6
    const/16 v30, 0x1

    .line 5505
    :cond_7
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    if-eqz v4, :cond_9

    .line 5506
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v16

    .line 5507
    if-nez v16, :cond_8

    .line 5508
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(I)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v16

    .line 5509
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 5511
    :cond_8
    const/16 v30, 0x1

    .line 5515
    :cond_9
    const/16 v29, 0x0

    .line 5516
    .local v29, "needBotUser":Z
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->via_bot_id:I

    if-eqz v4, :cond_b

    .line 5517
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->via_bot_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v49

    .line 5518
    if-nez v49, :cond_a

    .line 5519
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->via_bot_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(I)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v49

    .line 5520
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 5522
    :cond_a
    const/16 v29, 0x1

    .line 5526
    :cond_b
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;

    if-eqz v4, :cond_14

    .line 5527
    if-eqz v47, :cond_d

    if-eqz v30, :cond_c

    if-nez v48, :cond_c

    if-eqz v16, :cond_d

    :cond_c
    if-eqz v29, :cond_13

    if-nez v49, :cond_13

    :cond_d
    const/16 v28, 0x1

    .line 5536
    .local v28, "missingData":Z
    :goto_4
    if-nez v28, :cond_10

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    .line 5537
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_5
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_10

    .line 5538
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 5539
    .local v20, "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    move-object/from16 v0, v20

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    if-eqz v4, :cond_1a

    .line 5540
    check-cast v20, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    .end local v20    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    move-object/from16 v0, v20

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;->user_id:I

    move/from16 v41, v0

    .line 5541
    .local v41, "uid":I
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v21

    .line 5542
    .local v21, "entityUser":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v21, :cond_e

    move-object/from16 v0, v21

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_1a

    .line 5543
    :cond_e
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move/from16 v0, v41

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(I)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v21

    .line 5544
    if-eqz v21, :cond_f

    move-object/from16 v0, v21

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_f

    .line 5545
    const/16 v21, 0x0

    .line 5547
    :cond_f
    if-nez v21, :cond_19

    .line 5548
    const/16 v28, 0x1

    .line 5556
    .end local v10    # "a":I
    .end local v21    # "entityUser":Lorg/telegram/tgnet/TLRPC$User;
    .end local v41    # "uid":I
    :cond_10
    if-eqz v47, :cond_11

    move-object/from16 v0, v47

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v4, :cond_11

    move-object/from16 v0, v47

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-gtz v4, :cond_11

    .line 5557
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v47

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5558
    const/16 v44, 0x1

    .line 5561
    :cond_11
    if-eqz v28, :cond_1b

    .line 5562
    const/16 v32, 0x1

    goto/16 :goto_0

    .line 5481
    .end local v16    # "channel":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v28    # "missingData":Z
    .end local v29    # "needBotUser":Z
    .end local v30    # "needFwdUser":Z
    .end local v47    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v48    # "user2":Lorg/telegram/tgnet/TLRPC$User;
    .end local v49    # "user3":Lorg/telegram/tgnet/TLRPC$User;
    .end local v50    # "user_id":I
    :cond_12
    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Updates;->user_id:I

    move/from16 v50, v0

    goto/16 :goto_3

    .line 5527
    .restart local v16    # "channel":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v29    # "needBotUser":Z
    .restart local v30    # "needFwdUser":Z
    .restart local v47    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v48    # "user2":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v49    # "user3":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v50    # "user_id":I
    :cond_13
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 5529
    :cond_14
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v19

    .line 5530
    .local v19, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-nez v19, :cond_15

    .line 5531
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(I)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v19

    .line 5532
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 5534
    :cond_15
    if-eqz v19, :cond_17

    if-eqz v47, :cond_17

    if-eqz v30, :cond_16

    if-nez v48, :cond_16

    if-eqz v16, :cond_17

    :cond_16
    if-eqz v29, :cond_18

    if-nez v49, :cond_18

    :cond_17
    const/16 v28, 0x1

    .restart local v28    # "missingData":Z
    :goto_6
    goto/16 :goto_4

    .end local v28    # "missingData":Z
    :cond_18
    const/16 v28, 0x0

    goto :goto_6

    .line 5551
    .end local v19    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v10    # "a":I
    .restart local v21    # "entityUser":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v28    # "missingData":Z
    .restart local v41    # "uid":I
    :cond_19
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 5537
    .end local v21    # "entityUser":Lorg/telegram/tgnet/TLRPC$User;
    .end local v41    # "uid":I
    :cond_1a
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5

    .line 5564
    .end local v10    # "a":I
    :cond_1b
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts_count:I

    add-int/2addr v4, v6

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    if-ne v4, v6, :cond_26

    .line 5565
    new-instance v26, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v26 .. v26}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 5566
    .local v26, "message":Lorg/telegram/tgnet/TLRPC$TL_message;
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->id:I

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    .line 5567
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;

    if-eqz v4, :cond_20

    .line 5568
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->out:Z

    if-eqz v4, :cond_1f

    .line 5569
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    .line 5573
    :goto_7
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    move-object/from16 v0, v26

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 5574
    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move/from16 v0, v50

    iput v0, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 5575
    move/from16 v0, v50

    int-to-long v6, v0

    move-object/from16 v0, v26

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    .line 5583
    :goto_8
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    move-object/from16 v0, v26

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    .line 5584
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->silent:Z

    move-object/from16 v0, v26

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->silent:Z

    .line 5585
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->out:Z

    move-object/from16 v0, v26

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->out:Z

    .line 5586
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->mentioned:Z

    move-object/from16 v0, v26

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->mentioned:Z

    .line 5587
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->media_unread:Z

    move-object/from16 v0, v26

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media_unread:Z

    .line 5588
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->entities:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->entities:Ljava/util/ArrayList;

    .line 5589
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->message:Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    .line 5590
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->date:I

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->date:I

    .line 5591
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->via_bot_id:I

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->via_bot_id:I

    .line 5592
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->flags:I

    or-int/lit16 v4, v4, 0x100

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 5593
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->reply_to_msg_id:I

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->reply_to_msg_id:I

    .line 5594
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    move-object/from16 v0, v26

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 5596
    move-object/from16 v0, v26

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->out:Z

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v38, v0

    .line 5597
    .local v38, "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :goto_9
    move-object/from16 v0, v26

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Ljava/lang/Integer;

    .line 5598
    .local v51, "value":Ljava/lang/Integer;
    if-nez v51, :cond_1c

    .line 5599
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v26

    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->out:Z

    move-object/from16 v0, v26

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    invoke-virtual {v4, v6, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    .line 5600
    move-object/from16 v0, v26

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5602
    :cond_1c
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v26

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    if-ge v4, v6, :cond_22

    const/4 v4, 0x1

    :goto_a
    move-object/from16 v0, v26

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->unread:Z

    .line 5604
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    sput v4, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    .line 5605
    new-instance v34, Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v4, v6}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 5606
    .local v34, "obj":Lorg/telegram/messenger/MessageObject;
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 5607
    .local v35, "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5608
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5609
    .local v5, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5610
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;

    if-eqz v4, :cond_24

    .line 5611
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->out:Z

    if-nez v4, :cond_23

    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->user_id:I

    int-to-long v6, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v6, v7, v1}, Lorg/telegram/messenger/MessagesController;->updatePrintingUsersWithNewMessages(JLjava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_23

    const/16 v36, 0x1

    .line 5612
    .local v36, "printUpdate":Z
    :goto_b
    if-eqz v36, :cond_1d

    .line 5613
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MessagesController;->updatePrintingStrings()V

    .line 5615
    :cond_1d
    new-instance v4, Lorg/telegram/messenger/MessagesController$96;

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v50

    move-object/from16 v3, v35

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController$96;-><init>(Lorg/telegram/messenger/MessagesController;ZILjava/util/ArrayList;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 5642
    :goto_c
    invoke-virtual/range {v34 .. v34}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 5643
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v4

    new-instance v6, Lorg/telegram/messenger/MessagesController$98;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v6, v0, v1}, Lorg/telegram/messenger/MessagesController$98;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 5655
    :cond_1e
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    goto/16 :goto_0

    .line 5571
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v34    # "obj":Lorg/telegram/messenger/MessageObject;
    .end local v35    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v36    # "printUpdate":Z
    .end local v38    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v51    # "value":Ljava/lang/Integer;
    :cond_1f
    move/from16 v0, v50

    move-object/from16 v1, v26

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    goto/16 :goto_7

    .line 5577
    :cond_20
    move/from16 v0, v50

    move-object/from16 v1, v26

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    .line 5578
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    move-object/from16 v0, v26

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 5579
    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    .line 5580
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    neg-int v4, v4

    int-to-long v6, v4

    move-object/from16 v0, v26

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    goto/16 :goto_8

    .line 5596
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v38, v0

    goto/16 :goto_9

    .line 5602
    .restart local v38    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v51    # "value":Ljava/lang/Integer;
    :cond_22
    const/4 v4, 0x0

    goto/16 :goto_a

    .line 5611
    .restart local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .restart local v34    # "obj":Lorg/telegram/messenger/MessageObject;
    .restart local v35    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_23
    const/16 v36, 0x0

    goto :goto_b

    .line 5626
    :cond_24
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    neg-int v4, v4

    int-to-long v6, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v6, v7, v1}, Lorg/telegram/messenger/MessagesController;->updatePrintingUsersWithNewMessages(JLjava/util/ArrayList;)Z

    move-result v36

    .line 5627
    .restart local v36    # "printUpdate":Z
    if-eqz v36, :cond_25

    .line 5628
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MessagesController;->updatePrintingStrings()V

    .line 5630
    :cond_25
    new-instance v4, Lorg/telegram/messenger/MessagesController$97;

    move-object/from16 v0, p0

    move/from16 v1, v36

    move-object/from16 v2, p1

    move-object/from16 v3, v35

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController$97;-><init>(Lorg/telegram/messenger/MessagesController;ZLorg/telegram/tgnet/TLRPC$Updates;Ljava/util/ArrayList;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_c

    .line 5656
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v26    # "message":Lorg/telegram/tgnet/TLRPC$TL_message;
    .end local v34    # "obj":Lorg/telegram/messenger/MessageObject;
    .end local v35    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v36    # "printUpdate":Z
    .end local v38    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v51    # "value":Ljava/lang/Integer;
    :cond_26
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    if-eq v4, v6, :cond_0

    .line 5657
    const-string/jumbo v4, "tmessages"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "need get diff short message, pts: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts_count:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5658
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    if-nez v4, :cond_27

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_27

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x5dc

    cmp-long v4, v6, v8

    if-gtz v4, :cond_29

    .line 5659
    :cond_27
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_28

    .line 5660
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    .line 5662
    :cond_28
    const-string/jumbo v4, "tmessages"

    const-string/jumbo v6, "add to queue"

    invoke-static {v4, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5663
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->updatesQueuePts:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 5665
    :cond_29
    const/16 v32, 0x1

    goto/16 :goto_0

    .line 5669
    .end local v16    # "channel":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v28    # "missingData":Z
    .end local v29    # "needBotUser":Z
    .end local v30    # "needFwdUser":Z
    .end local v47    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v48    # "user2":Lorg/telegram/tgnet/TLRPC$User;
    .end local v49    # "user3":Lorg/telegram/tgnet/TLRPC$User;
    .end local v50    # "user_id":I
    :cond_2a
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updatesCombined;

    if-nez v4, :cond_2b

    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;

    if-eqz v4, :cond_5e

    .line 5670
    :cond_2b
    const/16 v27, 0x0

    .line 5671
    .local v27, "minChannels":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_d
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_32

    .line 5672
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 5673
    .restart local v19    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    move-object/from16 v0, v19

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_channel;

    if-eqz v4, :cond_31

    .line 5674
    move-object/from16 v0, v19

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v4, :cond_31

    .line 5675
    move-object/from16 v0, v19

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v22

    .line 5676
    .local v22, "existChat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v22, :cond_2c

    move-object/from16 v0, v22

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v4, :cond_2e

    .line 5677
    :cond_2c
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(I)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v15

    .line 5678
    .local v15, "cacheChat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-nez v22, :cond_2d

    .line 5679
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v4}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 5681
    :cond_2d
    move-object/from16 v22, v15

    .line 5683
    .end local v15    # "cacheChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_2e
    if-eqz v22, :cond_2f

    move-object/from16 v0, v22

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v4, :cond_31

    .line 5684
    :cond_2f
    if-nez v27, :cond_30

    .line 5685
    new-instance v27, Ljava/util/HashMap;

    .end local v27    # "minChannels":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    .line 5687
    .restart local v27    # "minChannels":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    :cond_30
    move-object/from16 v0, v19

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5671
    .end local v22    # "existChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_31
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    .line 5692
    .end local v19    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_32
    if-eqz v27, :cond_33

    .line 5693
    const/4 v10, 0x0

    :goto_e
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_33

    .line 5694
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lorg/telegram/tgnet/TLRPC$Update;

    .line 5695
    .local v42, "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, v42

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    if-eqz v4, :cond_34

    .line 5696
    check-cast v42, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    .end local v42    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, v42

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v17, v0

    .line 5697
    .local v17, "channelId":I
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 5698
    const-string/jumbo v4, "tmessages"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "need get diff because of min channel "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5699
    const/16 v32, 0x1

    .line 5705
    .end local v17    # "channelId":I
    :cond_33
    if-nez v32, :cond_0

    .line 5706
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v4, v6, v7, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 5707
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController;->updatesComparator:Ljava/util/Comparator;

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5708
    const/4 v10, 0x0

    :goto_f
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_52

    .line 5709
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lorg/telegram/tgnet/TLRPC$Update;

    .line 5710
    .restart local v42    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v4

    if-nez v4, :cond_3c

    .line 5711
    new-instance v45, Lorg/telegram/tgnet/TLRPC$TL_updates;

    invoke-direct/range {v45 .. v45}, Lorg/telegram/tgnet/TLRPC$TL_updates;-><init>()V

    .line 5712
    .local v45, "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    move-object/from16 v0, v45

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5713
    move-object/from16 v0, v42

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    move-object/from16 v0, v45

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    .line 5714
    move-object/from16 v0, v42

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts_count:I

    move-object/from16 v0, v45

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    .line 5715
    add-int/lit8 v13, v10, 0x1

    .local v13, "b":I
    :goto_10
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v13, v4, :cond_35

    .line 5716
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lorg/telegram/tgnet/TLRPC$Update;

    .line 5717
    .local v43, "update2":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v4

    if-nez v4, :cond_35

    move-object/from16 v0, v45

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    move-object/from16 v0, v43

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts_count:I

    add-int/2addr v4, v6

    move-object/from16 v0, v43

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    if-ne v4, v6, :cond_35

    .line 5718
    move-object/from16 v0, v45

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5719
    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    move-object/from16 v0, v45

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    .line 5720
    move-object/from16 v0, v45

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    move-object/from16 v0, v43

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts_count:I

    add-int/2addr v4, v6

    move-object/from16 v0, v45

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    .line 5721
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5722
    add-int/lit8 v13, v13, -0x1

    .line 5715
    add-int/lit8 v13, v13, 0x1

    goto :goto_10

    .line 5693
    .end local v13    # "b":I
    .end local v42    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    .end local v43    # "update2":Lorg/telegram/tgnet/TLRPC$Update;
    .end local v45    # "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    :cond_34
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_e

    .line 5727
    .restart local v13    # "b":I
    .restart local v42    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    .restart local v45    # "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    :cond_35
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    move-object/from16 v0, v45

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    add-int/2addr v4, v6

    move-object/from16 v0, v45

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    if-ne v4, v6, :cond_38

    .line 5728
    move-object/from16 v0, v45

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7, v8}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    move-result v4

    if-nez v4, :cond_37

    .line 5729
    const-string/jumbo v4, "tmessages"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "need get diff inner TL_updates, seq: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5730
    const/16 v32, 0x1

    .line 5857
    :cond_36
    :goto_11
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5858
    add-int/lit8 v10, v10, -0x1

    .line 5708
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_f

    .line 5732
    :cond_37
    move-object/from16 v0, v45

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    sput v4, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    goto :goto_11

    .line 5734
    :cond_38
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    move-object/from16 v0, v45

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    if-eq v4, v6, :cond_36

    .line 5735
    const-string/jumbo v4, "tmessages"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " need get diff, pts: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v45

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v45

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5736
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    if-nez v4, :cond_39

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_39

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_3b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x5dc

    cmp-long v4, v6, v8

    if-gtz v4, :cond_3b

    .line 5737
    :cond_39
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_3a

    .line 5738
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    .line 5740
    :cond_3a
    const-string/jumbo v4, "tmessages"

    const-string/jumbo v6, "add to queue"

    invoke-static {v4, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5741
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->updatesQueuePts:Ljava/util/ArrayList;

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 5743
    :cond_3b
    const/16 v32, 0x1

    goto/16 :goto_11

    .line 5746
    .end local v13    # "b":I
    .end local v45    # "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    :cond_3c
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_43

    .line 5747
    new-instance v45, Lorg/telegram/tgnet/TLRPC$TL_updates;

    invoke-direct/range {v45 .. v45}, Lorg/telegram/tgnet/TLRPC$TL_updates;-><init>()V

    .line 5748
    .restart local v45    # "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    move-object/from16 v0, v45

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5749
    move-object/from16 v0, v42

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->qts:I

    move-object/from16 v0, v45

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    .line 5750
    add-int/lit8 v13, v10, 0x1

    .restart local v13    # "b":I
    :goto_12
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v13, v4, :cond_3d

    .line 5751
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lorg/telegram/tgnet/TLRPC$Update;

    .line 5752
    .restart local v43    # "update2":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3d

    move-object/from16 v0, v45

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v43

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->qts:I

    if-ne v4, v6, :cond_3d

    .line 5753
    move-object/from16 v0, v45

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5754
    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->qts:I

    move-object/from16 v0, v45

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    .line 5755
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5756
    add-int/lit8 v13, v13, -0x1

    .line 5750
    add-int/lit8 v13, v13, 0x1

    goto :goto_12

    .line 5761
    .end local v43    # "update2":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_3d
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    if-eqz v4, :cond_3e

    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    move-object/from16 v0, v45

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v4, v6

    move-object/from16 v0, v45

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    if-ne v4, v6, :cond_3f

    .line 5762
    :cond_3e
    move-object/from16 v0, v45

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7, v8}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    .line 5763
    move-object/from16 v0, v45

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    sput v4, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    .line 5764
    const/16 v33, 0x1

    goto/16 :goto_11

    .line 5765
    :cond_3f
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    move-object/from16 v0, v45

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    if-eq v4, v6, :cond_36

    .line 5766
    const-string/jumbo v4, "tmessages"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " need get diff, qts: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v45

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5767
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    if-nez v4, :cond_40

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_40

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_42

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x5dc

    cmp-long v4, v6, v8

    if-gtz v4, :cond_42

    .line 5768
    :cond_40
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_41

    .line 5769
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    .line 5771
    :cond_41
    const-string/jumbo v4, "tmessages"

    const-string/jumbo v6, "add to queue"

    invoke-static {v4, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5772
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->updatesQueueQts:Ljava/util/ArrayList;

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 5774
    :cond_42
    const/16 v32, 0x1

    goto/16 :goto_11

    .line 5777
    .end local v13    # "b":I
    .end local v45    # "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    :cond_43
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_52

    .line 5778
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUpdateChannelId(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v17

    .line 5779
    .restart local v17    # "channelId":I
    const/16 v40, 0x0

    .line 5780
    .local v40, "skipUpdate":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .line 5781
    .local v18, "channelPts":Ljava/lang/Integer;
    if-nez v18, :cond_44

    .line 5782
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->getChannelPtsSync(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 5783
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_46

    .line 5784
    const/4 v14, 0x0

    .local v14, "c":I
    :goto_13
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_44

    .line 5785
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 5786
    .restart local v19    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    move-object/from16 v0, v19

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v0, v17

    if-ne v4, v0, :cond_45

    .line 5787
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6, v7}, Lorg/telegram/messenger/MessagesController;->loadUnknownChannel(Lorg/telegram/tgnet/TLRPC$Chat;J)V

    .line 5788
    const/16 v40, 0x1

    .line 5796
    .end local v14    # "c":I
    .end local v19    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_44
    :goto_14
    new-instance v45, Lorg/telegram/tgnet/TLRPC$TL_updates;

    invoke-direct/range {v45 .. v45}, Lorg/telegram/tgnet/TLRPC$TL_updates;-><init>()V

    .line 5797
    .restart local v45    # "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    move-object/from16 v0, v45

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5798
    move-object/from16 v0, v42

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    move-object/from16 v0, v45

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    .line 5799
    move-object/from16 v0, v42

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts_count:I

    move-object/from16 v0, v45

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    .line 5800
    add-int/lit8 v13, v10, 0x1

    .restart local v13    # "b":I
    :goto_15
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v13, v4, :cond_47

    .line 5801
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lorg/telegram/tgnet/TLRPC$Update;

    .line 5802
    .restart local v43    # "update2":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_47

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUpdateChannelId(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v4

    move/from16 v0, v17

    if-ne v0, v4, :cond_47

    move-object/from16 v0, v45

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    move-object/from16 v0, v43

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts_count:I

    add-int/2addr v4, v6

    move-object/from16 v0, v43

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    if-ne v4, v6, :cond_47

    .line 5803
    move-object/from16 v0, v45

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5804
    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    move-object/from16 v0, v45

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    .line 5805
    move-object/from16 v0, v45

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    move-object/from16 v0, v43

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts_count:I

    add-int/2addr v4, v6

    move-object/from16 v0, v45

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    .line 5806
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5807
    add-int/lit8 v13, v13, -0x1

    .line 5800
    add-int/lit8 v13, v13, 0x1

    goto :goto_15

    .line 5784
    .end local v13    # "b":I
    .end local v43    # "update2":Lorg/telegram/tgnet/TLRPC$Update;
    .end local v45    # "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    .restart local v14    # "c":I
    .restart local v19    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_45
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_13

    .line 5793
    .end local v14    # "c":I
    .end local v19    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_46
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_14

    .line 5812
    .restart local v13    # "b":I
    .restart local v45    # "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    :cond_47
    if-nez v40, :cond_51

    .line 5813
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v45

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    add-int/2addr v4, v6

    move-object/from16 v0, v45

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    if-ne v4, v6, :cond_4a

    .line 5814
    move-object/from16 v0, v45

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7, v8}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    move-result v4

    if-nez v4, :cond_49

    .line 5815
    const-string/jumbo v4, "tmessages"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "need get channel diff inner TL_updates, channel_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5816
    if-nez v31, :cond_48

    .line 5817
    new-instance v31, Ljava/util/ArrayList;

    .end local v31    # "needGetChannelsDiff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .restart local v31    # "needGetChannelsDiff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto/16 :goto_11

    .line 5818
    :cond_48
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    .line 5819
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 5822
    :cond_49
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v45

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5823
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    move/from16 v0, v17

    invoke-virtual {v4, v0, v6}, Lorg/telegram/messenger/MessagesStorage;->saveChannelPts(II)V

    goto/16 :goto_11

    .line 5825
    :cond_4a
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v45

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    if-eq v4, v6, :cond_36

    .line 5826
    const-string/jumbo v4, "tmessages"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " need get channel diff, pts: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v45

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v45

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " channelId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5827
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/Long;

    .line 5828
    .local v46, "updatesStartWaitTime":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->gettingDifferenceChannels:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Boolean;

    .line 5829
    .local v23, "gettingDifferenceChannel":Ljava/lang/Boolean;
    if-nez v23, :cond_4b

    .line 5830
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    .line 5832
    :cond_4b
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4c

    if-eqz v46, :cond_4c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x5dc

    cmp-long v4, v6, v8

    if-gtz v4, :cond_4f

    .line 5833
    :cond_4c
    if-nez v46, :cond_4d

    .line 5834
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5836
    :cond_4d
    const-string/jumbo v4, "tmessages"

    const-string/jumbo v6, "add to queue"

    invoke-static {v4, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5837
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 5838
    .local v12, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    if-nez v12, :cond_4e

    .line 5839
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 5840
    .restart local v12    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5842
    :cond_4e
    move-object/from16 v0, v45

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 5844
    .end local v12    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    :cond_4f
    if-nez v31, :cond_50

    .line 5845
    new-instance v31, Ljava/util/ArrayList;

    .end local v31    # "needGetChannelsDiff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .restart local v31    # "needGetChannelsDiff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto/16 :goto_11

    .line 5846
    :cond_50
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    .line 5847
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 5852
    .end local v23    # "gettingDifferenceChannel":Ljava/lang/Boolean;
    .end local v46    # "updatesStartWaitTime":Ljava/lang/Long;
    :cond_51
    const-string/jumbo v4, "tmessages"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "need load unknown channel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 5862
    .end local v13    # "b":I
    .end local v17    # "channelId":I
    .end local v18    # "channelPts":Ljava/lang/Integer;
    .end local v40    # "skipUpdate":Z
    .end local v42    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    .end local v45    # "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    :cond_52
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updatesCombined;

    if-eqz v4, :cond_56

    .line 5863
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq_start:I

    if-eq v4, v6, :cond_53

    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq_start:I

    if-ne v4, v6, :cond_55

    :cond_53
    const/16 v37, 0x1

    .line 5867
    .local v37, "processUpdate":Z
    :goto_16
    if-eqz v37, :cond_59

    .line 5868
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7, v8}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    .line 5869
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->date:I

    if-eqz v4, :cond_54

    .line 5870
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->date:I

    sput v4, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    .line 5872
    :cond_54
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    if-eqz v4, :cond_0

    .line 5873
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    sput v4, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    goto/16 :goto_0

    .line 5863
    .end local v37    # "processUpdate":Z
    :cond_55
    const/16 v37, 0x0

    goto :goto_16

    .line 5865
    :cond_56
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    if-eq v4, v6, :cond_57

    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    if-eqz v4, :cond_57

    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    sget v6, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    if-ne v4, v6, :cond_58

    :cond_57
    const/16 v37, 0x1

    .restart local v37    # "processUpdate":Z
    :goto_17
    goto :goto_16

    .end local v37    # "processUpdate":Z
    :cond_58
    const/16 v37, 0x0

    goto :goto_17

    .line 5876
    .restart local v37    # "processUpdate":Z
    :cond_59
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updatesCombined;

    if-eqz v4, :cond_5c

    .line 5877
    const-string/jumbo v4, "tmessages"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "need get diff TL_updatesCombined, seq: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq_start:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5882
    :goto_18
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    if-nez v4, :cond_5a

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_5a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x5dc

    cmp-long v4, v6, v8

    if-gtz v4, :cond_5d

    .line 5883
    :cond_5a
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_5b

    .line 5884
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    .line 5886
    :cond_5b
    const-string/jumbo v4, "tmessages"

    const-string/jumbo v6, "add TL_updates/Combined to queue"

    invoke-static {v4, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5887
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->updatesQueueSeq:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 5879
    :cond_5c
    const-string/jumbo v4, "tmessages"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "need get diff TL_updates, seq: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 5889
    :cond_5d
    const/16 v32, 0x1

    goto/16 :goto_0

    .line 5893
    .end local v10    # "a":I
    .end local v27    # "minChannels":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    .end local v37    # "processUpdate":Z
    :cond_5e
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updatesTooLong;

    if-eqz v4, :cond_5f

    .line 5894
    const-string/jumbo v4, "tmessages"

    const-string/jumbo v6, "need get diff TL_updatesTooLong"

    invoke-static {v4, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5895
    const/16 v32, 0x1

    goto/16 :goto_0

    .line 5896
    :cond_5f
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/messenger/MessagesController$UserActionUpdatesSeq;

    if-eqz v4, :cond_60

    .line 5897
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    sput v4, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    goto/16 :goto_0

    .line 5898
    :cond_60
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;

    if-eqz v4, :cond_0

    .line 5899
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    if-eqz v4, :cond_61

    .line 5900
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p1

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5901
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    move-object/from16 v0, p1

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->saveChannelPts(II)V

    goto/16 :goto_0

    .line 5903
    :cond_61
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    sput v4, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    goto/16 :goto_0

    .line 5914
    .restart local v10    # "a":I
    .restart local v24    # "key":Ljava/lang/Integer;
    .restart local v25    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_62
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lorg/telegram/messenger/MessagesController;->processChannelsUpdatesQueue(II)V

    goto/16 :goto_2

    .line 5917
    .end local v24    # "key":Ljava/lang/Integer;
    :cond_63
    if-eqz v32, :cond_67

    .line 5918
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessagesController;->getDifference()V

    .line 5925
    .end local v10    # "a":I
    .end local v25    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_64
    if-eqz v33, :cond_65

    .line 5926
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_messages_receivedQueue;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_messages_receivedQueue;-><init>()V

    .line 5927
    .local v39, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_receivedQueue;
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    move-object/from16 v0, v39

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_receivedQueue;->max_qts:I

    .line 5928
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v6, Lorg/telegram/messenger/MessagesController$99;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lorg/telegram/messenger/MessagesController$99;-><init>(Lorg/telegram/messenger/MessagesController;)V

    move-object/from16 v0, v39

    invoke-virtual {v4, v0, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 5935
    .end local v39    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_receivedQueue;
    :cond_65
    if-eqz v44, :cond_66

    .line 5936
    new-instance v4, Lorg/telegram/messenger/MessagesController$100;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/messenger/MessagesController$100;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 5943
    :cond_66
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    sget v7, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    sget v8, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    sget v9, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    invoke-virtual {v4, v6, v7, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->saveDiffParams(IIII)V

    .line 5944
    return-void

    .line 5920
    .restart local v10    # "a":I
    .restart local v25    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_67
    const/4 v10, 0x0

    :goto_19
    const/4 v4, 0x3

    if-ge v10, v4, :cond_64

    .line 5921
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4}, Lorg/telegram/messenger/MessagesController;->processUpdatesQueue(II)V

    .line 5920
    add-int/lit8 v10, v10, 0x1

    goto :goto_19
.end method

.method public putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V
    .locals 4
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;
    .param p2, "fromCache"    # Z

    .prologue
    const/4 v3, 0x0

    .line 769
    if-nez p1, :cond_1

    .line 820
    :cond_0
    :goto_0
    return-void

    .line 772
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 774
    .local v0, "oldChat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v1, :cond_4

    .line 775
    if-eqz v0, :cond_3

    .line 776
    if-nez p2, :cond_0

    .line 777
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 778
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 779
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    .line 780
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    .line 781
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    .line 782
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    .line 783
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 784
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    .line 785
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    goto :goto_0

    .line 787
    :cond_2
    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    .line 788
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v1, v1, -0x41

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    goto :goto_0

    .line 792
    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 795
    :cond_4
    if-nez p2, :cond_6

    .line 796
    if-eqz v0, :cond_5

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->version:I

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->version:I

    if-eq v1, v2, :cond_5

    .line 797
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->loadedFullChats:Ljava/util/ArrayList;

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 799
    :cond_5
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 800
    :cond_6
    if-nez v0, :cond_7

    .line 801
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 802
    :cond_7
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v1, :cond_0

    .line 803
    const/4 v1, 0x0

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    .line 804
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 805
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 806
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    .line 807
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    .line 808
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    .line 809
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    .line 810
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 811
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    .line 812
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 817
    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 814
    :cond_8
    iput-object v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    .line 815
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    goto :goto_1
.end method

.method public putChats(Ljava/util/ArrayList;Z)V
    .locals 4
    .param p2, "fromCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 823
    .local p1, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 831
    :cond_0
    return-void

    .line 826
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 827
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 828
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 829
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-virtual {p0, v1, p2}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 827
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V
    .locals 2
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p2, "fromCache"    # Z

    .prologue
    .line 834
    if-nez p1, :cond_0

    .line 842
    :goto_0
    return-void

    .line 837
    :cond_0
    if-eqz p2, :cond_1

    .line 838
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->encryptedChats:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 840
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->encryptedChats:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public putEncryptedChats(Ljava/util/ArrayList;Z)V
    .locals 4
    .param p2, "fromCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 845
    .local p1, "encryptedChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 853
    :cond_0
    return-void

    .line 848
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 849
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 850
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 851
    .local v2, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-virtual {p0, v2, p2}, Lorg/telegram/messenger/MessagesController;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    .line 849
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z
    .locals 6
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "fromCache"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 680
    if-nez p1, :cond_1

    .line 743
    :cond_0
    :goto_0
    return v2

    .line 683
    :cond_1
    if-eqz p2, :cond_4

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    div-int/lit16 v3, v3, 0x3e8

    const/16 v4, 0x14d

    if-eq v3, v4, :cond_4

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    const v4, 0xbdb28

    if-eq v3, v4, :cond_4

    move p2, v1

    .line 684
    :goto_1
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 685
    .local v0, "oldUser":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v0, :cond_2

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 686
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController;->usersByUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    :cond_2
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 689
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController;->usersByUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    :cond_3
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v3, :cond_8

    .line 692
    if-eqz v0, :cond_7

    .line 693
    if-nez p2, :cond_0

    .line 694
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 695
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 696
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 701
    :goto_2
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v1, :cond_6

    .line 702
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 703
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    goto :goto_0

    .end local v0    # "oldUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_4
    move p2, v2

    .line 683
    goto :goto_1

    .line 698
    .restart local v0    # "oldUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_5
    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 699
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    goto :goto_2

    .line 705
    :cond_6
    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 706
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    goto/16 :goto_0

    .line 710
    :cond_7
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 713
    :cond_8
    if-nez p2, :cond_a

    .line 714
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    iget v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    if-ne v3, v4, :cond_9

    .line 716
    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->setCurrentUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 717
    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 719
    :cond_9
    if-eqz v0, :cond_0

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-eq v3, v4, :cond_0

    move v2, v1

    .line 720
    goto/16 :goto_0

    .line 722
    :cond_a
    if-nez v0, :cond_b

    .line 723
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 724
    :cond_b
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v1, :cond_0

    .line 725
    iput-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    .line 726
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 727
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 728
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 733
    :goto_3
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v1, :cond_d

    .line 734
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 735
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 740
    :goto_4
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 730
    :cond_c
    iput-object v5, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 731
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    goto :goto_3

    .line 737
    :cond_d
    iput-object v5, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 738
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    goto :goto_4
.end method

.method public putUsers(Ljava/util/ArrayList;Z)V
    .locals 5
    .param p2, "fromCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 747
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 766
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    const/4 v2, 0x0

    .line 751
    .local v2, "updateStatus":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 752
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 753
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    .line 754
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {p0, v3, p2}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 755
    const/4 v2, 0x1

    .line 752
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 758
    .end local v3    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_3
    if-eqz v2, :cond_0

    .line 759
    new-instance v4, Lorg/telegram/messenger/MessagesController$8;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/MessagesController$8;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public reRunUpdateTimerProc()V
    .locals 2

    .prologue
    .line 2053
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J

    .line 2054
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/MessagesController;->statusSettingState:I

    .line 2055
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->updateTimerProc()V

    .line 2056
    return-void
.end method

.method public registerForPush(Ljava/lang/String;)V
    .locals 3
    .param p1, "regid"    # Ljava/lang/String;

    .prologue
    .line 4484
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->registeringForPush:Z

    if-nez v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v1

    if-nez v1, :cond_1

    .line 4511
    :cond_0
    :goto_0
    return-void

    .line 4487
    :cond_1
    sget-boolean v1, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    if-eqz v1, :cond_2

    sget-object v1, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4490
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->registeringForPush:Z

    .line 4491
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_registerDevice;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_registerDevice;-><init>()V

    .line 4492
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_account_registerDevice;
    const/4 v1, 0x2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_registerDevice;->token_type:I

    .line 4493
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_registerDevice;->token:Ljava/lang/String;

    .line 4494
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$83;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/MessagesController$83;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public reloadWebPages(JLjava/util/HashMap;)V
    .locals 9
    .param p1, "dialog_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 2509
    .local p3, "webpagesToReload":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2510
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2511
    .local v5, "url":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 2512
    .local v3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpages:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2513
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v0, :cond_0

    .line 2514
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2515
    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpages:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2517
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2518
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;-><init>()V

    .line 2519
    .local v4, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;
    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;->message:Ljava/lang/String;

    .line 2520
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v7, Lorg/telegram/messenger/MessagesController$50;

    invoke-direct {v7, p0, v5, p1, p2}, Lorg/telegram/messenger/MessagesController$50;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/lang/String;J)V

    invoke-virtual {v6, v4, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    .line 2559
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    .end local v3    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v4    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;
    .end local v5    # "url":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public reportSpam(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 7
    .param p1, "dialogId"    # J
    .param p3, "currentUser"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p4, "currentChat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 1234
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 1253
    :goto_0
    return-void

    .line 1237
    :cond_0
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "Notifications"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1238
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1239
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "spam3_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1240
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1241
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_reportSpam;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_reportSpam;-><init>()V

    .line 1242
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_reportSpam;
    if-eqz p4, :cond_2

    .line 1243
    iget v3, p4, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_reportSpam;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1247
    :cond_1
    :goto_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesController$14;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/MessagesController$14;-><init>(Lorg/telegram/messenger/MessagesController;)V

    const/4 v5, 0x2

    invoke-virtual {v3, v2, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0

    .line 1244
    :cond_2
    if-eqz p3, :cond_1

    .line 1245
    iget v3, p3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_reportSpam;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_1
.end method

.method public saveGif(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/MediaController$SearchImage;
    .locals 8
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 1978
    new-instance v2, Lorg/telegram/messenger/MediaController$SearchImage;

    invoke-direct {v2}, Lorg/telegram/messenger/MediaController$SearchImage;-><init>()V

    .line 1979
    .local v2, "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    const/4 v3, 0x2

    iput v3, v2, Lorg/telegram/messenger/MediaController$SearchImage;->type:I

    .line 1980
    iput-object p1, v2, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1981
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v3, v4

    iput v3, v2, Lorg/telegram/messenger/MediaController$SearchImage;->date:I

    .line 1982
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    .line 1984
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1985
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1986
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/MessagesStorage;->putWebRecent(Ljava/util/ArrayList;)V

    .line 1987
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;-><init>()V

    .line 1988
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 1989
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-object v4, v2, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 1990
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-object v4, v2, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 1991
    const/4 v3, 0x0

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->unsave:Z

    .line 1992
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesController$38;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/MessagesController$38;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v3, v1, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 1998
    return-object v2
.end method

.method public sendBotStart(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)V
    .locals 4
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "botHash"    # Ljava/lang/String;

    .prologue
    .line 4074
    if-nez p1, :cond_0

    .line 4091
    :goto_0
    return-void

    .line 4077
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;-><init>()V

    .line 4078
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 4079
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 4080
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->start_param:Ljava/lang/String;

    .line 4081
    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->random_id:J

    .line 4082
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$73;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$73;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public sendTyping(JII)V
    .locals 11
    .param p1, "dialog_id"    # J
    .param p3, "action"    # I
    .param p4, "classGuid"    # I

    .prologue
    .line 2370
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-nez v6, :cond_1

    .line 2461
    :cond_0
    :goto_0
    return-void

    .line 2373
    :cond_1
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->sendingTypings:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 2374
    .local v5, "typings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    if-eqz v5, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 2377
    :cond_2
    if-nez v5, :cond_3

    .line 2378
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "typings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2379
    .restart local v5    # "typings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->sendingTypings:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2381
    :cond_3
    long-to-int v2, p1

    .line 2382
    .local v2, "lower_part":I
    const/16 v6, 0x20

    shr-long v6, p1, v6

    long-to-int v1, v6

    .line 2383
    .local v1, "high_id":I
    if-eqz v2, :cond_b

    .line 2384
    const/4 v6, 0x1

    if-eq v1, v6, :cond_0

    .line 2388
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;-><init>()V

    .line 2389
    .local v3, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v6

    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2390
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v6, :cond_4

    .line 2391
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 2392
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v0, :cond_0

    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v6, :cond_0

    .line 2396
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_4
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v6, :cond_0

    .line 2399
    if-nez p3, :cond_6

    .line 2400
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;-><init>()V

    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    .line 2412
    :cond_5
    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2413
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v7, Lorg/telegram/messenger/MessagesController$47;

    invoke-direct {v7, p0, p3, p1, p2}, Lorg/telegram/messenger/MessagesController$47;-><init>(Lorg/telegram/messenger/MessagesController;IJ)V

    const/4 v8, 0x2

    invoke-virtual {v6, v3, v7, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v4

    .line 2427
    .local v4, "reqId":I
    if-eqz p4, :cond_0

    .line 2428
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    invoke-virtual {v6, v4, p4}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto/16 :goto_0

    .line 2401
    .end local v4    # "reqId":I
    :cond_6
    const/4 v6, 0x1

    if-ne p3, v6, :cond_7

    .line 2402
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordAudioAction;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordAudioAction;-><init>()V

    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    goto :goto_1

    .line 2403
    :cond_7
    const/4 v6, 0x2

    if-ne p3, v6, :cond_8

    .line 2404
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_sendMessageCancelAction;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageCancelAction;-><init>()V

    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    goto :goto_1

    .line 2405
    :cond_8
    const/4 v6, 0x3

    if-ne p3, v6, :cond_9

    .line 2406
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadDocumentAction;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadDocumentAction;-><init>()V

    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    goto :goto_1

    .line 2407
    :cond_9
    const/4 v6, 0x4

    if-ne p3, v6, :cond_a

    .line 2408
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadPhotoAction;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadPhotoAction;-><init>()V

    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    goto :goto_1

    .line 2409
    :cond_a
    const/4 v6, 0x5

    if-ne p3, v6, :cond_5

    .line 2410
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadVideoAction;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadVideoAction;-><init>()V

    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    goto :goto_1

    .line 2431
    .end local v3    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;
    :cond_b
    if-nez p3, :cond_0

    .line 2434
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v0

    .line 2435
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    if-eqz v6, :cond_0

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    array-length v6, v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    instance-of v6, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-eqz v6, :cond_0

    .line 2436
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setEncryptedTyping;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_setEncryptedTyping;-><init>()V

    .line 2437
    .local v3, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_setEncryptedTyping;
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;-><init>()V

    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setEncryptedTyping;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    .line 2438
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setEncryptedTyping;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    iput v7, v6, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->chat_id:I

    .line 2439
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setEncryptedTyping;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->access_hash:J

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->access_hash:J

    .line 2440
    const/4 v6, 0x1

    iput-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setEncryptedTyping;->typing:Z

    .line 2441
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2442
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v7, Lorg/telegram/messenger/MessagesController$48;

    invoke-direct {v7, p0, p3, p1, p2}, Lorg/telegram/messenger/MessagesController$48;-><init>(Lorg/telegram/messenger/MessagesController;IJ)V

    const/4 v8, 0x2

    invoke-virtual {v6, v3, v7, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v4

    .line 2456
    .restart local v4    # "reqId":I
    if-eqz p4, :cond_0

    .line 2457
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    invoke-virtual {v6, v4, p4}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto/16 :goto_0
.end method

.method public setLastCreatedDialogId(JZ)V
    .locals 3
    .param p1, "dialog_id"    # J
    .param p3, "set"    # Z

    .prologue
    .line 663
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$7;

    invoke-direct {v1, p0, p3, p1, p2}, Lorg/telegram/messenger/MessagesController$7;-><init>(Lorg/telegram/messenger/MessagesController;ZJ)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 673
    return-void
.end method

.method public sortDialogs(Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7313
    .local p1, "chatsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    iget-object v5, p0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 7314
    iget-object v5, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 7315
    iget-object v5, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogComparator:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 7316
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v5, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 7317
    iget-object v5, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 7318
    .local v2, "d":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const/16 v5, 0x20

    shr-long/2addr v6, v5

    long-to-int v3, v6

    .line 7319
    .local v3, "high_id":I
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v4, v6

    .line 7320
    .local v4, "lower_id":I
    if-eqz v4, :cond_2

    const/4 v5, 0x1

    if-eq v3, v5, :cond_2

    .line 7321
    iget-object v5, p0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7322
    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 7323
    neg-int v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 7324
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v1, :cond_2

    iget-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v5, :cond_0

    iget-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    if-nez v5, :cond_1

    :cond_0
    iget-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v5, :cond_2

    .line 7325
    :cond_1
    iget-object v5, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7316
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7327
    :cond_3
    if-gez v4, :cond_2

    .line 7328
    if-eqz p1, :cond_4

    .line 7329
    neg-int v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 7330
    .restart local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v1, :cond_4

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v5, :cond_4

    .line 7331
    iget-object v5, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7332
    add-int/lit8 v0, v0, -0x1

    .line 7333
    goto :goto_1

    .line 7336
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_4
    iget-object v5, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7340
    .end local v2    # "d":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v3    # "high_id":I
    .end local v4    # "lower_id":I
    :cond_5
    return-void
.end method

.method public startShortPoll(IZ)V
    .locals 2
    .param p1, "channelId"    # I
    .param p2, "stop"    # Z

    .prologue
    .line 4781
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$90;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/MessagesController$90;-><init>(Lorg/telegram/messenger/MessagesController;ZI)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 4794
    return-void
.end method

.method public toggleAdminMode(IZ)V
    .locals 3
    .param p1, "chat_id"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 4094
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleChatAdmins;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleChatAdmins;-><init>()V

    .line 4095
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_toggleChatAdmins;
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleChatAdmins;->chat_id:I

    .line 4096
    iput-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleChatAdmins;->enabled:Z

    .line 4097
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$74;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/MessagesController$74;-><init>(Lorg/telegram/messenger/MessagesController;I)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 4106
    return-void
.end method

.method public toggleUserAdmin(IIZ)V
    .locals 3
    .param p1, "chat_id"    # I
    .param p2, "user_id"    # I
    .param p3, "admin"    # Z

    .prologue
    .line 4109
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatAdmin;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatAdmin;-><init>()V

    .line 4110
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_editChatAdmin;
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatAdmin;->chat_id:I

    .line 4111
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(I)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatAdmin;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 4112
    iput-boolean p3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatAdmin;->is_admin:Z

    .line 4113
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$75;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$75;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 4119
    return-void
.end method

.method public toogleChannelInvites(IZ)V
    .locals 4
    .param p1, "chat_id"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 3987
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleInvites;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleInvites;-><init>()V

    .line 3988
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_toggleInvites;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleInvites;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 3989
    iput-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleInvites;->enabled:Z

    .line 3990
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$69;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$69;-><init>(Lorg/telegram/messenger/MessagesController;)V

    const/16 v3, 0x40

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 3998
    return-void
.end method

.method public toogleChannelSignatures(IZ)V
    .locals 4
    .param p1, "chat_id"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 4001
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleSignatures;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleSignatures;-><init>()V

    .line 4002
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_toggleSignatures;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleSignatures;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4003
    iput-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleSignatures;->enabled:Z

    .line 4004
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$70;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$70;-><init>(Lorg/telegram/messenger/MessagesController;)V

    const/16 v3, 0x40

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 4018
    return-void
.end method

.method public unblockUser(I)V
    .locals 5
    .param p1, "user_id"    # I

    .prologue
    .line 1583
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;-><init>()V

    .line 1584
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 1585
    .local v1, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v1, :cond_0

    .line 1597
    :goto_0
    return-void

    .line 1588
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1589
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;->id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1590
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoaded:I

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1591
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$25;

    invoke-direct {v3, p0, v1}, Lorg/telegram/messenger/MessagesController$25;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public unregistedPush()V
    .locals 3

    .prologue
    .line 4417
    sget-boolean v1, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    if-eqz v1, :cond_0

    sget-object v1, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 4418
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_unregisterDevice;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_unregisterDevice;-><init>()V

    .line 4419
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_account_unregisterDevice;
    sget-object v1, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_unregisterDevice;->token:Ljava/lang/String;

    .line 4420
    const/4 v1, 0x2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_unregisterDevice;->token_type:I

    .line 4421
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$80;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$80;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 4428
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_unregisterDevice;
    :cond_0
    return-void
.end method

.method public updateChannelAbout(ILjava/lang/String;Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 4
    .param p1, "chat_id"    # I
    .param p2, "about"    # Ljava/lang/String;
    .param p3, "info"    # Lorg/telegram/tgnet/TLRPC$ChatFull;

    .prologue
    .line 4021
    if-nez p3, :cond_0

    .line 4042
    :goto_0
    return-void

    .line 4024
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editAbout;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_editAbout;-><init>()V

    .line 4025
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editAbout;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editAbout;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4026
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editAbout;->about:Ljava/lang/String;

    .line 4027
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$71;

    invoke-direct {v2, p0, p3, p2}, Lorg/telegram/messenger/MessagesController$71;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$ChatFull;Ljava/lang/String;)V

    const/16 v3, 0x40

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0
.end method

.method public updateChannelUserName(ILjava/lang/String;)V
    .locals 4
    .param p1, "chat_id"    # I
    .param p2, "userName"    # Ljava/lang/String;

    .prologue
    .line 4045
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;-><init>()V

    .line 4046
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4047
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;->username:Ljava/lang/String;

    .line 4048
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$72;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/messenger/MessagesController$72;-><init>(Lorg/telegram/messenger/MessagesController;ILjava/lang/String;)V

    const/16 v3, 0x40

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 4071
    return-void
.end method

.method public updateConfig(Lorg/telegram/tgnet/TLRPC$TL_config;)V
    .locals 1
    .param p1, "config"    # Lorg/telegram/tgnet/TLRPC$TL_config;

    .prologue
    .line 284
    new-instance v0, Lorg/telegram/messenger/MessagesController$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/MessagesController$3;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_config;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 320
    return-void
.end method

.method protected updateInterfaceWithMessages(JLjava/util/ArrayList;)V
    .locals 1
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7188
    .local p3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;Z)V

    .line 7189
    return-void
.end method

.method protected updateInterfaceWithMessages(JLjava/util/ArrayList;Z)V
    .locals 19
    .param p1, "uid"    # J
    .param p4, "isBroadcast"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 7203
    .local p3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 7310
    :cond_0
    :goto_0
    return-void

    .line 7207
    :cond_1
    move-wide/from16 v0, p1

    long-to-int v14, v0

    if-nez v14, :cond_9

    const/4 v9, 0x1

    .line 7208
    .local v9, "isEncryptedChat":Z
    :goto_1
    const/4 v10, 0x0

    .line 7209
    .local v10, "lastMessage":Lorg/telegram/messenger/MessageObject;
    const/4 v6, 0x0

    .line 7210
    .local v6, "channelId":I
    const/4 v13, 0x0

    .line 7211
    .local v13, "updateRating":Z
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_2
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v4, v14, :cond_a

    .line 7212
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/MessageObject;

    .line 7213
    .local v11, "message":Lorg/telegram/messenger/MessageObject;
    if-eqz v10, :cond_5

    if-nez v9, :cond_2

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v15

    if-gt v14, v15, :cond_5

    :cond_2
    if-nez v9, :cond_3

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    if-gez v14, :cond_4

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    if-gez v14, :cond_4

    :cond_3
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v15

    if-lt v14, v15, :cond_5

    :cond_4
    iget-object v14, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object v15, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-le v14, v15, :cond_6

    .line 7214
    :cond_5
    move-object v10, v11

    .line 7215
    iget-object v14, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v14, :cond_6

    .line 7216
    iget-object v14, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v14, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    .line 7219
    :cond_6
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isNewGif()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v14

    if-nez v14, :cond_7

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v14

    if-nez v14, :cond_7

    .line 7220
    iget-object v14, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v15, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-static {v14, v15}, Lorg/telegram/messenger/MessagesController;->addNewGifToRecent(Lorg/telegram/tgnet/TLRPC$Document;I)V

    .line 7222
    :cond_7
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isSent()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 7223
    const/4 v13, 0x1

    .line 7211
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 7207
    .end local v4    # "a":I
    .end local v6    # "channelId":I
    .end local v9    # "isEncryptedChat":Z
    .end local v10    # "lastMessage":Lorg/telegram/messenger/MessageObject;
    .end local v11    # "message":Lorg/telegram/messenger/MessageObject;
    .end local v13    # "updateRating":Z
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 7226
    .restart local v4    # "a":I
    .restart local v6    # "channelId":I
    .restart local v9    # "isEncryptedChat":Z
    .restart local v10    # "lastMessage":Lorg/telegram/messenger/MessageObject;
    .restart local v13    # "updateRating":Z
    :cond_a
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/query/MessagesQuery;->loadReplyMessagesForMessages(Ljava/util/ArrayList;J)V

    .line 7227
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v14

    sget v15, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    aput-object p3, v16, v17

    invoke-virtual/range {v14 .. v16}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 7229
    if-eqz v10, :cond_0

    .line 7232
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 7233
    .local v8, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-object v14, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo;

    if-eqz v14, :cond_c

    .line 7234
    if-eqz v8, :cond_0

    .line 7235
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7236
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7237
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7238
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7239
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7240
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7241
    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    .line 7242
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7243
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    iget v15, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MessageObject;

    .line 7244
    .local v12, "object":Lorg/telegram/messenger/MessageObject;
    if-eqz v12, :cond_b

    iget-object v14, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_b

    .line 7245
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v15, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7247
    :cond_b
    const/4 v14, 0x0

    iput v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    .line 7248
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v14

    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lorg/telegram/messenger/NotificationsController;->removeNotificationsForDialog(J)V

    .line 7249
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v14

    sget v15, Lorg/telegram/messenger/NotificationCenter;->needReloadRecentDialogsSearch:I

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 7254
    .end local v12    # "object":Lorg/telegram/messenger/MessageObject;
    :cond_c
    const/4 v5, 0x0

    .line 7256
    .local v5, "changed":Z
    if-nez v8, :cond_13

    .line 7257
    if-nez p4, :cond_10

    .line 7258
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    .line 7259
    .local v7, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v6, :cond_d

    if-eqz v7, :cond_0

    :cond_d
    if-eqz v7, :cond_e

    iget-boolean v14, v7, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v14, :cond_0

    .line 7262
    :cond_e
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .end local v8    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 7263
    .restart local v8    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    move-wide/from16 v0, p1

    iput-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 7264
    const/4 v14, 0x0

    iput v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    .line 7265
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    iput v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    .line 7266
    iget-object v14, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    .line 7267
    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v14

    if-eqz v14, :cond_12

    const/4 v14, 0x1

    :goto_3
    iput v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->flags:I

    .line 7268
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7269
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7270
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7271
    iget-object v14, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v14, :cond_f

    .line 7272
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7273
    iget-object v14, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_f

    .line 7274
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v15, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7277
    :cond_f
    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    .line 7278
    const/4 v5, 0x1

    .line 7303
    .end local v7    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_10
    :goto_4
    if-eqz v5, :cond_11

    .line 7304
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Ljava/util/HashMap;)V

    .line 7307
    :cond_11
    if-eqz v13, :cond_0

    .line 7308
    invoke-static/range {p1 .. p2}, Lorg/telegram/messenger/query/SearchQuery;->increasePeerRaiting(J)V

    goto/16 :goto_0

    .line 7267
    .restart local v7    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_12
    const/4 v14, 0x0

    goto :goto_3

    .line 7281
    .end local v7    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_13
    iget v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-lez v14, :cond_14

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    if-lez v14, :cond_14

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    iget v15, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-gt v14, v15, :cond_16

    :cond_14
    iget v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-gez v14, :cond_15

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    if-gez v14, :cond_15

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    iget v15, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-lt v14, v15, :cond_16

    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    iget v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-ltz v14, :cond_16

    iget v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    iget-object v15, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-gt v14, v15, :cond_10

    .line 7284
    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    iget v15, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MessageObject;

    .line 7285
    .restart local v12    # "object":Lorg/telegram/messenger/MessageObject;
    if-eqz v12, :cond_17

    iget-object v14, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_17

    .line 7286
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v15, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7288
    :cond_17
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    iput v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    .line 7289
    if-nez p4, :cond_18

    .line 7290
    iget-object v14, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    .line 7291
    const/4 v5, 0x1

    .line 7293
    :cond_18
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7294
    iget-object v14, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v14, :cond_10

    .line 7295
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7296
    iget-object v14, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_10

    .line 7297
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v15, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4
.end method

.method public updateTimerProc()V
    .locals 32

    .prologue
    .line 2059
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 2061
    .local v10, "currentTime":J
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController;->checkDeletingTask(Z)Z

    .line 2063
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v25

    if-eqz v25, :cond_8

    .line 2064
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/tgnet/ConnectionsManager;->getPauseTime()J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-nez v25, :cond_4

    sget-boolean v25, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-eqz v25, :cond_4

    sget-boolean v25, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    if-nez v25, :cond_4

    .line 2065
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->statusSettingState:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-eqz v25, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J

    move-wide/from16 v28, v0

    sub-long v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(J)J

    move-result-wide v26

    const-wide/32 v28, 0xd6d8

    cmp-long v25, v26, v28

    if-gez v25, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->offlineSent:Z

    move/from16 v25, v0

    if-eqz v25, :cond_2

    .line 2066
    :cond_0
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MessagesController;->statusSettingState:I

    .line 2068
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    move/from16 v25, v0

    if-eqz v25, :cond_1

    .line 2069
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    move/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v25 .. v27}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 2072
    :cond_1
    new-instance v18, Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;-><init>()V

    .line 2074
    .local v18, "req":Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;
    sget-object v25, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v26, "mainconfig"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 2075
    .local v17, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v25, "ghost_mode"

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 2076
    .local v12, "ghostMode":Z
    move-object/from16 v0, v18

    iput-boolean v12, v0, Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;->offline:Z

    .line 2077
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v25

    new-instance v26, Lorg/telegram/messenger/MessagesController$41;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lorg/telegram/messenger/MessagesController$41;-><init>(Lorg/telegram/messenger/MessagesController;Z)V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    .line 2116
    .end local v12    # "ghostMode":Z
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .end local v18    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_6

    .line 2117
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2118
    .local v15, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_1
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v4, v0, :cond_6

    .line 2119
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 2120
    .local v14, "key":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    .line 2121
    .local v23, "updatesStartWaitTime":Ljava/lang/Long;
    if-eqz v23, :cond_3

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide/16 v28, 0x5dc

    add-long v26, v26, v28

    cmp-long v25, v26, v10

    if-gez v25, :cond_3

    .line 2122
    const-string/jumbo v25, "tmessages"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "QUEUE CHANNEL "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " UPDATES WAIT TIMEOUT - CHECK QUEUE"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2123
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v14, v1}, Lorg/telegram/messenger/MessagesController;->processChannelsUpdatesQueue(II)V

    .line 2118
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2094
    .end local v4    # "a":I
    .end local v14    # "key":I
    .end local v15    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v23    # "updatesStartWaitTime":Ljava/lang/Long;
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->statusSettingState:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->offlineSent:Z

    move/from16 v25, v0

    if-nez v25, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/tgnet/ConnectionsManager;->getPauseTime()J

    move-result-wide v28

    sub-long v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(J)J

    move-result-wide v26

    const-wide/16 v28, 0x7d0

    cmp-long v25, v26, v28

    if-ltz v25, :cond_2

    .line 2095
    const/16 v25, 0x2

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MessagesController;->statusSettingState:I

    .line 2096
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    move/from16 v25, v0

    if-eqz v25, :cond_5

    .line 2097
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    move/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v25 .. v27}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 2099
    :cond_5
    new-instance v18, Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;-><init>()V

    .line 2100
    .restart local v18    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;->offline:Z

    .line 2101
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v25

    new-instance v26, Lorg/telegram/messenger/MessagesController$42;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController$42;-><init>(Lorg/telegram/messenger/MessagesController;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    goto/16 :goto_0

    .line 2128
    .end local v18    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_2
    const/16 v25, 0x3

    move/from16 v0, v25

    if-ge v4, v0, :cond_8

    .line 2129
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUpdatesStartTime(I)J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-eqz v25, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUpdatesStartTime(I)J

    move-result-wide v26

    const-wide/16 v28, 0x5dc

    add-long v26, v26, v28

    cmp-long v25, v26, v10

    if-gez v25, :cond_7

    .line 2130
    const-string/jumbo v25, "tmessages"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " QUEUE UPDATES WAIT TIMEOUT - CHECK QUEUE"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v4, v1}, Lorg/telegram/messenger/MessagesController;->processUpdatesQueue(II)V

    .line 2128
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2135
    .end local v4    # "a":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->channelViewsToSend:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v25

    if-nez v25, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->channelViewsToReload:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v25

    if-eqz v25, :cond_e

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesController;->lastViewsCheckTime:J

    move-wide/from16 v28, v0

    sub-long v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(J)J

    move-result-wide v26

    const-wide/16 v28, 0x1388

    cmp-long v25, v26, v28

    if-ltz v25, :cond_e

    .line 2136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/messenger/MessagesController;->lastViewsCheckTime:J

    .line 2137
    const/4 v7, 0x0

    .local v7, "b":I
    :goto_3
    const/16 v25, 0x2

    move/from16 v0, v25

    if-ge v7, v0, :cond_e

    .line 2138
    if-nez v7, :cond_a

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController;->channelViewsToSend:Landroid/util/SparseArray;

    .line 2139
    .local v6, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :goto_4
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v25

    if-nez v25, :cond_b

    .line 2137
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2138
    .end local v6    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController;->channelViewsToReload:Landroid/util/SparseArray;

    goto :goto_4

    .line 2142
    .restart local v6    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :cond_b
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_6
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v4, v0, :cond_d

    .line 2143
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    .line 2144
    .restart local v14    # "key":I
    new-instance v18, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;-><init>()V

    .line 2145
    .local v18, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;
    invoke-static {v14}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2146
    invoke-virtual {v6, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/ArrayList;

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;->id:Ljava/util/ArrayList;

    .line 2147
    if-nez v4, :cond_c

    const/16 v25, 0x1

    :goto_7
    move/from16 v0, v25

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;->increment:Z

    .line 2148
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v25

    new-instance v26, Lorg/telegram/messenger/MessagesController$43;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v14, v2}, Lorg/telegram/messenger/MessagesController$43;-><init>(Lorg/telegram/messenger/MessagesController;ILorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 2142
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 2147
    :cond_c
    const/16 v25, 0x0

    goto :goto_7

    .line 2176
    .end local v14    # "key":I
    .end local v18    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;
    :cond_d
    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    goto :goto_5

    .line 2179
    .end local v4    # "a":I
    .end local v6    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v7    # "b":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_13

    .line 2180
    const/16 v20, 0x0

    .line 2181
    .local v20, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v8

    .line 2182
    .local v8, "currentServerTime":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_11

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 2183
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    add-int/lit8 v26, v8, -0x1e

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_f

    .line 2184
    if-nez v20, :cond_10

    .line 2185
    new-instance v20, Ljava/util/ArrayList;

    .end local v20    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 2187
    .restart local v20    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_10
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 2190
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_11
    if-eqz v20, :cond_13

    .line 2191
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_12

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    .line 2192
    .local v21, "uid":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 2194
    .end local v21    # "uid":Ljava/lang/Integer;
    :cond_12
    new-instance v25, Lorg/telegram/messenger/MessagesController$44;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController$44;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2202
    .end local v8    # "currentServerTime":I
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v20    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseIntArray;->size()I

    move-result v25

    if-eqz v25, :cond_15

    .line 2203
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseIntArray;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v4, v0, :cond_15

    .line 2204
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v14

    .line 2205
    .restart local v14    # "key":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Landroid/util/SparseIntArray;->get(I)I

    move-result v19

    .line 2206
    .local v19, "timeout":I
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v26, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    const-wide/16 v30, 0x3e8

    div-long v28, v28, v30

    cmp-long v25, v26, v28

    if-gez v25, :cond_14

    .line 2207
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2208
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->needShortPollChannels:Landroid/util/SparseIntArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v25

    if-ltz v25, :cond_14

    .line 2209
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V

    .line 2203
    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 2214
    .end local v4    # "a":I
    .end local v14    # "key":I
    .end local v19    # "timeout":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->lastPrintingStringCount:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_1b

    .line 2215
    :cond_16
    const/16 v22, 0x0

    .line 2216
    .local v22, "updated":Z
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2217
    .local v16, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v7, 0x0

    .restart local v7    # "b":I
    :goto_b
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v7, v0, :cond_1a

    .line 2218
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 2219
    .local v14, "key":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 2220
    .local v5, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v4, v0, :cond_18

    .line 2221
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/telegram/messenger/MessagesController$PrintingUser;

    .line 2222
    .local v24, "user":Lorg/telegram/messenger/MessagesController$PrintingUser;
    move-object/from16 v0, v24

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->lastTime:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x170c

    add-long v26, v26, v28

    cmp-long v25, v26, v10

    if-gez v25, :cond_17

    .line 2223
    const/16 v22, 0x1

    .line 2224
    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2225
    add-int/lit8 v4, v4, -0x1

    .line 2220
    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 2228
    .end local v24    # "user":Lorg/telegram/messenger/MessagesController$PrintingUser;
    :cond_18
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_19

    .line 2229
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2230
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2231
    add-int/lit8 v7, v7, -0x1

    .line 2217
    :cond_19
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 2235
    .end local v4    # "a":I
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    .end local v14    # "key":Ljava/lang/Long;
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MessagesController;->updatePrintingStrings()V

    .line 2237
    if-eqz v22, :cond_1b

    .line 2238
    new-instance v25, Lorg/telegram/messenger/MessagesController$45;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController$45;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2246
    .end local v7    # "b":I
    .end local v16    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v22    # "updated":Z
    :cond_1b
    return-void
.end method

.method public uploadAndApplyUserAvatar(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 4
    .param p1, "bigPhoto"    # Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .prologue
    .line 1727
    if-eqz p1, :cond_0

    .line 1728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    .line 1729
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZ)V

    .line 1731
    :cond_0
    return-void
.end method
