.class public Lorg/telegram/messenger/MessagesStorage;
.super Ljava/lang/Object;
.source "MessagesStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/MessagesStorage$Hole;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/messenger/MessagesStorage;

.field public static lastDateValue:I

.field public static lastPtsValue:I

.field public static lastQtsValue:I

.field public static lastSecretVersion:I

.field public static lastSeqValue:I

.field public static secretG:I

.field public static secretPBytes:[B


# instance fields
.field private cacheFile:Ljava/io/File;

.field private database:Lorg/telegram/SQLite/SQLiteDatabase;

.field private lastSavedDate:I

.field private lastSavedPts:I

.field private lastSavedQts:I

.field private lastSavedSeq:I

.field private lastTaskId:Ljava/util/concurrent/atomic/AtomicLong;

.field private storageQueue:Lorg/telegram/messenger/DispatchQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 45
    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    .line 46
    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    .line 47
    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    .line 48
    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    .line 49
    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastSecretVersion:I

    .line 50
    sput-object v1, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    .line 51
    sput v0, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    .line 58
    sput-object v1, Lorg/telegram/messenger/MessagesStorage;->Instance:Lorg/telegram/messenger/MessagesStorage;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v1, "storageQueue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->lastTaskId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 53
    iput v4, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedSeq:I

    .line 54
    iput v4, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedPts:I

    .line 55
    iput v4, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedDate:I

    .line 56
    iput v4, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedQts:I

    .line 74
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->setPriority(I)V

    .line 75
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesStorage;->openDatabase()V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/SQLite/SQLiteDatabase;)Lorg/telegram/SQLite/SQLiteDatabase;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Lorg/telegram/SQLite/SQLiteDatabase;

    .prologue
    .line 39
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/messenger/DispatchQueue;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesStorage;->formatUserSearchName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChatsInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$messages_Dialogs;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesStorage;->putDialogsInternal(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;ZZIZ)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # I
    .param p5, "x5"    # Z

    .prologue
    .line 39
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/MessagesStorage;->putMessagesInternal(Ljava/util/ArrayList;ZZIZ)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/MessagesStorage;JLjava/lang/Integer;III)[J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/Integer;
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I

    .prologue
    .line 39
    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/MessagesStorage;->updateMessageStateAndIdInternal(JLjava/lang/Integer;III)[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;ZZ)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->updateUsersInternal(Ljava/util/ArrayList;ZZ)V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/MessagesStorage;Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Landroid/util/SparseArray;
    .param p2, "x2"    # Landroid/util/SparseArray;
    .param p3, "x3"    # Ljava/util/HashMap;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsReadInternal(Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;JI)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/MessagesStorage;->doneHolesInTable(Ljava/lang/String;JI)V

    return-void
.end method

.method static synthetic access$1800(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;JII)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/MessagesStorage;->closeHolesInTable(Ljava/lang/String;JII)V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesStorage;->fixUnsupportedMedia(Lorg/telegram/tgnet/TLRPC$Message;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/messenger/MessagesStorage;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 39
    iget v0, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedSeq:I

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesStorage;->isValidKeyboardToSave(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lorg/telegram/messenger/MessagesStorage;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedSeq:I

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesStorage;->putUsersInternal(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesStorage;->putChatsInternal(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/messenger/MessagesStorage;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 39
    iget v0, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedPts:I

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/messenger/MessagesStorage;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedPts:I

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/messenger/MessagesStorage;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 39
    iget v0, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedDate:I

    return v0
.end method

.method static synthetic access$402(Lorg/telegram/messenger/MessagesStorage;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedDate:I

    return p1
.end method

.method static synthetic access$502(Lorg/telegram/messenger/MessagesStorage;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedQts:I

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/messenger/MessagesStorage;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->cacheFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$602(Lorg/telegram/messenger/MessagesStorage;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 39
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage;->cacheFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$700(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeletedInternal(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithDeletedMessagesInternal(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesStorage;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Landroid/util/SparseArray;
    .param p3, "x3"    # Landroid/util/SparseArray;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithReadMessagesInternal(Ljava/util/ArrayList;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    return-void
.end method

.method public static addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5277
    .local p1, "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-eqz v3, :cond_0

    .line 5278
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-lez v3, :cond_6

    .line 5279
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5280
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5288
    :cond_0
    :goto_0
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    if-eqz v3, :cond_1

    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5289
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5291
    :cond_1
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-eqz v3, :cond_7

    .line 5292
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 5293
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5295
    :cond_2
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->channel_id:I

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->channel_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 5296
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->channel_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5298
    :cond_3
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->chat_id:I

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->chat_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 5299
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->chat_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5301
    :cond_4
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 5302
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 5303
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 5304
    .local v2, "uid":Ljava/lang/Integer;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 5305
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5302
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5283
    .end local v0    # "a":I
    .end local v2    # "uid":Ljava/lang/Integer;
    :cond_6
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    neg-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5284
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    neg-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 5310
    :cond_7
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 5311
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_2
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_a

    .line 5312
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 5313
    .local v1, "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    if-eqz v3, :cond_9

    .line 5314
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    .end local v1    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    iget v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5311
    :cond_8
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5315
    .restart local v1    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_9
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;

    if-eqz v3, :cond_8

    .line 5316
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;

    .end local v1    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$InputUser;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 5320
    .end local v0    # "a":I
    :cond_a
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v3, :cond_b

    .line 5321
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    if-eqz v3, :cond_b

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 5322
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5325
    :cond_b
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    if-eqz v3, :cond_d

    .line 5326
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    if-eqz v3, :cond_c

    .line 5327
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 5328
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5331
    :cond_c
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    if-eqz v3, :cond_d

    .line 5332
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 5333
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5337
    :cond_d
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-gez v3, :cond_e

    .line 5338
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    neg-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 5339
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    neg-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5342
    :cond_e
    return-void
.end method

.method private closeHolesInTable(Ljava/lang/String;JII)V
    .locals 18
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "did"    # J
    .param p4, "minId"    # I
    .param p5, "maxId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 5060
    const/4 v8, 0x0

    .line 5061
    .local v8, "ok":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "SELECT start, end FROM "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " WHERE uid = %d AND ((end >= %d AND end <= %d) OR (start >= %d AND start <= %d) OR (start >= %d AND end <= %d) OR (start <= %d AND end >= %d))"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x9

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x5

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x6

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x7

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/16 v15, 0x8

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v11, v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v3

    .line 5062
    .local v3, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    const/4 v7, 0x0

    .line 5063
    .local v7, "holes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesStorage$Hole;>;"
    :cond_0
    :goto_0
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 5064
    if-nez v7, :cond_1

    .line 5065
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "holes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesStorage$Hole;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 5067
    .restart local v7    # "holes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesStorage$Hole;>;"
    :cond_1
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v9

    .line 5068
    .local v9, "start":I
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    .line 5069
    .local v5, "end":I
    if-ne v9, v5, :cond_2

    const/4 v11, 0x1

    if-eq v9, v11, :cond_0

    .line 5072
    :cond_2
    new-instance v11, Lorg/telegram/messenger/MessagesStorage$Hole;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v9, v5}, Lorg/telegram/messenger/MessagesStorage$Hole;-><init>(Lorg/telegram/messenger/MessagesStorage;II)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5113
    .end local v3    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v5    # "end":I
    .end local v7    # "holes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesStorage$Hole;>;"
    .end local v9    # "start":I
    :catch_0
    move-exception v4

    .line 5114
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "tmessages"

    invoke-static {v11, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5116
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    return-void

    .line 5074
    .restart local v3    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v7    # "holes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesStorage$Hole;>;"
    :cond_4
    :try_start_1
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 5075
    if-eqz v7, :cond_3

    .line 5076
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_3

    .line 5077
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessagesStorage$Hole;

    .line 5078
    .local v6, "hole":Lorg/telegram/messenger/MessagesStorage$Hole;
    iget v11, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    add-int/lit8 v11, v11, -0x1

    move/from16 v0, p5

    if-lt v0, v11, :cond_6

    iget v11, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p4

    if-gt v0, v11, :cond_6

    .line 5079
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "DELETE FROM "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " WHERE uid = %d AND start = %d AND end = %d"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5076
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5080
    :cond_6
    iget v11, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    add-int/lit8 v11, v11, -0x1

    move/from16 v0, p5

    if-lt v0, v11, :cond_7

    .line 5081
    iget v11, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v0, p4

    if-eq v11, v0, :cond_5

    .line 5083
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "UPDATE "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " SET end = %d WHERE uid = %d AND start = %d AND end = %d"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 5084
    :catch_1
    move-exception v4

    .line 5085
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v11, "tmessages"

    invoke-static {v11, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 5088
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_7
    iget v11, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p4

    if-gt v0, v11, :cond_8

    .line 5089
    iget v11, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move/from16 v0, p5

    if-eq v11, v0, :cond_5

    .line 5091
    :try_start_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "UPDATE "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " SET start = %d WHERE uid = %d AND start = %d AND end = %d"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 5092
    :catch_2
    move-exception v4

    .line 5093
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v11, "tmessages"

    invoke-static {v11, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 5097
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "DELETE FROM "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " WHERE uid = %d AND start = %d AND end = %d"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5098
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "REPLACE INTO "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " VALUES(?, ?, ?)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    .line 5099
    .local v10, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 5100
    const/4 v11, 0x1

    move-wide/from16 v0, p2

    invoke-virtual {v10, v11, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5101
    const/4 v11, 0x2

    iget v12, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    invoke-virtual {v10, v11, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5102
    const/4 v11, 0x3

    move/from16 v0, p4

    invoke-virtual {v10, v11, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5103
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 5104
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 5105
    const/4 v11, 0x1

    move-wide/from16 v0, p2

    invoke-virtual {v10, v11, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5106
    const/4 v11, 0x2

    move/from16 v0, p5

    invoke-virtual {v10, v11, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5107
    const/4 v11, 0x3

    iget v12, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    invoke-virtual {v10, v11, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5108
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 5109
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2
.end method

.method public static createFirstHoles(JLorg/telegram/SQLite/SQLitePreparedStatement;Lorg/telegram/SQLite/SQLitePreparedStatement;I)V
    .locals 6
    .param p0, "did"    # J
    .param p2, "state5"    # Lorg/telegram/SQLite/SQLitePreparedStatement;
    .param p3, "state6"    # Lorg/telegram/SQLite/SQLitePreparedStatement;
    .param p4, "messageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5498
    invoke-virtual {p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 5499
    invoke-virtual {p2, v2, p0, p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5500
    if-ne p4, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p2, v4, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5501
    invoke-virtual {p2, v5, p4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5502
    invoke-virtual {p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 5504
    const/4 v0, 0x0

    .local v0, "b":I
    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 5505
    invoke-virtual {p3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 5506
    invoke-virtual {p3, v2, p0, p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5507
    invoke-virtual {p3, v4, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5508
    if-ne p4, v2, :cond_1

    move v1, v2

    :goto_2
    invoke-virtual {p3, v5, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5509
    const/4 v1, 0x4

    invoke-virtual {p3, v1, p4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5510
    invoke-virtual {p3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 5504
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "b":I
    :cond_0
    move v1, v3

    .line 5500
    goto :goto_0

    .restart local v0    # "b":I
    :cond_1
    move v1, v3

    .line 5508
    goto :goto_2

    .line 5512
    :cond_2
    return-void
.end method

.method private doneHolesInTable(Ljava/lang/String;JI)V
    .locals 8
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "did"    # J
    .param p4, "max_id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 4924
    if-nez p4, :cond_0

    .line 4925
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DELETE FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " WHERE uid = %d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4929
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "REPLACE INTO "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " VALUES(?, ?, ?)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    .line 4930
    .local v0, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 4931
    invoke-virtual {v0, v6, p2, p3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4932
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4933
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4934
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 4935
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4936
    return-void

    .line 4927
    .end local v0    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DELETE FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " WHERE uid = %d AND start = 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_0
.end method

.method private fixUnsupportedMedia(Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 5
    .param p1, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    const/16 v4, 0x35

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4906
    if-nez p1, :cond_1

    .line 4921
    :cond_0
    :goto_0
    return-void

    .line 4909
    :cond_1
    const/4 v0, 0x0

    .line 4910
    .local v0, "ok":Z
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported_old;

    if-eqz v1, :cond_2

    .line 4911
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->bytes:[B

    array-length v1, v1

    if-nez v1, :cond_0

    .line 4912
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-array v2, v2, [B

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->bytes:[B

    .line 4913
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->bytes:[B

    aput-byte v4, v1, v3

    goto :goto_0

    .line 4915
    :cond_2
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    if-eqz v1, :cond_0

    .line 4916
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported_old;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported_old;-><init>()V

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 4917
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-array v2, v2, [B

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->bytes:[B

    .line 4918
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->bytes:[B

    aput-byte v4, v1, v3

    .line 4919
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    goto :goto_0
.end method

.method private formatUserSearchName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    .locals 2
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 3320
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3321
    .local v0, "str":Ljava/lang/StringBuilder;
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 3322
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3324
    :cond_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 3325
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 3326
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3328
    :cond_1
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3330
    :cond_2
    const-string/jumbo v1, ";;;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3331
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 3332
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3334
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lorg/telegram/messenger/MessagesStorage;
    .locals 4

    .prologue
    .line 61
    sget-object v0, Lorg/telegram/messenger/MessagesStorage;->Instance:Lorg/telegram/messenger/MessagesStorage;

    .line 62
    .local v0, "localInstance":Lorg/telegram/messenger/MessagesStorage;
    if-nez v0, :cond_1

    .line 63
    const-class v3, Lorg/telegram/messenger/MessagesStorage;

    monitor-enter v3

    .line 64
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/MessagesStorage;->Instance:Lorg/telegram/messenger/MessagesStorage;

    .line 65
    if-nez v0, :cond_0

    .line 66
    new-instance v1, Lorg/telegram/messenger/MessagesStorage;

    invoke-direct {v1}, Lorg/telegram/messenger/MessagesStorage;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Lorg/telegram/messenger/MessagesStorage;
    .local v1, "localInstance":Lorg/telegram/messenger/MessagesStorage;
    :try_start_1
    sput-object v1, Lorg/telegram/messenger/MessagesStorage;->Instance:Lorg/telegram/messenger/MessagesStorage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 68
    .end local v1    # "localInstance":Lorg/telegram/messenger/MessagesStorage;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/MessagesStorage;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 70
    :cond_1
    return-object v0

    .line 68
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/messenger/MessagesStorage;
    .restart local v1    # "localInstance":Lorg/telegram/messenger/MessagesStorage;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/messenger/MessagesStorage;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/MessagesStorage;
    goto :goto_0
.end method

.method private getMessageMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I
    .locals 2
    .param p1, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 3654
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v0, :cond_0

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-lez v0, :cond_0

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    const/16 v1, 0x3c

    if-le v0, v1, :cond_1

    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3658
    :cond_1
    const/4 v0, 0x1

    .line 3662
    :goto_0
    return v0

    .line 3659
    :cond_2
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-nez v0, :cond_3

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3660
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 3662
    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private isValidKeyboardToSave(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1
    .param p1, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 3846
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->selective:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadPendingTasks()V
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$6;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesStorage$6;-><init>(Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 688
    return-void
.end method

.method private markMessagesAsDeletedInternal(Ljava/util/ArrayList;I)V
    .locals 26
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
    .line 4674
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v20, 0x0

    .line 4675
    .local v20, "unread_count":I
    if-eqz p2, :cond_7

    .line 4676
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4677
    .local v5, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v4, v0, :cond_1

    .line 4678
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 4679
    .local v16, "messageId":J
    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const/16 v21, 0x20

    shl-long v22, v22, v21

    or-long v16, v16, v22

    .line 4680
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    if-lez v21, :cond_0

    .line 4681
    const/16 v21, 0x2c

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4683
    :cond_0
    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4677
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4685
    .end local v16    # "messageId":J
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 4689
    .end local v4    # "a":I
    .end local v5    # "builder":Ljava/lang/StringBuilder;
    .local v14, "ids":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v21, v0

    sget-object v22, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v23, "SELECT uid, data, read_state FROM messages WHERE mid IN(%s)"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    invoke-static/range {v22 .. v24}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    .line 4690
    .local v6, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4692
    .local v12, "filesToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    :cond_2
    :goto_2
    :try_start_1
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 4693
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v8

    .line 4694
    .local v8, "did":J
    if-eqz p2, :cond_3

    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v21

    if-nez v21, :cond_3

    .line 4695
    add-int/lit8 v20, v20, 0x1

    .line 4697
    :cond_3
    long-to-int v0, v8

    move/from16 v21, v0

    if-nez v21, :cond_2

    .line 4700
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v7

    .line 4701
    .local v7, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v7, :cond_2

    .line 4702
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v7, v0, v1}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v15

    .line 4703
    .local v15, "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v7}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 4704
    if-eqz v15, :cond_2

    .line 4705
    iget-object v0, v15, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    move/from16 v21, v0

    if-eqz v21, :cond_8

    .line 4706
    iget-object v0, v15, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 4707
    .local v18, "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v11

    .line 4708
    .local v11, "file":Ljava/io/File;
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_4

    .line 4709
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 4725
    .end local v7    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v8    # "did":J
    .end local v11    # "file":Ljava/io/File;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v18    # "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :catch_0
    move-exception v10

    .line 4726
    .local v10, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v21, "tmessages"

    move-object/from16 v0, v21

    invoke-static {v0, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4728
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4729
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Lorg/telegram/messenger/FileLoader;->deleteFiles(Ljava/util/ArrayList;I)V

    .line 4731
    if-eqz p2, :cond_6

    if-eqz v20, :cond_6

    .line 4732
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v8, v0

    .line 4733
    .restart local v8    # "did":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v21, v0

    const-string/jumbo v22, "UPDATE dialogs SET unread_count = ((SELECT unread_count FROM dialogs WHERE did = ?) - ?) WHERE did = ?"

    invoke-virtual/range {v21 .. v22}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v19

    .line 4734
    .local v19, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual/range {v19 .. v19}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 4735
    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4736
    const/16 v21, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4737
    const/16 v21, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4738
    invoke-virtual/range {v19 .. v19}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 4739
    invoke-virtual/range {v19 .. v19}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4742
    .end local v8    # "did":J
    .end local v19    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v21, v0

    sget-object v22, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v23, "DELETE FROM messages WHERE mid IN(%s)"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    invoke-static/range {v22 .. v24}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4743
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v21, v0

    sget-object v22, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v23, "DELETE FROM bot_keyboard WHERE mid IN(%s)"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    invoke-static/range {v22 .. v24}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4744
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v21, v0

    sget-object v22, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v23, "DELETE FROM messages_seq WHERE mid IN(%s)"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    invoke-static/range {v22 .. v24}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4745
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v21, v0

    sget-object v22, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v23, "DELETE FROM media_v2 WHERE mid IN(%s)"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    invoke-static/range {v22 .. v24}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4746
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v21, v0

    const-string/jumbo v22, "DELETE FROM media_counts_v2 WHERE 1"

    invoke-virtual/range {v21 .. v22}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4747
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/query/BotQuery;->clearBotKeyboard(JLjava/util/ArrayList;)V

    .line 4751
    .end local v6    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v12    # "filesToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v14    # "ids":Ljava/lang/String;
    :goto_4
    return-void

    .line 4687
    :cond_7
    const-string/jumbo v21, ","

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v14

    .restart local v14    # "ids":Ljava/lang/String;
    goto/16 :goto_1

    .line 4712
    .restart local v6    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v7    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v8    # "did":J
    .restart local v12    # "filesToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .restart local v15    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_8
    :try_start_3
    iget-object v0, v15, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 4713
    iget-object v0, v15, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v11

    .line 4714
    .restart local v11    # "file":Ljava/io/File;
    if-eqz v11, :cond_9

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_9

    .line 4715
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4717
    :cond_9
    iget-object v0, v15, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v11

    .line 4718
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_2

    .line 4719
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 4748
    .end local v6    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v7    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v8    # "did":J
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "filesToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v14    # "ids":Ljava/lang/String;
    .end local v15    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :catch_1
    move-exception v10

    .line 4749
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string/jumbo v21, "tmessages"

    move-object/from16 v0, v21

    invoke-static {v0, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method private markMessagesAsReadInternal(Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4578
    .local p1, "inbox":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .local p2, "outbox":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .local p3, "encryptedMessages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    .line 4579
    const/4 v2, 0x0

    .local v2, "b":I
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v2, v13, :cond_0

    .line 4580
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 4581
    .local v8, "key":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 4582
    .local v10, "messageId":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v15, "UPDATE messages SET read_state = read_state | 1 WHERE uid = %d AND mid > 0 AND mid <= %d AND read_state IN(0,2) AND out = 0"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4579
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4585
    .end local v2    # "b":I
    .end local v8    # "key":I
    .end local v10    # "messageId":J
    :cond_0
    if-eqz p2, :cond_1

    .line 4586
    const/4 v2, 0x0

    .restart local v2    # "b":I
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v2, v13, :cond_1

    .line 4587
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 4588
    .restart local v8    # "key":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 4589
    .restart local v10    # "messageId":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v15, "UPDATE messages SET read_state = read_state | 1 WHERE uid = %d AND mid > 0 AND mid <= %d AND read_state IN(0,2) AND out = 1"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4586
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4592
    .end local v2    # "b":I
    .end local v8    # "key":I
    .end local v10    # "messageId":J
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    .line 4593
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 4594
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-long v14, v13

    const/16 v13, 0x20

    shl-long v4, v14, v13

    .line 4595
    .local v4, "dialog_id":J
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 4596
    .local v9, "max_date":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v14, "UPDATE messages SET read_state = read_state | 1 WHERE uid = ? AND date <= ? AND read_state IN(0,2) AND out = 1"

    invoke-virtual {v13, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    .line 4597
    .local v12, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 4598
    const/4 v13, 0x1

    invoke-virtual {v12, v13, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4599
    const/4 v13, 0x2

    invoke-virtual {v12, v13, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4600
    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 4601
    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 4604
    .end local v4    # "dialog_id":J
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "max_date":I
    .end local v12    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :catch_0
    move-exception v3

    .line 4605
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "tmessages"

    invoke-static {v13, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4607
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method private putChatsInternal(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3401
    .local p1, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3453
    :cond_0
    :goto_0
    return-void

    .line 3404
    :cond_1
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v9, "REPLACE INTO chats VALUES(?, ?, ?)"

    invoke-virtual {v8, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v7

    .line 3405
    .local v7, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_6

    .line 3406
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3407
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v8, :cond_3

    .line 3408
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v10, "SELECT data FROM chats WHERE uid = %d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v2

    .line 3409
    .local v2, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3411
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v2, v8}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v3

    .line 3412
    .local v3, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v3, :cond_2

    .line 3413
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v3, v8, v9}, Lorg/telegram/tgnet/TLRPC$Chat;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    .line 3414
    .local v6, "oldChat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-virtual {v3}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3415
    if-eqz v6, :cond_2

    .line 3416
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iput-object v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 3417
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iput-object v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 3418
    iget-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    iput-boolean v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    .line 3419
    iget-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    iput-boolean v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    .line 3420
    iget-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    iput-boolean v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    .line 3421
    iget-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    iput-boolean v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    .line 3422
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 3423
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    iput-object v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    .line 3424
    iget v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    or-int/lit8 v8, v8, 0x40

    iput v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3429
    :goto_2
    move-object v1, v6

    .line 3436
    .end local v3    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v6    # "oldChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_2
    :goto_3
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 3438
    .end local v2    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_3
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 3439
    new-instance v3, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v1}, Lorg/telegram/tgnet/TLRPC$Chat;->getObjectSize()I

    move-result v8

    invoke-direct {v3, v8}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 3440
    .restart local v3    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual {v1, v3}, Lorg/telegram/tgnet/TLRPC$Chat;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 3441
    const/4 v8, 0x1

    iget v9, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-virtual {v7, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3442
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 3443
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 3444
    .local v5, "name":Ljava/lang/String;
    const/4 v8, 0x2

    invoke-virtual {v7, v8, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 3448
    .end local v5    # "name":Ljava/lang/String;
    :goto_4
    const/4 v8, 0x3

    invoke-virtual {v7, v8, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 3449
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 3450
    invoke-virtual {v3}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3405
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 3426
    .restart local v2    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v6    # "oldChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_4
    const/4 v8, 0x0

    :try_start_1
    iput-object v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    .line 3427
    iget v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v8, v8, -0x41

    iput v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 3432
    .end local v3    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v6    # "oldChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :catch_0
    move-exception v4

    .line 3433
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "tmessages"

    invoke-static {v8, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 3446
    .end local v2    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v3    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_5
    const/4 v8, 0x2

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    goto :goto_4

    .line 3452
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v3    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_6
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto/16 :goto_0
.end method

.method private putDialogsInternal(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;)V
    .locals 28
    .param p1, "dialogs"    # Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    .prologue
    .line 5516
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 5517
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 5518
    .local v14, "new_dialogMessage":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v6, v0, :cond_0

    .line 5519
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Message;

    .line 5520
    .local v10, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-wide v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5518
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 5523
    .end local v10    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_e

    .line 5524
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v21, v0

    const-string/jumbo v24, "REPLACE INTO messages VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, NULL, ?)"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v15

    .line 5525
    .local v15, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v21, v0

    const-string/jumbo v24, "REPLACE INTO dialogs VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v16

    .line 5526
    .local v16, "state2":Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v21, v0

    const-string/jumbo v24, "REPLACE INTO media_v2 VALUES(?, ?, ?, ?, ?)"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v17

    .line 5527
    .local v17, "state3":Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v21, v0

    const-string/jumbo v24, "REPLACE INTO dialog_settings VALUES(?, ?)"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v18

    .line 5528
    .local v18, "state4":Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v21, v0

    const-string/jumbo v24, "REPLACE INTO messages_holes VALUES(?, ?, ?)"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v19

    .line 5529
    .local v19, "state5":Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v21, v0

    const-string/jumbo v24, "REPLACE INTO media_holes_v2 VALUES(?, ?, ?, ?)"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v20

    .line 5531
    .local v20, "state6":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/4 v6, 0x0

    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v6, v0, :cond_d

    .line 5532
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 5534
    .local v8, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v21, v24, v26

    if-nez v21, :cond_1

    .line 5535
    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v21, v0

    if-eqz v21, :cond_8

    .line 5536
    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    iput-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 5543
    :cond_1
    :goto_2
    const/4 v11, 0x0

    .line 5545
    .local v11, "messageDate":I
    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Message;

    .line 5546
    .restart local v10    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v10, :cond_5

    .line 5547
    iget v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 5549
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/telegram/messenger/MessagesStorage;->isValidKeyboardToSave(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 5550
    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-static {v0, v1, v10}, Lorg/telegram/messenger/query/BotQuery;->putBotKeyboard(JLorg/telegram/tgnet/TLRPC$Message;)V

    .line 5553
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/telegram/messenger/MessagesStorage;->fixUnsupportedMedia(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 5554
    new-instance v7, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v10}, Lorg/telegram/tgnet/TLRPC$Message;->getObjectSize()I

    move-result v21

    move/from16 v0, v21

    invoke-direct {v7, v0}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 5555
    .local v7, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/TLRPC$Message;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 5557
    iget v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v12, v0

    .line 5558
    .local v12, "messageId":J
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v21, v0

    if-eqz v21, :cond_3

    .line 5559
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const/16 v21, 0x20

    shl-long v24, v24, v21

    or-long v12, v12, v24

    .line 5562
    :cond_3
    invoke-virtual {v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 5563
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v15, v0, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5564
    const/16 v21, 0x2

    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v24, v0

    move/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-virtual {v15, v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5565
    const/16 v21, 0x3

    invoke-static {v10}, Lorg/telegram/messenger/MessageObject;->getUnreadFlags(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v24

    move/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5566
    const/16 v21, 0x4

    iget v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    move/from16 v24, v0

    move/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5567
    const/16 v21, 0x5

    iget v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v24, v0

    move/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5568
    const/16 v21, 0x6

    move/from16 v0, v21

    invoke-virtual {v15, v0, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 5569
    const/16 v24, 0x7

    invoke-static {v10}, Lorg/telegram/messenger/MessageObject;->isOut(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v21

    if-eqz v21, :cond_a

    const/16 v21, 0x1

    :goto_3
    move/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5570
    const/16 v21, 0x8

    const/16 v24, 0x0

    move/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5571
    const/16 v24, 0x9

    iget v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    move/from16 v21, v0

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x400

    move/from16 v21, v0

    if-eqz v21, :cond_b

    iget v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    move/from16 v21, v0

    :goto_4
    move/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5572
    const/16 v21, 0xa

    const/16 v24, 0x0

    move/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5573
    invoke-virtual {v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 5575
    invoke-static {v10}, Lorg/telegram/messenger/query/SharedMediaQuery;->canAddMessageToMedia(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 5576
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 5577
    const/16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5578
    const/16 v21, 0x2

    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5579
    const/16 v21, 0x3

    iget v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5580
    const/16 v21, 0x4

    invoke-static {v10}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v24

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5581
    const/16 v21, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 5582
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 5584
    :cond_4
    invoke-virtual {v7}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 5586
    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v24, v0

    iget v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v21, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->createFirstHoles(JLorg/telegram/SQLite/SQLitePreparedStatement;Lorg/telegram/SQLite/SQLitePreparedStatement;I)V

    .line 5589
    .end local v7    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v12    # "messageId":J
    :cond_5
    iget v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    .line 5590
    .local v22, "topMessage":J
    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 5591
    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const/16 v21, 0x20

    shl-long v24, v24, v21

    or-long v22, v22, v24

    .line 5594
    :cond_6
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 5595
    const/16 v21, 0x1

    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v16

    move/from16 v1, v21

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5596
    const/16 v21, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5597
    const/16 v21, 0x3

    iget v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v24, v0

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5598
    const/16 v21, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5599
    const/16 v21, 0x5

    iget v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    move/from16 v24, v0

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5600
    const/16 v21, 0x6

    iget v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    move/from16 v24, v0

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5601
    const/16 v21, 0x7

    const-wide/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5602
    const/16 v21, 0x8

    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5603
    const/16 v21, 0x9

    iget v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pts:I

    move/from16 v24, v0

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5604
    const/16 v21, 0xa

    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5605
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 5607
    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    .line 5608
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 5609
    const/16 v21, 0x1

    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5610
    const/16 v24, 0x2

    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    move/from16 v21, v0

    if-eqz v21, :cond_c

    const/16 v21, 0x1

    :goto_5
    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5611
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 5531
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 5537
    .end local v10    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v11    # "messageDate":I
    .end local v22    # "topMessage":J
    :cond_8
    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    move/from16 v21, v0

    if-eqz v21, :cond_9

    .line 5538
    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    iput-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 5626
    .end local v6    # "a":I
    .end local v8    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v14    # "new_dialogMessage":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v15    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .end local v16    # "state2":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .end local v17    # "state3":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .end local v18    # "state4":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .end local v19    # "state5":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .end local v20    # "state6":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :catch_0
    move-exception v9

    .line 5627
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v21, "tmessages"

    move-object/from16 v0, v21

    invoke-static {v0, v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5629
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_6
    return-void

    .line 5540
    .restart local v6    # "a":I
    .restart local v8    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .restart local v14    # "new_dialogMessage":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    .restart local v15    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .restart local v16    # "state2":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .restart local v17    # "state3":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .restart local v18    # "state4":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .restart local v19    # "state5":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .restart local v20    # "state6":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_9
    :try_start_1
    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    iput-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    goto/16 :goto_2

    .line 5569
    .restart local v7    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v10    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v11    # "messageDate":I
    .restart local v12    # "messageId":J
    :cond_a
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 5571
    :cond_b
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 5610
    .end local v7    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v12    # "messageId":J
    .restart local v22    # "topMessage":J
    :cond_c
    const/16 v21, 0x0

    goto :goto_5

    .line 5614
    .end local v8    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v10    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v11    # "messageDate":I
    .end local v22    # "topMessage":J
    :cond_d
    invoke-virtual {v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5615
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5616
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5617
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5618
    invoke-virtual/range {v19 .. v19}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5619
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5622
    .end local v15    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .end local v16    # "state2":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .end local v17    # "state3":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .end local v18    # "state4":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .end local v19    # "state5":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .end local v20    # "state6":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_e
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->users:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->putUsersInternal(Ljava/util/ArrayList;)V

    .line 5623
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->putChatsInternal(Ljava/util/ArrayList;)V

    .line 5625
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6
.end method

.method private putMessagesInternal(Ljava/util/ArrayList;ZZIZ)V
    .locals 69
    .param p2, "withTransaction"    # Z
    .param p3, "doNotUpdateDialogDate"    # Z
    .param p4, "downloadMask"    # I
    .param p5, "ifNoLastMessage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;ZZIZ)V"
        }
    .end annotation

    .prologue
    .line 3851
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    if-eqz p5, :cond_5

    .line 3852
    const/16 v63, 0x0

    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lorg/telegram/tgnet/TLRPC$Message;

    .line 3853
    .local v28, "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v0, v28

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v64, v0

    const-wide/16 v66, 0x0

    cmp-long v63, v64, v66

    if-nez v63, :cond_0

    .line 3854
    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v63, v0

    if-eqz v63, :cond_3

    .line 3855
    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v63, v0

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    move-wide/from16 v0, v64

    move-object/from16 v2, v28

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 3862
    :cond_0
    :goto_0
    const/16 v29, -0x1

    .line 3863
    .local v29, "lastMid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "SELECT last_mid FROM dialogs WHERE did = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v28

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v66, v0

    move-object/from16 v0, v64

    move-wide/from16 v1, v66

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    const/16 v65, 0x0

    move/from16 v0, v65

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v65, v0

    invoke-virtual/range {v63 .. v65}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v11

    .line 3864
    .local v11, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v63

    if-eqz v63, :cond_1

    .line 3865
    const/16 v63, 0x0

    move/from16 v0, v63

    invoke-virtual {v11, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v29

    .line 3867
    :cond_1
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 3868
    if-eqz v29, :cond_5

    .line 4249
    .end local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v28    # "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v29    # "lastMid":I
    :cond_2
    :goto_1
    return-void

    .line 3856
    .restart local v28    # "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_3
    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    move/from16 v63, v0

    if-eqz v63, :cond_4

    .line 3857
    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    move/from16 v63, v0

    move/from16 v0, v63

    neg-int v0, v0

    move/from16 v63, v0

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    move-wide/from16 v0, v64

    move-object/from16 v2, v28

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4246
    .end local v28    # "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    :catch_0
    move-exception v19

    .line 4247
    .local v19, "e":Ljava/lang/Exception;
    const-string/jumbo v63, "tmessages"

    move-object/from16 v0, v63

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3859
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v28    # "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_4
    :try_start_1
    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v63, v0

    move/from16 v0, v63

    neg-int v0, v0

    move/from16 v63, v0

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    move-wide/from16 v0, v64

    move-object/from16 v2, v28

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto/16 :goto_0

    .line 3872
    .end local v28    # "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_5
    if-eqz p2, :cond_6

    .line 3873
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 3875
    :cond_6
    new-instance v41, Ljava/util/HashMap;

    invoke-direct/range {v41 .. v41}, Ljava/util/HashMap;-><init>()V

    .line 3876
    .local v41, "messagesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    new-instance v39, Ljava/util/HashMap;

    invoke-direct/range {v39 .. v39}, Ljava/util/HashMap;-><init>()V

    .line 3877
    .local v39, "messagesCounts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/16 v32, 0x0

    .line 3878
    .local v32, "mediaCounts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 3880
    .local v5, "botKeyboards":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    const/16 v42, 0x0

    .line 3881
    .local v42, "messagesMediaIdsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    const/16 v38, 0x0

    .line 3882
    .local v38, "messageMediaIds":Ljava/lang/StringBuilder;
    const/16 v33, 0x0

    .line 3883
    .local v33, "mediaTypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    .line 3884
    .local v35, "messageIds":Ljava/lang/StringBuilder;
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 3885
    .local v15, "dialogsReadMax":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    new-instance v40, Ljava/util/HashMap;

    invoke-direct/range {v40 .. v40}, Ljava/util/HashMap;-><init>()V

    .line 3887
    .local v40, "messagesIdsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v63, v0

    const-string/jumbo v64, "REPLACE INTO messages VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, NULL, ?)"

    invoke-virtual/range {v63 .. v64}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v53

    .line 3888
    .local v53, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/16 v54, 0x0

    .line 3889
    .local v54, "state2":Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v63, v0

    const-string/jumbo v64, "REPLACE INTO randoms VALUES(?, ?)"

    invoke-virtual/range {v63 .. v64}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v55

    .line 3890
    .local v55, "state3":Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v63, v0

    const-string/jumbo v64, "REPLACE INTO download_queue VALUES(?, ?, ?, ?)"

    invoke-virtual/range {v63 .. v64}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v56

    .line 3891
    .local v56, "state4":Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v63, v0

    const-string/jumbo v64, "REPLACE INTO webpage_pending VALUES(?, ?)"

    invoke-virtual/range {v63 .. v64}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v57

    .line 3893
    .local v57, "state5":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v63

    move/from16 v0, v63

    if-ge v4, v0, :cond_15

    .line 3894
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lorg/telegram/tgnet/TLRPC$Message;

    .line 3896
    .local v34, "message":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v0, v34

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v63, v0

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v36, v0

    .line 3897
    .local v36, "messageId":J
    move-object/from16 v0, v34

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v64, v0

    const-wide/16 v66, 0x0

    cmp-long v63, v64, v66

    if-nez v63, :cond_7

    .line 3898
    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v63, v0

    if-eqz v63, :cond_12

    .line 3899
    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v63, v0

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    move-wide/from16 v0, v64

    move-object/from16 v2, v34

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 3906
    :cond_7
    :goto_3
    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v63, v0

    if-eqz v63, :cond_8

    .line 3907
    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v63, v0

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    const/16 v63, 0x20

    shl-long v64, v64, v63

    or-long v36, v36, v64

    .line 3910
    :cond_8
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/MessageObject;->isUnread(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v63

    if-eqz v63, :cond_c

    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/MessageObject;->isOut(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v63

    if-nez v63, :cond_c

    .line 3911
    move-object/from16 v0, v34

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v64, v0

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 3912
    .local v10, "currentMaxId":Ljava/lang/Integer;
    if-nez v10, :cond_9

    .line 3913
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "SELECT inbox_max FROM dialogs WHERE did = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v34

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v66, v0

    move-object/from16 v0, v64

    move-wide/from16 v1, v66

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    const/16 v65, 0x0

    move/from16 v0, v65

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v65, v0

    invoke-virtual/range {v63 .. v65}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v11

    .line 3914
    .restart local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v63

    if-eqz v63, :cond_14

    .line 3915
    const/16 v63, 0x0

    move/from16 v0, v63

    invoke-virtual {v11, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v63

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 3919
    :goto_4
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 3920
    move-object/from16 v0, v34

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v64, v0

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v15, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3922
    .end local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_9
    move-object/from16 v0, v34

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v63, v0

    if-ltz v63, :cond_a

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v63

    move-object/from16 v0, v34

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-ge v0, v1, :cond_c

    .line 3923
    :cond_a
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->length()I

    move-result v63

    if-lez v63, :cond_b

    .line 3924
    const-string/jumbo v63, ","

    move-object/from16 v0, v35

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3926
    :cond_b
    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3927
    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v63

    move-object/from16 v0, v34

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v64, v0

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v64

    move-object/from16 v0, v40

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3930
    .end local v10    # "currentMaxId":Ljava/lang/Integer;
    :cond_c
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/query/SharedMediaQuery;->canAddMessageToMedia(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v63

    if-eqz v63, :cond_f

    .line 3931
    if-nez v38, :cond_d

    .line 3932
    new-instance v38, Ljava/lang/StringBuilder;

    .end local v38    # "messageMediaIds":Ljava/lang/StringBuilder;
    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    .line 3933
    .restart local v38    # "messageMediaIds":Ljava/lang/StringBuilder;
    new-instance v42, Ljava/util/HashMap;

    .end local v42    # "messagesMediaIdsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-direct/range {v42 .. v42}, Ljava/util/HashMap;-><init>()V

    .line 3934
    .restart local v42    # "messagesMediaIdsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    new-instance v33, Ljava/util/HashMap;

    .end local v33    # "mediaTypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-direct/range {v33 .. v33}, Ljava/util/HashMap;-><init>()V

    .line 3936
    .restart local v33    # "mediaTypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_d
    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->length()I

    move-result v63

    if-lez v63, :cond_e

    .line 3937
    const-string/jumbo v63, ","

    move-object/from16 v0, v38

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3939
    :cond_e
    move-object/from16 v0, v38

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3940
    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v63

    move-object/from16 v0, v34

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v64, v0

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v64

    move-object/from16 v0, v42

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3941
    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v63

    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v64

    invoke-static/range {v64 .. v64}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    move-object/from16 v0, v33

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3943
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->isValidKeyboardToSave(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v63

    if-eqz v63, :cond_11

    .line 3944
    move-object/from16 v0, v34

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v64, v0

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/telegram/tgnet/TLRPC$Message;

    .line 3945
    .local v46, "oldMessage":Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v46, :cond_10

    move-object/from16 v0, v46

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v63, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-ge v0, v1, :cond_11

    .line 3946
    :cond_10
    move-object/from16 v0, v34

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v64, v0

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v34

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3893
    .end local v46    # "oldMessage":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 3900
    :cond_12
    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    move/from16 v63, v0

    if-eqz v63, :cond_13

    .line 3901
    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    move/from16 v63, v0

    move/from16 v0, v63

    neg-int v0, v0

    move/from16 v63, v0

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    move-wide/from16 v0, v64

    move-object/from16 v2, v34

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto/16 :goto_3

    .line 3903
    :cond_13
    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v63, v0

    move/from16 v0, v63

    neg-int v0, v0

    move/from16 v63, v0

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    move-wide/from16 v0, v64

    move-object/from16 v2, v34

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto/16 :goto_3

    .line 3917
    .restart local v10    # "currentMaxId":Ljava/lang/Integer;
    .restart local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_14
    const/16 v63, 0x0

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto/16 :goto_4

    .line 3951
    .end local v10    # "currentMaxId":Ljava/lang/Integer;
    .end local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v34    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v36    # "messageId":J
    :cond_15
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_16

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    .line 3952
    .local v21, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/lang/Long;

    invoke-virtual/range {v63 .. v63}, Ljava/lang/Long;->longValue()J

    move-result-wide v64

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Lorg/telegram/tgnet/TLRPC$Message;

    move-wide/from16 v0, v64

    move-object/from16 v2, v63

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/query/BotQuery;->putBotKeyboard(JLorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_5

    .line 3955
    .end local v21    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    :cond_16
    if-eqz v38, :cond_1a

    .line 3956
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "SELECT mid FROM media_v2 WHERE mid IN("

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, ")"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    const/16 v65, 0x0

    move/from16 v0, v65

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v65, v0

    invoke-virtual/range {v63 .. v65}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v11

    .line 3957
    .restart local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :goto_6
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v63

    if-eqz v63, :cond_17

    .line 3958
    const/16 v63, 0x0

    move/from16 v0, v63

    invoke-virtual {v11, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v44

    .line 3959
    .local v44, "mid":J
    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v63

    move-object/from16 v0, v42

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 3961
    .end local v44    # "mid":J
    :cond_17
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 3962
    new-instance v32, Ljava/util/HashMap;

    .end local v32    # "mediaCounts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/HashMap;-><init>()V

    .line 3963
    .restart local v32    # "mediaCounts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    invoke-virtual/range {v42 .. v42}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_7
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_1a

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    .line 3964
    .local v20, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v63

    move-object/from16 v0, v33

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Ljava/lang/Integer;

    .line 3965
    .local v58, "type":Ljava/lang/Integer;
    move-object/from16 v0, v32

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 3967
    .local v8, "counts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    if-nez v8, :cond_19

    .line 3968
    new-instance v8, Ljava/util/HashMap;

    .end local v8    # "counts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 3969
    .restart local v8    # "counts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/16 v63, 0x0

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 3970
    .local v7, "count":Ljava/lang/Integer;
    move-object/from16 v0, v32

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3974
    :goto_8
    if-nez v7, :cond_18

    .line 3975
    const/16 v63, 0x0

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 3977
    :cond_18
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v63

    add-int/lit8 v63, v63, 0x1

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 3978
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v8, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 3972
    .end local v7    # "count":Ljava/lang/Integer;
    :cond_19
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .restart local v7    # "count":Ljava/lang/Integer;
    goto :goto_8

    .line 3982
    .end local v7    # "count":Ljava/lang/Integer;
    .end local v8    # "counts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v20    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v58    # "type":Ljava/lang/Integer;
    :cond_1a
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->length()I

    move-result v63

    if-lez v63, :cond_1d

    .line 3983
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "SELECT mid FROM messages WHERE mid IN("

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, ")"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    const/16 v65, 0x0

    move/from16 v0, v65

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v65, v0

    invoke-virtual/range {v63 .. v65}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v11

    .line 3984
    .restart local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :goto_9
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v63

    if-eqz v63, :cond_1b

    .line 3985
    const/16 v63, 0x0

    move/from16 v0, v63

    invoke-virtual {v11, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v64

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v63

    move-object/from16 v0, v40

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 3987
    :cond_1b
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 3988
    invoke-virtual/range {v40 .. v40}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_a
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_1d

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 3989
    .local v14, "dialog_id":Ljava/lang/Long;
    move-object/from16 v0, v39

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 3990
    .restart local v7    # "count":Ljava/lang/Integer;
    if-nez v7, :cond_1c

    .line 3991
    const/16 v63, 0x0

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 3993
    :cond_1c
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v63

    add-int/lit8 v63, v63, 0x1

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 3994
    move-object/from16 v0, v39

    invoke-virtual {v0, v14, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 3998
    .end local v7    # "count":Ljava/lang/Integer;
    .end local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v14    # "dialog_id":Ljava/lang/Long;
    :cond_1d
    const/16 v17, 0x0

    .line 3999
    .local v17, "downloadMediaMask":I
    const/4 v4, 0x0

    :goto_b
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v63

    move/from16 v0, v63

    if-ge v4, v0, :cond_31

    .line 4000
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lorg/telegram/tgnet/TLRPC$Message;

    .line 4001
    .restart local v34    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->fixUnsupportedMedia(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 4003
    invoke-virtual/range {v53 .. v53}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 4004
    move-object/from16 v0, v34

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v63, v0

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v36, v0

    .line 4005
    .restart local v36    # "messageId":J
    move-object/from16 v0, v34

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    move/from16 v63, v0

    if-eqz v63, :cond_1e

    .line 4006
    move-object/from16 v0, v34

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    move/from16 v63, v0

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v36, v0

    .line 4008
    :cond_1e
    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v63, v0

    if-eqz v63, :cond_1f

    .line 4009
    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v63, v0

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    const/16 v63, 0x20

    shl-long v64, v64, v63

    or-long v36, v36, v64

    .line 4012
    :cond_1f
    new-instance v12, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual/range {v34 .. v34}, Lorg/telegram/tgnet/TLRPC$Message;->getObjectSize()I

    move-result v63

    move/from16 v0, v63

    invoke-direct {v12, v0}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 4013
    .local v12, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    move-object/from16 v0, v34

    invoke-virtual {v0, v12}, Lorg/telegram/tgnet/TLRPC$Message;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 4015
    const/16 v62, 0x1

    .line 4016
    .local v62, "updateDialog":Z
    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v63, v0

    if-eqz v63, :cond_20

    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    move/from16 v63, v0

    if-eqz v63, :cond_20

    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    move/from16 v63, v0

    if-nez v63, :cond_20

    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    move/from16 v63, v0

    if-nez v63, :cond_20

    .line 4017
    const/16 v62, 0x0

    .line 4020
    :cond_20
    if-eqz v62, :cond_23

    .line 4021
    move-object/from16 v0, v34

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v64, v0

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v63

    move-object/from16 v0, v41

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lorg/telegram/tgnet/TLRPC$Message;

    .line 4022
    .restart local v28    # "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v28, :cond_22

    move-object/from16 v0, v34

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v63, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-gt v0, v1, :cond_22

    move-object/from16 v0, v34

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v63, v0

    if-lez v63, :cond_21

    move-object/from16 v0, v28

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v63, v0

    if-lez v63, :cond_21

    move-object/from16 v0, v34

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v63, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-gt v0, v1, :cond_22

    :cond_21
    move-object/from16 v0, v34

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v63, v0

    if-gez v63, :cond_23

    move-object/from16 v0, v28

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v63, v0

    if-gez v63, :cond_23

    move-object/from16 v0, v34

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v63, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-ge v0, v1, :cond_23

    .line 4023
    :cond_22
    move-object/from16 v0, v34

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v64, v0

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v63

    move-object/from16 v0, v41

    move-object/from16 v1, v63

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4027
    .end local v28    # "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_23
    const/16 v63, 0x1

    move-object/from16 v0, v53

    move/from16 v1, v63

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4028
    const/16 v63, 0x2

    move-object/from16 v0, v34

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v64, v0

    move-object/from16 v0, v53

    move/from16 v1, v63

    move-wide/from16 v2, v64

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4029
    const/16 v63, 0x3

    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/MessageObject;->getUnreadFlags(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v64

    move-object/from16 v0, v53

    move/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4030
    const/16 v63, 0x4

    move-object/from16 v0, v34

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    move/from16 v64, v0

    move-object/from16 v0, v53

    move/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4031
    const/16 v63, 0x5

    move-object/from16 v0, v34

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v64, v0

    move-object/from16 v0, v53

    move/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4032
    const/16 v63, 0x6

    move-object/from16 v0, v53

    move/from16 v1, v63

    invoke-virtual {v0, v1, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 4033
    const/16 v64, 0x7

    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/MessageObject;->isOut(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v63

    if-eqz v63, :cond_2c

    const/16 v63, 0x1

    :goto_c
    move-object/from16 v0, v53

    move/from16 v1, v64

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4034
    const/16 v63, 0x8

    move-object/from16 v0, v34

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    move/from16 v64, v0

    move-object/from16 v0, v53

    move/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4035
    move-object/from16 v0, v34

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    move/from16 v63, v0

    move/from16 v0, v63

    and-int/lit16 v0, v0, 0x400

    move/from16 v63, v0

    if-eqz v63, :cond_2d

    .line 4036
    const/16 v63, 0x9

    move-object/from16 v0, v34

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    move/from16 v64, v0

    move-object/from16 v0, v53

    move/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4040
    :goto_d
    const/16 v63, 0xa

    const/16 v64, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4041
    invoke-virtual/range {v53 .. v53}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 4043
    move-object/from16 v0, v34

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-wide/from16 v64, v0

    const-wide/16 v66, 0x0

    cmp-long v63, v64, v66

    if-eqz v63, :cond_24

    .line 4044
    invoke-virtual/range {v55 .. v55}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 4045
    const/16 v63, 0x1

    move-object/from16 v0, v34

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-wide/from16 v64, v0

    move-object/from16 v0, v55

    move/from16 v1, v63

    move-wide/from16 v2, v64

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4046
    const/16 v63, 0x2

    move-object/from16 v0, v55

    move/from16 v1, v63

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4047
    invoke-virtual/range {v55 .. v55}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 4050
    :cond_24
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/query/SharedMediaQuery;->canAddMessageToMedia(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v63

    if-eqz v63, :cond_26

    .line 4051
    if-nez v54, :cond_25

    .line 4052
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v63, v0

    const-string/jumbo v64, "REPLACE INTO media_v2 VALUES(?, ?, ?, ?, ?)"

    invoke-virtual/range {v63 .. v64}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v54

    .line 4054
    :cond_25
    invoke-virtual/range {v54 .. v54}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 4055
    const/16 v63, 0x1

    move-object/from16 v0, v54

    move/from16 v1, v63

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4056
    const/16 v63, 0x2

    move-object/from16 v0, v34

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v64, v0

    move-object/from16 v0, v54

    move/from16 v1, v63

    move-wide/from16 v2, v64

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4057
    const/16 v63, 0x3

    move-object/from16 v0, v34

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v64, v0

    move-object/from16 v0, v54

    move/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4058
    const/16 v63, 0x4

    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v64

    move-object/from16 v0, v54

    move/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4059
    const/16 v63, 0x5

    move-object/from16 v0, v54

    move/from16 v1, v63

    invoke-virtual {v0, v1, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 4060
    invoke-virtual/range {v54 .. v54}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 4063
    :cond_26
    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    move/from16 v63, v0

    if-eqz v63, :cond_27

    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_webPagePending;

    move/from16 v63, v0

    if-eqz v63, :cond_27

    .line 4064
    invoke-virtual/range {v57 .. v57}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 4065
    const/16 v63, 0x1

    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    move-wide/from16 v64, v0

    move-object/from16 v0, v57

    move/from16 v1, v63

    move-wide/from16 v2, v64

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4066
    const/16 v63, 0x2

    move-object/from16 v0, v57

    move/from16 v1, v63

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4067
    invoke-virtual/range {v57 .. v57}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 4070
    :cond_27
    invoke-virtual {v12}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 4072
    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v63, v0

    if-eqz v63, :cond_28

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    move/from16 v63, v0

    if-eqz v63, :cond_2b

    :cond_28
    move-object/from16 v0, v34

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v63, v0

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v64

    move/from16 v0, v64

    add-int/lit16 v0, v0, -0xe10

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-lt v0, v1, :cond_2b

    if-eqz p4, :cond_2b

    .line 4073
    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    move/from16 v63, v0

    if-nez v63, :cond_29

    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    move/from16 v63, v0

    if-eqz v63, :cond_2b

    .line 4074
    :cond_29
    const/16 v58, 0x0

    .line 4075
    .local v58, "type":I
    const-wide/16 v24, 0x0

    .line 4076
    .local v24, "id":J
    const/16 v43, 0x0

    .line 4077
    .local v43, "object":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v63

    if-eqz v63, :cond_2e

    .line 4078
    and-int/lit8 v63, p4, 0x2

    if-eqz v63, :cond_2a

    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    move/from16 v63, v0

    const/high16 v64, 0x500000

    move/from16 v0, v63

    move/from16 v1, v64

    if-ge v0, v1, :cond_2a

    .line 4079
    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    move-wide/from16 v24, v0

    .line 4080
    const/16 v58, 0x2

    .line 4081
    new-instance v43, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    .end local v43    # "object":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct/range {v43 .. v43}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    .line 4082
    .restart local v43    # "object":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    const-string/jumbo v63, ""

    move-object/from16 v0, v63

    move-object/from16 v1, v43

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    .line 4083
    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v43

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 4113
    :cond_2a
    :goto_e
    if-eqz v43, :cond_2b

    .line 4114
    or-int v17, v17, v58

    .line 4115
    invoke-virtual/range {v56 .. v56}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 4116
    new-instance v12, Lorg/telegram/tgnet/NativeByteBuffer;

    .end local v12    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual/range {v43 .. v43}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->getObjectSize()I

    move-result v63

    move/from16 v0, v63

    invoke-direct {v12, v0}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 4117
    .restart local v12    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    move-object/from16 v0, v43

    invoke-virtual {v0, v12}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 4118
    const/16 v63, 0x1

    move-object/from16 v0, v56

    move/from16 v1, v63

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4119
    const/16 v63, 0x2

    move-object/from16 v0, v56

    move/from16 v1, v63

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4120
    const/16 v63, 0x3

    move-object/from16 v0, v34

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v64, v0

    move-object/from16 v0, v56

    move/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4121
    const/16 v63, 0x4

    move-object/from16 v0, v56

    move/from16 v1, v63

    invoke-virtual {v0, v1, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 4122
    invoke-virtual/range {v56 .. v56}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 4123
    invoke-virtual {v12}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3999
    .end local v24    # "id":J
    .end local v43    # "object":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    .end local v58    # "type":I
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_b

    .line 4033
    :cond_2c
    const/16 v63, 0x0

    goto/16 :goto_c

    .line 4038
    :cond_2d
    const/16 v63, 0x9

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->getMessageMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v64

    move-object/from16 v0, v53

    move/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    goto/16 :goto_d

    .line 4085
    .restart local v24    # "id":J
    .restart local v43    # "object":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    .restart local v58    # "type":I
    :cond_2e
    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    move/from16 v63, v0

    if-eqz v63, :cond_2f

    .line 4086
    and-int/lit8 v63, p4, 0x1

    if-eqz v63, :cond_2a

    .line 4087
    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v64

    invoke-static/range {v63 .. v64}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v51

    .line 4088
    .local v51, "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v51, :cond_2a

    .line 4089
    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    move-wide/from16 v24, v0

    .line 4090
    const/16 v58, 0x1

    .line 4091
    new-instance v43, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    .end local v43    # "object":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct/range {v43 .. v43}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;-><init>()V

    .line 4092
    .restart local v43    # "object":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    const-string/jumbo v63, ""

    move-object/from16 v0, v63

    move-object/from16 v1, v43

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    .line 4093
    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v43

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto/16 :goto_e

    .line 4096
    .end local v51    # "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_2f
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v63

    if-eqz v63, :cond_30

    .line 4097
    and-int/lit8 v63, p4, 0x4

    if-eqz v63, :cond_2a

    .line 4098
    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    move-wide/from16 v24, v0

    .line 4099
    const/16 v58, 0x4

    .line 4100
    new-instance v43, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    .end local v43    # "object":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct/range {v43 .. v43}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    .line 4101
    .restart local v43    # "object":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    const-string/jumbo v63, ""

    move-object/from16 v0, v63

    move-object/from16 v1, v43

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    .line 4102
    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v43

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    goto/16 :goto_e

    .line 4104
    :cond_30
    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    move/from16 v63, v0

    if-eqz v63, :cond_2a

    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/MessageObject;->isMusicMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v63

    if-nez v63, :cond_2a

    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v63

    if-nez v63, :cond_2a

    .line 4105
    and-int/lit8 v63, p4, 0x8

    if-eqz v63, :cond_2a

    .line 4106
    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    move-wide/from16 v24, v0

    .line 4107
    const/16 v58, 0x8

    .line 4108
    new-instance v43, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    .end local v43    # "object":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct/range {v43 .. v43}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    .line 4109
    .restart local v43    # "object":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    const-string/jumbo v63, ""

    move-object/from16 v0, v63

    move-object/from16 v1, v43

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    .line 4110
    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v43

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    goto/16 :goto_e

    .line 4128
    .end local v12    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v24    # "id":J
    .end local v34    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v36    # "messageId":J
    .end local v43    # "object":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    .end local v58    # "type":I
    .end local v62    # "updateDialog":Z
    :cond_31
    invoke-virtual/range {v53 .. v53}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4129
    if-eqz v54, :cond_32

    .line 4130
    invoke-virtual/range {v54 .. v54}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4132
    :cond_32
    invoke-virtual/range {v55 .. v55}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4133
    invoke-virtual/range {v56 .. v56}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4134
    invoke-virtual/range {v57 .. v57}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4136
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v63, v0

    const-string/jumbo v64, "REPLACE INTO dialogs VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual/range {v63 .. v64}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v53

    .line 4137
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 4138
    .local v16, "dids":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v0, v16

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 4140
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_33
    :goto_f
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_3e

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/util/Map$Entry;

    .line 4141
    .local v50, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-interface/range {v50 .. v50}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Long;

    .line 4142
    .local v27, "key":Ljava/lang/Long;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v64

    const-wide/16 v66, 0x0

    cmp-long v63, v64, v66

    if-eqz v63, :cond_33

    .line 4145
    move-object/from16 v0, v41

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lorg/telegram/tgnet/TLRPC$Message;

    .line 4147
    .restart local v34    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    const/4 v6, 0x0

    .line 4148
    .local v6, "channelId":I
    if-eqz v34, :cond_34

    .line 4149
    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    .line 4152
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "SELECT date, unread_count, pts, last_mid, inbox_max, outbox_max FROM dialogs WHERE did = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    const/16 v65, 0x0

    move/from16 v0, v65

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v65, v0

    invoke-virtual/range {v63 .. v65}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v11

    .line 4153
    .restart local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    const/4 v13, 0x0

    .line 4154
    .local v13, "dialog_date":I
    const/16 v30, 0x0

    .line 4155
    .local v30, "last_mid":I
    const/16 v47, 0x0

    .line 4156
    .local v47, "old_unread_count":I
    if-eqz v6, :cond_39

    const/16 v52, 0x1

    .line 4157
    .local v52, "pts":I
    :goto_10
    const/16 v26, 0x0

    .line 4158
    .local v26, "inbox_max":I
    const/16 v48, 0x0

    .line 4159
    .local v48, "outbox_max":I
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v63

    if-eqz v63, :cond_3a

    .line 4160
    const/16 v63, 0x0

    move/from16 v0, v63

    invoke-virtual {v11, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v13

    .line 4161
    const/16 v63, 0x1

    move/from16 v0, v63

    invoke-virtual {v11, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v47

    .line 4162
    const/16 v63, 0x2

    move/from16 v0, v63

    invoke-virtual {v11, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v52

    .line 4163
    const/16 v63, 0x3

    move/from16 v0, v63

    invoke-virtual {v11, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v30

    .line 4164
    const/16 v63, 0x4

    move/from16 v0, v63

    invoke-virtual {v11, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v26

    .line 4165
    const/16 v63, 0x5

    move/from16 v0, v63

    invoke-virtual {v11, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v48

    .line 4169
    :cond_35
    :goto_11
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4171
    move-object/from16 v0, v39

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/Integer;

    .line 4172
    .local v59, "unread_count":Ljava/lang/Integer;
    if-nez v59, :cond_3b

    .line 4173
    const/16 v63, 0x0

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    .line 4177
    :goto_12
    if-eqz v34, :cond_3c

    move-object/from16 v0, v34

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v63, v0

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v36, v0

    .line 4178
    .restart local v36    # "messageId":J
    :goto_13
    if-eqz v34, :cond_36

    .line 4179
    move-object/from16 v0, v34

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    move/from16 v63, v0

    if-eqz v63, :cond_36

    .line 4180
    move-object/from16 v0, v34

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    move/from16 v63, v0

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v36, v0

    .line 4184
    :cond_36
    if-eqz v6, :cond_37

    .line 4185
    int-to-long v0, v6

    move-wide/from16 v64, v0

    const/16 v63, 0x20

    shl-long v64, v64, v63

    or-long v36, v36, v64

    .line 4188
    :cond_37
    invoke-virtual/range {v53 .. v53}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 4189
    const/16 v63, 0x1

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v64

    move-object/from16 v0, v53

    move/from16 v1, v63

    move-wide/from16 v2, v64

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4190
    if-eqz v34, :cond_3d

    if-eqz p3, :cond_38

    if-nez v13, :cond_3d

    .line 4191
    :cond_38
    const/16 v63, 0x2

    move-object/from16 v0, v34

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v64, v0

    move-object/from16 v0, v53

    move/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4195
    :goto_14
    const/16 v63, 0x3

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Integer;->intValue()I

    move-result v64

    add-int v64, v64, v47

    move-object/from16 v0, v53

    move/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4196
    const/16 v63, 0x4

    move-object/from16 v0, v53

    move/from16 v1, v63

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4197
    const/16 v63, 0x5

    move-object/from16 v0, v53

    move/from16 v1, v63

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4198
    const/16 v63, 0x6

    move-object/from16 v0, v53

    move/from16 v1, v63

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4199
    const/16 v63, 0x7

    const-wide/16 v64, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v63

    move-wide/from16 v2, v64

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4200
    const/16 v63, 0x8

    const/16 v64, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4201
    const/16 v63, 0x9

    move-object/from16 v0, v53

    move/from16 v1, v63

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4202
    const/16 v63, 0xa

    const/16 v64, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4203
    invoke-virtual/range {v53 .. v53}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    goto/16 :goto_f

    .line 4156
    .end local v26    # "inbox_max":I
    .end local v36    # "messageId":J
    .end local v48    # "outbox_max":I
    .end local v52    # "pts":I
    .end local v59    # "unread_count":Ljava/lang/Integer;
    :cond_39
    const/16 v52, 0x0

    goto/16 :goto_10

    .line 4166
    .restart local v26    # "inbox_max":I
    .restart local v48    # "outbox_max":I
    .restart local v52    # "pts":I
    :cond_3a
    if-eqz v6, :cond_35

    .line 4167
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/MessagesController;->checkChannelInviter(I)V

    goto/16 :goto_11

    .line 4175
    .restart local v59    # "unread_count":Ljava/lang/Integer;
    :cond_3b
    invoke-virtual/range {v59 .. v59}, Ljava/lang/Integer;->intValue()I

    move-result v63

    add-int v63, v63, v47

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    move-object/from16 v0, v39

    move-object/from16 v1, v27

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_12

    .line 4177
    :cond_3c
    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v36, v0

    goto/16 :goto_13

    .line 4193
    .restart local v36    # "messageId":J
    :cond_3d
    const/16 v63, 0x2

    move-object/from16 v0, v53

    move/from16 v1, v63

    invoke-virtual {v0, v1, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    goto/16 :goto_14

    .line 4205
    .end local v6    # "channelId":I
    .end local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v13    # "dialog_date":I
    .end local v26    # "inbox_max":I
    .end local v27    # "key":Ljava/lang/Long;
    .end local v30    # "last_mid":I
    .end local v34    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v36    # "messageId":J
    .end local v47    # "old_unread_count":I
    .end local v48    # "outbox_max":I
    .end local v50    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v52    # "pts":I
    .end local v59    # "unread_count":Ljava/lang/Integer;
    :cond_3e
    invoke-virtual/range {v53 .. v53}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4207
    if-eqz v32, :cond_43

    .line 4208
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v63, v0

    const-string/jumbo v64, "REPLACE INTO media_counts_v2 VALUES(?, ?, ?)"

    invoke-virtual/range {v63 .. v64}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v55

    .line 4209
    invoke-virtual/range {v32 .. v32}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .end local v22    # "i$":Ljava/util/Iterator;
    :cond_3f
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_42

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 4210
    .local v9, "counts":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Ljava/lang/Integer;

    .line 4211
    .local v58, "type":Ljava/lang/Integer;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/HashMap;

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :cond_40
    :goto_15
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_3f

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/util/Map$Entry;

    .line 4212
    .local v49, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-interface/range {v49 .. v49}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/lang/Long;

    invoke-virtual/range {v63 .. v63}, Ljava/lang/Long;->longValue()J

    move-result-wide v60

    .line 4213
    .local v60, "uid":J
    move-wide/from16 v0, v60

    long-to-int v0, v0

    move/from16 v31, v0

    .line 4214
    .local v31, "lower_part":I
    const/4 v7, -0x1

    .line 4215
    .local v7, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v63, v0

    sget-object v64, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v65, "SELECT count FROM media_counts_v2 WHERE uid = %d AND type = %d LIMIT 1"

    const/16 v66, 0x2

    move/from16 v0, v66

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v68

    aput-object v68, v66, v67

    const/16 v67, 0x1

    aput-object v58, v66, v67

    invoke-static/range {v64 .. v66}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v64

    const/16 v65, 0x0

    move/from16 v0, v65

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v65, v0

    invoke-virtual/range {v63 .. v65}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v11

    .line 4216
    .restart local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v63

    if-eqz v63, :cond_41

    .line 4217
    const/16 v63, 0x0

    move/from16 v0, v63

    invoke-virtual {v11, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    .line 4219
    :cond_41
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4220
    const/16 v63, -0x1

    move/from16 v0, v63

    if-eq v7, v0, :cond_40

    .line 4221
    invoke-virtual/range {v55 .. v55}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 4222
    invoke-interface/range {v49 .. v49}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/lang/Integer;

    invoke-virtual/range {v63 .. v63}, Ljava/lang/Integer;->intValue()I

    move-result v63

    add-int v7, v7, v63

    .line 4223
    const/16 v63, 0x1

    move-object/from16 v0, v55

    move/from16 v1, v63

    move-wide/from16 v2, v60

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4224
    const/16 v63, 0x2

    invoke-virtual/range {v58 .. v58}, Ljava/lang/Integer;->intValue()I

    move-result v64

    move-object/from16 v0, v55

    move/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4225
    const/16 v63, 0x3

    move-object/from16 v0, v55

    move/from16 v1, v63

    invoke-virtual {v0, v1, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4226
    invoke-virtual/range {v55 .. v55}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    goto/16 :goto_15

    .line 4230
    .end local v7    # "count":I
    .end local v9    # "counts":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    .end local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v31    # "lower_part":I
    .end local v49    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v58    # "type":Ljava/lang/Integer;
    .end local v60    # "uid":J
    :cond_42
    invoke-virtual/range {v55 .. v55}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4232
    :cond_43
    if-eqz p2, :cond_44

    .line 4233
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    .line 4235
    :cond_44
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->processDialogsUpdateRead(Ljava/util/HashMap;)V

    .line 4237
    if-eqz v17, :cond_2

    .line 4238
    move/from16 v18, v17

    .line 4239
    .local v18, "downloadMediaMaskFinal":I
    new-instance v63, Lorg/telegram/messenger/MessagesStorage$66;

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage$66;-><init>(Lorg/telegram/messenger/MessagesStorage;I)V

    invoke-static/range {v63 .. v63}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private putUsersAndChatsInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 2
    .param p3, "withTransaction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 3544
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .local p2, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    if-eqz p3, :cond_0

    .line 3545
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 3547
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesStorage;->putUsersInternal(Ljava/util/ArrayList;)V

    .line 3548
    invoke-direct {p0, p2}, Lorg/telegram/messenger/MessagesStorage;->putChatsInternal(Ljava/util/ArrayList;)V

    .line 3549
    if-eqz p3, :cond_1

    .line 3550
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3555
    :cond_1
    :goto_0
    return-void

    .line 3552
    :catch_0
    move-exception v0

    .line 3553
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private putUsersInternal(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3338
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3398
    :cond_0
    :goto_0
    return-void

    .line 3341
    :cond_1
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v8, "REPLACE INTO users VALUES(?, ?, ?, ?)"

    invoke-virtual {v7, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    .line 3342
    .local v5, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_a

    .line 3343
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$User;

    .line 3344
    .local v6, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v7, :cond_3

    .line 3345
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v9, "SELECT data FROM users WHERE uid = %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v6, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1

    .line 3346
    .local v1, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3348
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v1, v7}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v2

    .line 3349
    .local v2, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v2, :cond_2

    .line 3350
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v2, v7, v8}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 3351
    .local v4, "oldUser":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3352
    if-eqz v4, :cond_2

    .line 3353
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 3354
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 3355
    iget v7, v4, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    or-int/lit8 v7, v7, 0x8

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 3360
    :goto_2
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v7, :cond_6

    .line 3361
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 3362
    iget v7, v4, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    or-int/lit8 v7, v7, 0x20

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$User;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3367
    :goto_3
    move-object v6, v4

    .line 3374
    .end local v2    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v4    # "oldUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    :goto_4
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 3376
    .end local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_3
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 3377
    new-instance v2, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v6}, Lorg/telegram/tgnet/TLRPC$User;->getObjectSize()I

    move-result v7

    invoke-direct {v2, v7}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 3378
    .restart local v2    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual {v6, v2}, Lorg/telegram/tgnet/TLRPC$User;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 3379
    const/4 v7, 0x1

    iget v8, v6, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v5, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3380
    const/4 v7, 0x2

    invoke-direct {p0, v6}, Lorg/telegram/messenger/MessagesStorage;->formatUserSearchName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 3381
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v7, :cond_9

    .line 3382
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_userStatusRecently;

    if-eqz v7, :cond_7

    .line 3383
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    const/16 v8, -0x64

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 3389
    :cond_4
    :goto_5
    const/4 v7, 0x3

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    invoke-virtual {v5, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3393
    :goto_6
    const/4 v7, 0x4

    invoke-virtual {v5, v7, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 3394
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 3395
    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3342
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 3357
    .restart local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v4    # "oldUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_5
    const/4 v7, 0x0

    :try_start_1
    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 3358
    iget v7, v4, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v7, v7, -0x9

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$User;->flags:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 3370
    .end local v2    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v4    # "oldUser":Lorg/telegram/tgnet/TLRPC$User;
    :catch_0
    move-exception v3

    .line 3371
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "tmessages"

    invoke-static {v7, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 3364
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v4    # "oldUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_6
    const/4 v7, 0x0

    :try_start_2
    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 3365
    iget v7, v4, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v7, v7, -0x21

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$User;->flags:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 3384
    .end local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v4    # "oldUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_7
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_userStatusLastWeek;

    if-eqz v7, :cond_8

    .line 3385
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    const/16 v8, -0x65

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_5

    .line 3386
    :cond_8
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_userStatusLastMonth;

    if-eqz v7, :cond_4

    .line 3387
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    const/16 v8, -0x66

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_5

    .line 3391
    :cond_9
    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    goto :goto_6

    .line 3397
    .end local v2    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_a
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto/16 :goto_0
.end method

.method private updateDialogsWithDeletedMessagesInternal(Ljava/util/ArrayList;I)V
    .locals 28
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
    .line 4754
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->getId()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/DispatchQueue;->getId()J

    move-result-wide v26

    cmp-long v23, v24, v26

    if-eqz v23, :cond_0

    .line 4755
    new-instance v23, Ljava/lang/RuntimeException;

    const-string/jumbo v24, "wrong db thread"

    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 4759
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_8

    .line 4761
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 4762
    .local v11, "dialogsToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz p2, :cond_1

    .line 4763
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4764
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v23, v0

    const-string/jumbo v24, "UPDATE dialogs SET last_mid = (SELECT mid FROM messages WHERE uid = ? AND date = (SELECT MAX(date) FROM messages WHERE uid = ? )) WHERE did = ?"

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v21

    .line 4774
    .local v21, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 4775
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v4, v0, :cond_4

    .line 4776
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 4777
    .local v12, "did":J
    invoke-virtual/range {v21 .. v21}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 4778
    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4779
    const/16 v23, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4780
    const/16 v23, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4781
    invoke-virtual/range {v21 .. v21}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 4775
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4766
    .end local v4    # "a":I
    .end local v12    # "did":J
    .end local v21    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_1
    const-string/jumbo v23, ","

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v18

    .line 4767
    .local v18, "ids":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v23, v0

    sget-object v24, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v25, "SELECT did FROM dialogs WHERE last_mid IN(%s)"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v18, v26, v27

    invoke-static/range {v24 .. v26}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    .line 4768
    .local v6, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :goto_2
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 4769
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 4868
    .end local v6    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v11    # "dialogsToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v18    # "ids":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 4869
    .local v14, "e":Ljava/lang/Exception;
    const-string/jumbo v23, "tmessages"

    move-object/from16 v0, v23

    invoke-static {v0, v14}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4871
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    return-void

    .line 4771
    .restart local v6    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v11    # "dialogsToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v18    # "ids":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4772
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v23, v0

    const-string/jumbo v24, "UPDATE dialogs SET unread_count = 0, unread_count_i = 0, last_mid = (SELECT mid FROM messages WHERE uid = ? AND date = (SELECT MAX(date) FROM messages WHERE uid = ? AND date != 0)) WHERE did = ?"

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v21

    .restart local v21    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    goto/16 :goto_0

    .line 4783
    .end local v6    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v18    # "ids":Ljava/lang/String;
    .restart local v4    # "a":I
    :cond_4
    invoke-virtual/range {v21 .. v21}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4784
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    .line 4786
    const-string/jumbo v23, ","

    move-object/from16 v0, v23

    invoke-static {v0, v11}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v18

    .line 4791
    .end local v4    # "a":I
    .end local v11    # "dialogsToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v21    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .restart local v18    # "ids":Ljava/lang/String;
    :goto_4
    new-instance v10, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;-><init>()V

    .line 4792
    .local v10, "dialogs":Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 4793
    .local v15, "encryptedChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 4794
    .local v22, "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4795
    .local v5, "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 4796
    .local v16, "encryptedToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v23, v0

    sget-object v24, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v25, "SELECT d.did, d.last_mid, d.unread_count, d.date, m.data, m.read_state, m.mid, m.send_state, m.date, d.pts, d.inbox_max, d.outbox_max FROM dialogs as d LEFT JOIN messages as m ON d.last_mid = m.mid WHERE d.did IN(%s)"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v18, v26, v27

    invoke-static/range {v24 .. v26}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    .line 4797
    .restart local v6    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_5
    :goto_5
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v23

    if-eqz v23, :cond_d

    .line 4798
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 4799
    .local v9, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v24

    move-wide/from16 v0, v24

    iput-wide v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 4800
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v23

    move/from16 v0, v23

    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    .line 4801
    const/16 v23, 0xa

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v23

    move/from16 v0, v23

    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    .line 4802
    const/16 v23, 0xb

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v23

    move/from16 v0, v23

    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    .line 4803
    const/16 v23, 0x2

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v23

    move/from16 v0, v23

    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    .line 4804
    const/16 v23, 0x3

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v23

    move/from16 v0, v23

    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    .line 4805
    const/16 v23, 0x9

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v23

    move/from16 v0, v23

    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pts:I

    .line 4806
    if-nez p2, :cond_9

    const/16 v23, 0x0

    :goto_6
    move/from16 v0, v23

    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->flags:I

    .line 4808
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4810
    const/16 v23, 0x4

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v7

    .line 4811
    .local v7, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v7, :cond_7

    .line 4812
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v23

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v7, v0, v1}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v20

    .line 4813
    .local v20, "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v7}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 4814
    const/16 v23, 0x5

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v23

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessageObject;->setUnreadFlags(Lorg/telegram/tgnet/TLRPC$Message;I)V

    .line 4815
    const/16 v23, 0x6

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4816
    const/16 v23, 0x7

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 4817
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v8

    .line 4818
    .local v8, "date":I
    if-eqz v8, :cond_6

    .line 4819
    iput v8, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    .line 4821
    :cond_6
    iget-wide v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v20

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 4822
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4824
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 4827
    .end local v8    # "date":I
    .end local v20    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_7
    iget-wide v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v19, v0

    .line 4828
    .local v19, "lower_id":I
    iget-wide v0, v9, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v24, v0

    const/16 v23, 0x20

    shr-long v24, v24, v23

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v17, v0

    .line 4829
    .local v17, "high_id":I
    if-eqz v19, :cond_c

    .line 4830
    const/16 v23, 0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 4831
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_5

    .line 4832
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 4788
    .end local v5    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v7    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v9    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v10    # "dialogs":Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
    .end local v15    # "encryptedChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    .end local v16    # "encryptedToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v17    # "high_id":I
    .end local v18    # "ids":Ljava/lang/String;
    .end local v19    # "lower_id":I
    .end local v22    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_8
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "ids":Ljava/lang/String;
    goto/16 :goto_4

    .line 4806
    .restart local v5    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v6    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v9    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .restart local v10    # "dialogs":Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
    .restart local v15    # "encryptedChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    .restart local v16    # "encryptedToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v22    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_9
    const/16 v23, 0x1

    goto/16 :goto_6

    .line 4835
    .restart local v7    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v17    # "high_id":I
    .restart local v19    # "lower_id":I
    :cond_a
    if-lez v19, :cond_b

    .line 4836
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_5

    .line 4837
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 4840
    :cond_b
    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_5

    .line 4841
    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 4846
    :cond_c
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_5

    .line 4847
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 4851
    .end local v7    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v9    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v17    # "high_id":I
    .end local v19    # "lower_id":I
    :cond_d
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4853
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_e

    .line 4854
    const-string/jumbo v23, ","

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v15, v2}, Lorg/telegram/messenger/MessagesStorage;->getEncryptedChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 4857
    :cond_e
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_f

    .line 4858
    const-string/jumbo v23, ","

    move-object/from16 v0, v23

    invoke-static {v0, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v23

    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4861
    :cond_f
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_10

    .line 4862
    const-string/jumbo v23, ","

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v23

    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->users:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4865
    :cond_10
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_11

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_2

    .line 4866
    :cond_11
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10, v15}, Lorg/telegram/messenger/MessagesController;->processDialogsUpdate(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method private updateDialogsWithReadMessagesInternal(Ljava/util/ArrayList;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1544
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "inbox":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .local p3, "outbox":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    :try_start_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1546
    .local v8, "dialogsToUpdate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_5

    .line 1547
    const-string/jumbo v19, ","

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v12

    .line 1548
    .local v12, "ids":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v19, v0

    sget-object v22, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v23, "SELECT uid, read_state, out FROM messages WHERE mid IN(%s)"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v12, v24, v25

    invoke-static/range {v22 .. v24}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    .line 1549
    .local v7, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_0
    :goto_0
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1550
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v16

    .line 1551
    .local v16, "out":I
    if-nez v16, :cond_0

    .line 1554
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v17

    .line 1555
    .local v17, "read_state":I
    if-nez v17, :cond_0

    .line 1558
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v20

    .line 1559
    .local v20, "uid":J
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1560
    .local v6, "currentCount":Ljava/lang/Integer;
    if-nez v6, :cond_2

    .line 1561
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1619
    .end local v6    # "currentCount":Ljava/lang/Integer;
    .end local v7    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v8    # "dialogsToUpdate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v12    # "ids":Ljava/lang/String;
    .end local v16    # "out":I
    .end local v17    # "read_state":I
    .end local v20    # "uid":J
    :catch_0
    move-exception v9

    .line 1620
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v19, "tmessages"

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1622
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void

    .line 1563
    .restart local v6    # "currentCount":Ljava/lang/Integer;
    .restart local v7    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v8    # "dialogsToUpdate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v12    # "ids":Ljava/lang/String;
    .restart local v16    # "out":I
    .restart local v17    # "read_state":I
    .restart local v20    # "uid":J
    :cond_2
    :try_start_1
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1566
    .end local v6    # "currentCount":Ljava/lang/Integer;
    .end local v16    # "out":I
    .end local v17    # "read_state":I
    .end local v20    # "uid":J
    :cond_3
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 1603
    .end local v7    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v12    # "ids":Ljava/lang/String;
    :cond_4
    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_9

    .line 1604
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 1605
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v19, v0

    const-string/jumbo v22, "UPDATE dialogs SET unread_count = ? WHERE did = ?"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v18

    .line 1606
    .local v18, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 1607
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 1608
    const/16 v22, 0x1

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1609
    const/16 v22, 0x2

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, v18

    move/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 1610
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    goto :goto_2

    .line 1568
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v18    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_5
    if-eqz p2, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/util/SparseArray;->size()I

    move-result v19

    if-eqz v19, :cond_7

    .line 1569
    const/4 v4, 0x0

    .local v4, "b":I
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/util/SparseArray;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v4, v0, :cond_7

    .line 1570
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 1571
    .local v13, "key":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1572
    .local v14, "messageId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v19, v0

    sget-object v22, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v23, "SELECT COUNT(mid) FROM messages WHERE uid = %d AND mid > %d AND read_state IN(0,2) AND out = 0"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    .line 1573
    .restart local v7    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 1574
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    .line 1575
    .local v5, "count":I
    int-to-long v0, v13

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1577
    .end local v5    # "count":I
    :cond_6
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 1579
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v19, v0

    const-string/jumbo v22, "UPDATE dialogs SET inbox_max = max((SELECT inbox_max FROM dialogs WHERE did = ?), ?) WHERE did = ?"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v18

    .line 1580
    .restart local v18    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 1581
    const/16 v19, 0x1

    int-to-long v0, v13

    move-wide/from16 v22, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 1582
    const/16 v19, 0x2

    long-to-int v0, v14

    move/from16 v22, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1583
    const/16 v19, 0x3

    int-to-long v0, v13

    move-wide/from16 v22, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 1584
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 1585
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1569
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 1588
    .end local v4    # "b":I
    .end local v7    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v13    # "key":I
    .end local v14    # "messageId":J
    .end local v18    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_7
    if-eqz p3, :cond_4

    invoke-virtual/range {p3 .. p3}, Landroid/util/SparseArray;->size()I

    move-result v19

    if-eqz v19, :cond_4

    .line 1589
    const/4 v4, 0x0

    .restart local v4    # "b":I
    :goto_4
    invoke-virtual/range {p3 .. p3}, Landroid/util/SparseArray;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v4, v0, :cond_4

    .line 1590
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 1591
    .restart local v13    # "key":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1592
    .restart local v14    # "messageId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v19, v0

    const-string/jumbo v22, "UPDATE dialogs SET outbox_max = max((SELECT outbox_max FROM dialogs WHERE did = ?), ?) WHERE did = ?"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v18

    .line 1593
    .restart local v18    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 1594
    const/16 v19, 0x1

    int-to-long v0, v13

    move-wide/from16 v22, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 1595
    const/16 v19, 0x2

    long-to-int v0, v14

    move/from16 v22, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1596
    const/16 v19, 0x3

    int-to-long v0, v13

    move-wide/from16 v22, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 1597
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 1598
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1589
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1612
    .end local v4    # "b":I
    .end local v13    # "key":I
    .end local v14    # "messageId":J
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_8
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1613
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    .line 1616
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v18    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_9
    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_1

    .line 1617
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/MessagesController;->processDialogsUpdateRead(Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private updateMessageStateAndIdInternal(JLjava/lang/Integer;III)[J
    .locals 19
    .param p1, "random_id"    # J
    .param p3, "_oldId"    # Ljava/lang/Integer;
    .param p4, "newId"    # I
    .param p5, "date"    # I
    .param p6, "channelId"    # I

    .prologue
    .line 4362
    const/4 v2, 0x0

    .line 4364
    .local v2, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    move/from16 v0, p4

    int-to-long v8, v0

    .line 4366
    .local v8, "newMessageId":J
    if-nez p3, :cond_3

    .line 4368
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "SELECT mid FROM randoms WHERE random_id = %d LIMIT 1"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v12, v13, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v2

    .line 4369
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 4370
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p3

    .line 4375
    :cond_0
    if-eqz v2, :cond_1

    .line 4376
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4379
    :cond_1
    :goto_0
    if-nez p3, :cond_3

    .line 4380
    const/4 v12, 0x0

    .line 4474
    :goto_1
    return-object v12

    .line 4372
    :catch_0
    move-exception v3

    .line 4373
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v12, "tmessages"

    invoke-static {v12, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4375
    if-eqz v2, :cond_1

    .line 4376
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_0

    .line 4375
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    if-eqz v2, :cond_2

    .line 4376
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_2
    throw v12

    .line 4383
    :cond_3
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v10, v12

    .line 4384
    .local v10, "oldMessageId":J
    if-eqz p6, :cond_4

    .line 4385
    move/from16 v0, p6

    int-to-long v12, v0

    const/16 v14, 0x20

    shl-long/2addr v12, v14

    or-long/2addr v10, v12

    .line 4386
    move/from16 v0, p6

    int-to-long v12, v0

    const/16 v14, 0x20

    shl-long/2addr v12, v14

    or-long/2addr v8, v12

    .line 4389
    :cond_4
    const-wide/16 v4, 0x0

    .line 4391
    .local v4, "did":J
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "SELECT uid FROM messages WHERE mid = %d LIMIT 1"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v12, v13, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v2

    .line 4392
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 4393
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v4

    .line 4398
    :cond_5
    if-eqz v2, :cond_6

    .line 4399
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4403
    :cond_6
    :goto_2
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-nez v12, :cond_8

    .line 4404
    const/4 v12, 0x0

    goto :goto_1

    .line 4395
    :catch_1
    move-exception v3

    .line 4396
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v12, "tmessages"

    invoke-static {v12, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4398
    if-eqz v2, :cond_6

    .line 4399
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_2

    .line 4398
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v12

    if-eqz v2, :cond_7

    .line 4399
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_7
    throw v12

    .line 4406
    :cond_8
    cmp-long v12, v10, v8

    if-nez v12, :cond_b

    if-eqz p5, :cond_b

    .line 4407
    const/4 v7, 0x0

    .line 4409
    .local v7, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v13, "UPDATE messages SET send_state = 0, date = ? WHERE mid = ?"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v7

    .line 4410
    const/4 v12, 0x1

    move/from16 v0, p5

    invoke-virtual {v7, v12, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4411
    const/4 v12, 0x2

    invoke-virtual {v7, v12, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4412
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 4416
    if-eqz v7, :cond_9

    .line 4417
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4421
    :cond_9
    :goto_3
    const/4 v12, 0x2

    new-array v12, v12, [J

    const/4 v13, 0x0

    aput-wide v4, v12, v13

    const/4 v13, 0x1

    move/from16 v0, p4

    int-to-long v14, v0

    aput-wide v14, v12, v13

    goto/16 :goto_1

    .line 4413
    :catch_2
    move-exception v3

    .line 4414
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v12, "tmessages"

    invoke-static {v12, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 4416
    if-eqz v7, :cond_9

    .line 4417
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_3

    .line 4416
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v12

    if-eqz v7, :cond_a

    .line 4417
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_a
    throw v12

    .line 4423
    .end local v7    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_b
    const/4 v7, 0x0

    .line 4425
    .restart local v7    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v13, "UPDATE messages SET mid = ?, send_state = 0 WHERE mid = ?"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v7

    .line 4426
    const/4 v12, 0x1

    invoke-virtual {v7, v12, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4427
    const/4 v12, 0x2

    invoke-virtual {v7, v12, v10, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4428
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 4437
    if-eqz v7, :cond_c

    .line 4438
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4439
    const/4 v7, 0x0

    .line 4444
    :cond_c
    :goto_4
    :try_start_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v13, "UPDATE media_v2 SET mid = ? WHERE mid = ?"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v7

    .line 4445
    const/4 v12, 0x1

    invoke-virtual {v7, v12, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4446
    const/4 v12, 0x2

    invoke-virtual {v7, v12, v10, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4447
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 4455
    if-eqz v7, :cond_d

    .line 4456
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4457
    const/4 v7, 0x0

    .line 4462
    :cond_d
    :goto_5
    :try_start_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v13, "UPDATE dialogs SET last_mid = ? WHERE last_mid = ?"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v7

    .line 4463
    const/4 v12, 0x1

    invoke-virtual {v7, v12, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4464
    const/4 v12, 0x2

    invoke-virtual {v7, v12, v10, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4465
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 4469
    if-eqz v7, :cond_e

    .line 4470
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4474
    :cond_e
    :goto_6
    const/4 v12, 0x2

    new-array v12, v12, [J

    const/4 v13, 0x0

    aput-wide v4, v12, v13

    const/4 v13, 0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-long v14, v14

    aput-wide v14, v12, v13

    goto/16 :goto_1

    .line 4429
    :catch_3
    move-exception v3

    .line 4431
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "DELETE FROM messages WHERE mid = %d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4432
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "DELETE FROM messages_seq WHERE mid = %d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 4437
    :goto_7
    if-eqz v7, :cond_c

    .line 4438
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4439
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 4433
    :catch_4
    move-exception v6

    .line 4434
    .local v6, "e2":Ljava/lang/Exception;
    :try_start_a
    const-string/jumbo v12, "tmessages"

    invoke-static {v12, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_7

    .line 4437
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "e2":Ljava/lang/Exception;
    :catchall_3
    move-exception v12

    if-eqz v7, :cond_f

    .line 4438
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4439
    const/4 v7, 0x0

    :cond_f
    throw v12

    .line 4448
    :catch_5
    move-exception v3

    .line 4450
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "DELETE FROM media_v2 WHERE mid = %d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 4455
    :goto_8
    if-eqz v7, :cond_d

    .line 4456
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4457
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 4451
    :catch_6
    move-exception v6

    .line 4452
    .restart local v6    # "e2":Ljava/lang/Exception;
    :try_start_c
    const-string/jumbo v12, "tmessages"

    invoke-static {v12, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_8

    .line 4455
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "e2":Ljava/lang/Exception;
    :catchall_4
    move-exception v12

    if-eqz v7, :cond_10

    .line 4456
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4457
    const/4 v7, 0x0

    :cond_10
    throw v12

    .line 4466
    :catch_7
    move-exception v3

    .line 4467
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_d
    const-string/jumbo v12, "tmessages"

    invoke-static {v12, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 4469
    if-eqz v7, :cond_e

    .line 4470
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto/16 :goto_6

    .line 4469
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_5
    move-exception v12

    if-eqz v7, :cond_11

    .line 4470
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_11
    throw v12
.end method

.method private updateUsersInternal(Ljava/util/ArrayList;ZZ)V
    .locals 12
    .param p2, "onlyStatus"    # Z
    .param p3, "withTransaction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 4493
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    iget-object v10, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v10}, Lorg/telegram/messenger/DispatchQueue;->getId()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 4494
    new-instance v8, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "wrong db thread"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 4497
    :cond_0
    if-eqz p2, :cond_5

    .line 4498
    if-eqz p3, :cond_1

    .line 4499
    :try_start_0
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 4501
    :cond_1
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v9, "UPDATE users SET status = ? WHERE uid = ?"

    invoke-virtual {v8, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v4

    .line 4502
    .local v4, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$User;

    .line 4503
    .local v6, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 4504
    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v8, :cond_3

    .line 4505
    const/4 v8, 0x1

    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    invoke-virtual {v4, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4509
    :goto_1
    const/4 v8, 0x2

    iget v9, v6, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v4, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4510
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4555
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .end local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :catch_0
    move-exception v0

    .line 4556
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "tmessages"

    invoke-static {v8, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4558
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void

    .line 4507
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .restart local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_3
    const/4 v8, 0x1

    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v4, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    goto :goto_1

    .line 4512
    .end local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_4
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4513
    if-eqz p3, :cond_2

    .line 4514
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    goto :goto_2

    .line 4517
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4518
    .local v2, "ids":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 4519
    .local v7, "usersDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$User;

    .line 4520
    .restart local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_6

    .line 4521
    const-string/jumbo v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4523
    :cond_6
    iget v8, v6, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4524
    iget v8, v6, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 4526
    .end local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4527
    .local v3, "loadedUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v3}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4528
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$User;

    .line 4529
    .restart local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    iget v8, v6, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$User;

    .line 4530
    .local v5, "updateUser":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v5, :cond_8

    .line 4531
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v8, :cond_a

    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v8, :cond_a

    .line 4532
    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->isContact(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 4533
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v8, v6, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 4534
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    iput-object v8, v6, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 4536
    :cond_9
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    iput-object v8, v6, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    goto :goto_4

    .line 4537
    :cond_a
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v8, :cond_b

    .line 4538
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iput-object v8, v6, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    goto :goto_4

    .line 4539
    :cond_b
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v8, :cond_8

    .line 4540
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    iput-object v8, v6, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    goto :goto_4

    .line 4545
    .end local v5    # "updateUser":Lorg/telegram/tgnet/TLRPC$User;
    .end local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 4546
    if-eqz p3, :cond_d

    .line 4547
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 4549
    :cond_d
    invoke-direct {p0, v3}, Lorg/telegram/messenger/MessagesStorage;->putUsersInternal(Ljava/util/ArrayList;)V

    .line 4550
    if-eqz p3, :cond_2

    .line 4551
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method


# virtual methods
.method public addRecentLocalFile(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 2
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "localUrl"    # Ljava/lang/String;
    .param p3, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 932
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-nez p3, :cond_2

    .line 962
    :cond_1
    :goto_0
    return-void

    .line 935
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$13;

    invoke-direct {v1, p0, p3, p1, p2}, Lorg/telegram/messenger/MessagesStorage$13;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public applyPhoneBookUpdates(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "adds"    # Ljava/lang/String;
    .param p2, "deletes"    # Ljava/lang/String;

    .prologue
    .line 2145
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 2163
    :goto_0
    return-void

    .line 2148
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$40;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$40;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public checkMessageId(JI)Z
    .locals 11
    .param p1, "dialog_id"    # J
    .param p3, "mid"    # I

    .prologue
    const/4 v9, 0x0

    .line 2391
    const/4 v0, 0x1

    new-array v5, v0, [Z

    .line 2392
    .local v5, "result":[Z
    new-instance v6, Ljava/util/concurrent/Semaphore;

    invoke-direct {v6, v9}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 2393
    .local v6, "semaphore":Ljava/util/concurrent/Semaphore;
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$45;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MessagesStorage$45;-><init>(Lorg/telegram/messenger/MessagesStorage;JI[ZLjava/util/concurrent/Semaphore;)V

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2413
    :try_start_0
    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2417
    :goto_0
    aget-boolean v0, v5, v9

    return v0

    .line 2414
    :catch_0
    move-exception v7

    .line 2415
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public cleanup(Z)V
    .locals 2
    .param p1, "isLogin"    # Z

    .prologue
    .line 529
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v0}, Lorg/telegram/messenger/DispatchQueue;->cleanupQueue()V

    .line 530
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$2;-><init>(Lorg/telegram/messenger/MessagesStorage;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 565
    return-void
.end method

.method public clearDownloadQueue(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 3599
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$61;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$61;-><init>(Lorg/telegram/messenger/MessagesStorage;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3613
    return-void
.end method

.method public clearUserPhoto(IJ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "pid"    # J

    .prologue
    .line 1396
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$25;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage$25;-><init>(Lorg/telegram/messenger/MessagesStorage;IJ)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1406
    return-void
.end method

.method public clearUserPhotos(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 1383
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$24;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$24;-><init>(Lorg/telegram/messenger/MessagesStorage;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1393
    return-void
.end method

.method public clearWebRecent(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 981
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$15;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$15;-><init>(Lorg/telegram/messenger/MessagesStorage;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 991
    return-void
.end method

.method public closeHolesInMedia(JIII)V
    .locals 19
    .param p1, "did"    # J
    .param p3, "minId"    # I
    .param p4, "maxId"    # I
    .param p5, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 4992
    const/4 v9, 0x0

    .line 4994
    .local v9, "ok":Z
    if-gez p5, :cond_4

    .line 4995
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "SELECT type, start, end FROM media_holes_v2 WHERE uid = %d AND type >= 0 AND ((end >= %d AND end <= %d) OR (start >= %d AND start <= %d) OR (start >= %d AND end <= %d) OR (start <= %d AND end >= %d))"

    const/16 v15, 0x9

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x5

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x6

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x8

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v12, v13, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v3

    .line 4999
    .local v3, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :goto_0
    const/4 v8, 0x0

    .line 5000
    .local v8, "holes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesStorage$Hole;>;"
    :cond_0
    :goto_1
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 5001
    if-nez v8, :cond_1

    .line 5002
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "holes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesStorage$Hole;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 5004
    .restart local v8    # "holes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesStorage$Hole;>;"
    :cond_1
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    .line 5005
    .local v7, "holeType":I
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v10

    .line 5006
    .local v10, "start":I
    const/4 v12, 0x2

    invoke-virtual {v3, v12}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    .line 5007
    .local v5, "end":I
    if-ne v10, v5, :cond_2

    const/4 v12, 0x1

    if-eq v10, v12, :cond_0

    .line 5010
    :cond_2
    new-instance v12, Lorg/telegram/messenger/MessagesStorage$Hole;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v7, v10, v5}, Lorg/telegram/messenger/MessagesStorage$Hole;-><init>(Lorg/telegram/messenger/MessagesStorage;III)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 5053
    .end local v3    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v5    # "end":I
    .end local v7    # "holeType":I
    .end local v8    # "holes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesStorage$Hole;>;"
    .end local v10    # "start":I
    :catch_0
    move-exception v4

    .line 5054
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "tmessages"

    invoke-static {v12, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5056
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    return-void

    .line 4997
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "SELECT type, start, end FROM media_holes_v2 WHERE uid = %d AND type = %d AND ((end >= %d AND end <= %d) OR (start >= %d AND start <= %d) OR (start >= %d AND end <= %d) OR (start <= %d AND end >= %d))"

    const/16 v15, 0xa

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x5

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x6

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x7

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x8

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x9

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v12, v13, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v3

    .restart local v3    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    goto/16 :goto_0

    .line 5012
    .restart local v8    # "holes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesStorage$Hole;>;"
    :cond_5
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 5013
    if-eqz v8, :cond_3

    .line 5014
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v2, v12, :cond_3

    .line 5015
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessagesStorage$Hole;

    .line 5016
    .local v6, "hole":Lorg/telegram/messenger/MessagesStorage$Hole;
    iget v12, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    add-int/lit8 v12, v12, -0x1

    move/from16 v0, p4

    if-lt v0, v12, :cond_7

    iget v12, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    add-int/lit8 v12, v12, 0x1

    move/from16 v0, p3

    if-gt v0, v12, :cond_7

    .line 5017
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "DELETE FROM media_holes_v2 WHERE uid = %d AND type = %d AND start = %d AND end = %d"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->type:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5014
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 5018
    :cond_7
    iget v12, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    add-int/lit8 v12, v12, -0x1

    move/from16 v0, p4

    if-lt v0, v12, :cond_8

    .line 5019
    iget v12, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v0, p3

    if-eq v12, v0, :cond_6

    .line 5021
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "UPDATE media_holes_v2 SET end = %d WHERE uid = %d AND type = %d AND start = %d AND end = %d"

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->type:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 5022
    :catch_1
    move-exception v4

    .line 5023
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v12, "tmessages"

    invoke-static {v12, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 5026
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_8
    iget v12, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    add-int/lit8 v12, v12, 0x1

    move/from16 v0, p3

    if-gt v0, v12, :cond_9

    .line 5027
    iget v12, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move/from16 v0, p4

    if-eq v12, v0, :cond_6

    .line 5029
    :try_start_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "UPDATE media_holes_v2 SET start = %d WHERE uid = %d AND type = %d AND start = %d AND end = %d"

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->type:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3

    .line 5030
    :catch_2
    move-exception v4

    .line 5031
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v12, "tmessages"

    invoke-static {v12, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 5035
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "DELETE FROM media_holes_v2 WHERE uid = %d AND type = %d AND start = %d AND end = %d"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->type:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    iget v0, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 5036
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v13, "REPLACE INTO media_holes_v2 VALUES(?, ?, ?, ?)"

    invoke-virtual {v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v11

    .line 5037
    .local v11, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 5038
    const/4 v12, 0x1

    move-wide/from16 v0, p1

    invoke-virtual {v11, v12, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5039
    const/4 v12, 0x2

    iget v13, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->type:I

    invoke-virtual {v11, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5040
    const/4 v12, 0x3

    iget v13, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    invoke-virtual {v11, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5041
    const/4 v12, 0x4

    move/from16 v0, p3

    invoke-virtual {v11, v12, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5042
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 5043
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 5044
    const/4 v12, 0x1

    move-wide/from16 v0, p1

    invoke-virtual {v11, v12, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 5045
    const/4 v12, 0x2

    iget v13, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->type:I

    invoke-virtual {v11, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5046
    const/4 v12, 0x3

    move/from16 v0, p4

    invoke-virtual {v11, v12, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5047
    const/4 v12, 0x4

    iget v13, v6, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    invoke-virtual {v11, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 5048
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 5049
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_3
.end method

.method public commitTransaction(Z)V
    .locals 3
    .param p1, "useQueue"    # Z

    .prologue
    .line 2919
    if-eqz p1, :cond_0

    .line 2920
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/MessagesStorage$48;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesStorage$48;-><init>(Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2937
    :goto_0
    return-void

    .line 2932
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2933
    :catch_0
    move-exception v0

    .line 2934
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J
    .locals 6
    .param p1, "data"    # Lorg/telegram/tgnet/NativeByteBuffer;

    .prologue
    .line 591
    if-nez p1, :cond_0

    .line 592
    const-wide/16 v0, 0x0

    .line 611
    :goto_0
    return-wide v0

    .line 594
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage;->lastTaskId:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v0

    .line 595
    .local v0, "id":J
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/MessagesStorage$4;

    invoke-direct {v3, p0, v0, v1, p1}, Lorg/telegram/messenger/MessagesStorage$4;-><init>(Lorg/telegram/messenger/MessagesStorage;JLorg/telegram/tgnet/NativeByteBuffer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public createTaskForSecretChat(IIIILjava/util/ArrayList;)V
    .locals 8
    .param p1, "chat_id"    # I
    .param p2, "time"    # I
    .param p3, "readTime"    # I
    .param p4, "isOut"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1468
    .local p5, "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$28;

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p4

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MessagesStorage$28;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;IIII)V

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1540
    return-void
.end method

.method public deleteBlockedUser(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1105
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$19;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$19;-><init>(Lorg/telegram/messenger/MessagesStorage;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1115
    return-void
.end method

.method public deleteContacts(Ljava/util/ArrayList;)V
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
    .line 2128
    .local p1, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2142
    :cond_0
    :goto_0
    return-void

    .line 2131
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$39;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$39;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public deleteDialog(JI)V
    .locals 3
    .param p1, "did"    # J
    .param p3, "messagesOnly"    # I

    .prologue
    .line 1210
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$22;

    invoke-direct {v1, p0, p3, p1, p2}, Lorg/telegram/messenger/MessagesStorage$22;-><init>(Lorg/telegram/messenger/MessagesStorage;IJ)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1342
    return-void
.end method

.method public deleteUserChannelHistory(II)V
    .locals 2
    .param p1, "channelId"    # I
    .param p2, "uid"    # I

    .prologue
    .line 1145
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$21;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$21;-><init>(Lorg/telegram/messenger/MessagesStorage;II)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1207
    return-void
.end method

.method public doneHolesInMedia(JII)V
    .locals 9
    .param p1, "did"    # J
    .param p3, "max_id"    # I
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 4939
    const/4 v2, -0x1

    if-ne p4, v2, :cond_2

    .line 4940
    if-nez p3, :cond_0

    .line 4941
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "DELETE FROM media_holes_v2 WHERE uid = %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4945
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v3, "REPLACE INTO media_holes_v2 VALUES(?, ?, ?, ?)"

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    .line 4946
    .local v1, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    .line 4947
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 4948
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4949
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4950
    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4951
    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4952
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 4946
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4943
    .end local v0    # "a":I
    .end local v1    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "DELETE FROM media_holes_v2 WHERE uid = %d AND start = 0"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_0

    .line 4954
    .restart local v0    # "a":I
    .restart local v1    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_1
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4970
    .end local v0    # "a":I
    :goto_2
    return-void

    .line 4956
    .end local v1    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_2
    if-nez p3, :cond_3

    .line 4957
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "DELETE FROM media_holes_v2 WHERE uid = %d AND type = %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4961
    :goto_3
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v3, "REPLACE INTO media_holes_v2 VALUES(?, ?, ?, ?)"

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    .line 4962
    .restart local v1    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 4963
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4964
    const/4 v2, 0x2

    invoke-virtual {v1, v2, p4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4965
    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4966
    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4967
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 4968
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_2

    .line 4959
    .end local v1    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "DELETE FROM media_holes_v2 WHERE uid = %d AND type = %d AND start = 0"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_3
.end method

.method public getBlockedUsers()V
    .locals 2

    .prologue
    .line 1074
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$18;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesStorage$18;-><init>(Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1102
    return-void
.end method

.method public getCachedPhoneBook()V
    .locals 2

    .prologue
    .line 2203
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$42;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesStorage$42;-><init>(Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2243
    return-void
.end method

.method public getChannelPtsSync(I)I
    .locals 6
    .param p1, "channelId"    # I

    .prologue
    const/4 v5, 0x0

    .line 5679
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 5680
    .local v2, "semaphore":Ljava/util/concurrent/Semaphore;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    .line 5681
    .local v1, "pts":[Ljava/lang/Integer;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesStorage$81;

    invoke-direct {v4, p0, p1, v1, v2}, Lorg/telegram/messenger/MessagesStorage$81;-><init>(Lorg/telegram/messenger/MessagesStorage;I[Ljava/lang/Integer;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 5707
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5711
    :goto_0
    aget-object v3, v1, v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    .line 5708
    :catch_0
    move-exception v0

    .line 5709
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getChat(I)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 6
    .param p1, "chat_id"    # I

    .prologue
    .line 5776
    const/4 v1, 0x0

    .line 5778
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5779
    .local v2, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5780
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5781
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5786
    .end local v2    # "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    :cond_0
    :goto_0
    return-object v1

    .line 5783
    :catch_0
    move-exception v3

    .line 5784
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "tmessages"

    invoke-static {v4, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getChatSync(I)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 6
    .param p1, "user_id"    # I

    .prologue
    const/4 v5, 0x0

    .line 5733
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 5734
    .local v2, "semaphore":Ljava/util/concurrent/Semaphore;
    const/4 v3, 0x1

    new-array v0, v3, [Lorg/telegram/tgnet/TLRPC$Chat;

    .line 5735
    .local v0, "chat":[Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesStorage$83;

    invoke-direct {v4, p0, v0, p1, v2}, Lorg/telegram/messenger/MessagesStorage$83;-><init>(Lorg/telegram/messenger/MessagesStorage;[Lorg/telegram/tgnet/TLRPC$Chat;ILjava/util/concurrent/Semaphore;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 5743
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5747
    :goto_0
    aget-object v3, v0, v5

    return-object v3

    .line 5744
    :catch_0
    move-exception v1

    .line 5745
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 9
    .param p1, "chatsToLoad"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    const/4 v8, 0x0

    .line 3481
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    if-nez p2, :cond_1

    .line 3500
    :cond_0
    :goto_0
    return-void

    .line 3484
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "SELECT data FROM chats WHERE uid IN(%s)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1

    .line 3485
    .local v1, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3487
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, v4}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v2

    .line 3488
    .local v2, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v2, :cond_2

    .line 3489
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lorg/telegram/tgnet/TLRPC$Chat;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 3490
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3491
    if-eqz v0, :cond_2

    .line 3492
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3495
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v2    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_0
    move-exception v3

    .line 3496
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "tmessages"

    invoke-static {v4, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3499
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_0
.end method

.method public getContacts()V
    .locals 2

    .prologue
    .line 2246
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$43;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesStorage$43;-><init>(Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2278
    return-void
.end method

.method public getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    return-object v0
.end method

.method public getDialogPhotos(IIIJI)V
    .locals 10
    .param p1, "did"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "max_id"    # J
    .param p6, "classGuid"    # I

    .prologue
    .line 1345
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$23;

    move-object v1, p0

    move-wide v2, p4

    move v4, p1

    move v5, p3

    move v6, p2

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/MessagesStorage$23;-><init>(Lorg/telegram/messenger/MessagesStorage;JIIII)V

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1380
    return-void
.end method

.method public getDialogReadMax(ZJ)I
    .locals 10
    .param p1, "outbox"    # Z
    .param p2, "dialog_id"    # J

    .prologue
    const/4 v9, 0x0

    .line 5645
    new-instance v7, Ljava/util/concurrent/Semaphore;

    invoke-direct {v7, v9}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 5646
    .local v7, "semaphore":Ljava/util/concurrent/Semaphore;
    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v9

    .line 5647
    .local v6, "max":[Ljava/lang/Integer;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v8

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$80;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/MessagesStorage$80;-><init>(Lorg/telegram/messenger/MessagesStorage;ZJ[Ljava/lang/Integer;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v8, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 5671
    :try_start_0
    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5675
    :goto_0
    aget-object v1, v6, v9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 5672
    :catch_0
    move-exception v0

    .line 5673
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getDialogs(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 5345
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$78;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$78;-><init>(Lorg/telegram/messenger/MessagesStorage;II)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 5495
    return-void
.end method

.method public getDownloadQueue(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 3616
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$62;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$62;-><init>(Lorg/telegram/messenger/MessagesStorage;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3651
    return-void
.end method

.method public getEncryptedChat(I)Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .locals 6
    .param p1, "chat_id"    # I

    .prologue
    .line 5790
    const/4 v1, 0x0

    .line 5792
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5793
    .local v3, "encryptedChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v3, v5}, Lorg/telegram/messenger/MessagesStorage;->getEncryptedChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 5794
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5795
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5800
    .end local v3    # "encryptedChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    :cond_0
    :goto_0
    return-object v1

    .line 5797
    :catch_0
    move-exception v2

    .line 5798
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "tmessages"

    invoke-static {v4, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getEncryptedChat(ILjava/util/concurrent/Semaphore;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "chat_id"    # I
    .param p2, "semaphore"    # Ljava/util/concurrent/Semaphore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Semaphore;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3215
    .local p3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLObject;>;"
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 3240
    :cond_0
    :goto_0
    return-void

    .line 3218
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$57;

    invoke-direct {v1, p0, p1, p3, p2}, Lorg/telegram/messenger/MessagesStorage$57;-><init>(Lorg/telegram/messenger/MessagesStorage;ILjava/util/ArrayList;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getEncryptedChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "chatsToLoad"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    .local p3, "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3503
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    if-nez p2, :cond_1

    .line 3540
    :cond_0
    :goto_0
    return-void

    .line 3506
    :cond_1
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT data, user, g, authkey, ttl, layer, seq_in, seq_out, use_count, exchange_id, key_date, fprint, fauthkey, khash FROM enc_chats WHERE uid IN(%s)"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1

    .line 3507
    .local v1, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3509
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v2

    .line 3510
    .local v2, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v2, :cond_2

    .line 3511
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v0

    .line 3512
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3513
    if-eqz v0, :cond_2

    .line 3514
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    iput v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    .line 3515
    if-eqz p3, :cond_3

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 3516
    iget v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3518
    :cond_3
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->byteArrayValue(I)[B

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    .line 3519
    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->byteArrayValue(I)[B

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    .line 3520
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    iput v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    .line 3521
    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    iput v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    .line 3522
    const/4 v5, 0x6

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    iput v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    .line 3523
    const/4 v5, 0x7

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    iput v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    .line 3524
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    .line 3525
    .local v4, "use_count":I
    shr-int/lit8 v5, v4, 0x10

    int-to-short v5, v5

    iput-short v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    .line 3526
    int-to-short v5, v4

    iput-short v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    .line 3527
    const/16 v5, 0x9

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v6

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    .line 3528
    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    iput v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    .line 3529
    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v6

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    .line 3530
    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->byteArrayValue(I)[B

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    .line 3531
    const/16 v5, 0xd

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->byteArrayValue(I)[B

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    .line 3532
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 3535
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v2    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v4    # "use_count":I
    :catch_0
    move-exception v3

    .line 3536
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "tmessages"

    invoke-static {v5, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 3539
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto/16 :goto_0
.end method

.method public getMessages(JIIIIIZI)V
    .locals 13
    .param p1, "dialog_id"    # J
    .param p3, "count"    # I
    .param p4, "max_id"    # I
    .param p5, "minDate"    # I
    .param p6, "classGuid"    # I
    .param p7, "load_type"    # I
    .param p8, "isChannel"    # Z
    .param p9, "loadIndex"    # I

    .prologue
    .line 2421
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$46;

    move-object v2, p0

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p8

    move-wide v6, p1

    move/from16 v8, p7

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lorg/telegram/messenger/MessagesStorage$46;-><init>(Lorg/telegram/messenger/MessagesStorage;IIZJIIII)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2895
    return-void
.end method

.method public getNewTask(Ljava/util/ArrayList;)V
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
    .line 1439
    .local p1, "oldTask":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$27;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$27;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1465
    return-void
.end method

.method public getSentFile(Ljava/lang/String;I)Lorg/telegram/tgnet/TLObject;
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 2940
    if-nez p1, :cond_0

    .line 2978
    :goto_0
    return-object v7

    .line 2943
    :cond_0
    new-instance v5, Ljava/util/concurrent/Semaphore;

    invoke-direct {v5, v9}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 2944
    .local v5, "semaphore":Ljava/util/concurrent/Semaphore;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2945
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLObject;>;"
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$49;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage$49;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2974
    :try_start_0
    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2978
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLObject;

    :goto_2
    move-object v7, v0

    goto :goto_0

    .line 2975
    :catch_0
    move-exception v6

    .line 2976
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v0, v7

    .line 2978
    goto :goto_2
.end method

.method public getStorageQueue()Lorg/telegram/messenger/DispatchQueue;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object v0
.end method

.method public getUnsentMessages(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 2281
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$44;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$44;-><init>(Lorg/telegram/messenger/MessagesStorage;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2388
    return-void
.end method

.method public getUser(I)Lorg/telegram/tgnet/TLRPC$User;
    .locals 6
    .param p1, "user_id"    # I

    .prologue
    .line 5751
    const/4 v2, 0x0

    .line 5753
    .local v2, "user":Lorg/telegram/tgnet/TLRPC$User;
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5754
    .local v3, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5755
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5756
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5761
    .end local v3    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_0
    :goto_0
    return-object v2

    .line 5758
    :catch_0
    move-exception v1

    .line 5759
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "tmessages"

    invoke-static {v4, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getUserSync(I)Lorg/telegram/tgnet/TLRPC$User;
    .locals 6
    .param p1, "user_id"    # I

    .prologue
    const/4 v5, 0x0

    .line 5715
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 5716
    .local v1, "semaphore":Ljava/util/concurrent/Semaphore;
    const/4 v3, 0x1

    new-array v2, v3, [Lorg/telegram/tgnet/TLRPC$User;

    .line 5717
    .local v2, "user":[Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesStorage$82;

    invoke-direct {v4, p0, v2, p1, v1}, Lorg/telegram/messenger/MessagesStorage$82;-><init>(Lorg/telegram/messenger/MessagesStorage;[Lorg/telegram/tgnet/TLRPC$User;ILjava/util/concurrent/Semaphore;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 5725
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5729
    :goto_0
    aget-object v3, v2, v5

    return-object v3

    .line 5726
    :catch_0
    move-exception v0

    .line 5727
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getUsers(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5765
    .local p1, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5767
    .local v1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :try_start_0
    const-string/jumbo v2, ","

    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5772
    :goto_0
    return-object v1

    .line 5768
    :catch_0
    move-exception v0

    .line 5769
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5770
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 9
    .param p1, "usersToLoad"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3456
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    if-nez p2, :cond_1

    .line 3478
    :cond_0
    :goto_0
    return-void

    .line 3459
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "SELECT data, status FROM users WHERE uid IN(%s)"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    .line 3460
    .local v0, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3462
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v1

    .line 3463
    .local v1, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v1, :cond_2

    .line 3464
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 3465
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {v1}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3466
    if-eqz v3, :cond_2

    .line 3467
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v4, :cond_3

    .line 3468
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 3470
    :cond_3
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3473
    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v3    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :catch_0
    move-exception v2

    .line 3474
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "tmessages"

    invoke-static {v4, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3477
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_0
.end method

.method public getWallpapers()V
    .locals 2

    .prologue
    .line 1045
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$17;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesStorage$17;-><init>(Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1071
    return-void
.end method

.method public hasAuthMessage(I)Z
    .locals 6
    .param p1, "date"    # I

    .prologue
    const/4 v5, 0x0

    .line 3190
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 3191
    .local v2, "semaphore":Ljava/util/concurrent/Semaphore;
    const/4 v3, 0x1

    new-array v1, v3, [Z

    .line 3192
    .local v1, "result":[Z
    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/messenger/MessagesStorage$56;

    invoke-direct {v4, p0, p1, v1, v2}, Lorg/telegram/messenger/MessagesStorage$56;-><init>(Lorg/telegram/messenger/MessagesStorage;I[ZLjava/util/concurrent/Semaphore;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3207
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3211
    :goto_0
    aget-boolean v3, v1, v5

    return v3

    .line 3208
    :catch_0
    move-exception v0

    .line 3209
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isDialogHasMessages(J)Z
    .locals 9
    .param p1, "did"    # J

    .prologue
    const/4 v8, 0x0

    .line 3165
    new-instance v5, Ljava/util/concurrent/Semaphore;

    invoke-direct {v5, v8}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 3166
    .local v5, "semaphore":Ljava/util/concurrent/Semaphore;
    const/4 v0, 0x1

    new-array v4, v0, [Z

    .line 3167
    .local v4, "result":[Z
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$55;

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage$55;-><init>(Lorg/telegram/messenger/MessagesStorage;J[ZLjava/util/concurrent/Semaphore;)V

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3182
    :try_start_0
    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3186
    :goto_0
    aget-boolean v0, v4, v8

    return v0

    .line 3183
    :catch_0
    move-exception v6

    .line 3184
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isMigratedChat(I)Z
    .locals 6
    .param p1, "chat_id"    # I

    .prologue
    const/4 v5, 0x0

    .line 1914
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 1915
    .local v2, "semaphore":Ljava/util/concurrent/Semaphore;
    const/4 v3, 0x1

    new-array v1, v3, [Z

    .line 1916
    .local v1, "result":[Z
    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/messenger/MessagesStorage$35;

    invoke-direct {v4, p0, p1, v1, v2}, Lorg/telegram/messenger/MessagesStorage$35;-><init>(Lorg/telegram/messenger/MessagesStorage;I[ZLjava/util/concurrent/Semaphore;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1945
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1949
    :goto_0
    aget-boolean v3, v1, v5

    return v3

    .line 1946
    :catch_0
    move-exception v0

    .line 1947
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public loadChatInfo(ILjava/util/concurrent/Semaphore;ZZ)V
    .locals 7
    .param p1, "chat_id"    # I
    .param p2, "semaphore"    # Ljava/util/concurrent/Semaphore;
    .param p3, "force"    # Z
    .param p4, "byChannelUsers"    # Z

    .prologue
    .line 1953
    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$36;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage$36;-><init>(Lorg/telegram/messenger/MessagesStorage;ILjava/util/concurrent/Semaphore;ZZ)V

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2046
    return-void
.end method

.method public loadUnreadMessages()V
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$10;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesStorage$10;-><init>(Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 860
    return-void
.end method

.method public loadWebRecent(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 891
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$12;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$12;-><init>(Lorg/telegram/messenger/MessagesStorage;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 929
    return-void
.end method

.method public markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 2
    .param p1, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 4272
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$68;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$68;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$Message;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 4286
    return-void
.end method

.method public markMessagesAsDeleted(Ljava/util/ArrayList;ZI)V
    .locals 2
    .param p2, "useQueue"    # Z
    .param p3, "channelId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 4890
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4903
    :goto_0
    return-void

    .line 4893
    :cond_0
    if-eqz p2, :cond_1

    .line 4894
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$76;

    invoke-direct {v1, p0, p1, p3}, Lorg/telegram/messenger/MessagesStorage$76;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4901
    :cond_1
    invoke-direct {p0, p1, p3}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeletedInternal(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public markMessagesAsDeletedByRandoms(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4639
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4669
    :goto_0
    return-void

    .line 4642
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$74;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$74;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public markMessagesAsRead(Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;Z)V
    .locals 2
    .param p4, "useQueue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 4626
    .local p1, "inbox":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .local p2, "outbox":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .local p3, "encryptedMessages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz p4, :cond_0

    .line 4627
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$73;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage$73;-><init>(Lorg/telegram/messenger/MessagesStorage;Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 4636
    :goto_0
    return-void

    .line 4634
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsReadInternal(Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public markMessagesContentAsRead(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4610
    .local p1, "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4623
    :cond_0
    :goto_0
    return-void

    .line 4613
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$72;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$72;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public openDatabase()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 87
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "cache4.db"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->cacheFile:Ljava/io/File;

    .line 89
    const/4 v0, 0x0

    .line 91
    .local v0, "createTable":Z
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->cacheFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 92
    const/4 v0, 0x1

    .line 95
    :cond_0
    :try_start_0
    new-instance v5, Lorg/telegram/SQLite/SQLiteDatabase;

    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage;->cacheFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    .line 96
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "PRAGMA secure_delete = ON"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 97
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "PRAGMA temp_store = 1"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 98
    if-eqz v0, :cond_2

    .line 99
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE messages_holes(uid INTEGER, start INTEGER, end INTEGER, PRIMARY KEY(uid, start));"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 100
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS uid_end_messages_holes ON messages_holes(uid, end);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 102
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE media_holes_v2(uid INTEGER, type INTEGER, start INTEGER, end INTEGER, PRIMARY KEY(uid, type, start));"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 103
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS uid_end_media_holes_v2 ON media_holes_v2(uid, type, end);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 105
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE messages(mid INTEGER PRIMARY KEY, uid INTEGER, read_state INTEGER, send_state INTEGER, date INTEGER, data BLOB, out INTEGER, ttl INTEGER, media INTEGER, replydata BLOB, imp INTEGER)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 106
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS uid_mid_idx_messages ON messages(uid, mid);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 107
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS uid_date_mid_idx_messages ON messages(uid, date, mid);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 108
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS mid_out_idx_messages ON messages(mid, out);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 109
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS task_idx_messages ON messages(uid, out, read_state, ttl, date, send_state);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 110
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS send_state_idx_messages ON messages(mid, send_state, date) WHERE mid < 0 AND send_state = 1;"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 112
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE download_queue(uid INTEGER, type INTEGER, date INTEGER, data BLOB, PRIMARY KEY (uid, type));"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 113
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS type_date_idx_download_queue ON download_queue(type, date);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 115
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE user_phones_v6(uid INTEGER, phone TEXT, sphone TEXT, deleted INTEGER, PRIMARY KEY (uid, phone))"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 116
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS sphone_deleted_idx_user_phones ON user_phones_v6(sphone, deleted);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 118
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE dialogs(did INTEGER PRIMARY KEY, date INTEGER, unread_count INTEGER, last_mid INTEGER, inbox_max INTEGER, outbox_max INTEGER, last_mid_i INTEGER, unread_count_i INTEGER, pts INTEGER, date_i INTEGER)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 119
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS date_idx_dialogs ON dialogs(date);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 120
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS last_mid_idx_dialogs ON dialogs(last_mid);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 121
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS unread_count_idx_dialogs ON dialogs(unread_count);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 122
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS last_mid_i_idx_dialogs ON dialogs(last_mid_i);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 123
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS unread_count_i_idx_dialogs ON dialogs(unread_count_i);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 125
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE randoms(random_id INTEGER, mid INTEGER, PRIMARY KEY (random_id, mid))"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 126
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS mid_idx_randoms ON randoms(mid);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 128
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE enc_tasks_v2(mid INTEGER PRIMARY KEY, date INTEGER)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 129
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS date_idx_enc_tasks_v2 ON enc_tasks_v2(date);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 131
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE messages_seq(mid INTEGER PRIMARY KEY, seq_in INTEGER, seq_out INTEGER);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 132
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS seq_idx_messages_seq ON messages_seq(seq_in, seq_out);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 134
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE params(id INTEGER PRIMARY KEY, seq INTEGER, pts INTEGER, date INTEGER, qts INTEGER, lsv INTEGER, sg INTEGER, pbytes BLOB)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 135
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "INSERT INTO params VALUES(1, 0, 0, 0, 0, 0, 0, NULL)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 137
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE media_v2(mid INTEGER PRIMARY KEY, uid INTEGER, date INTEGER, type INTEGER, data BLOB)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 138
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS uid_mid_type_date_idx_media ON media_v2(uid, mid, type, date);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 140
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE bot_keyboard(uid INTEGER PRIMARY KEY, mid INTEGER, info BLOB)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 141
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS bot_keyboard_idx_mid ON bot_keyboard(mid);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 143
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE chat_settings_v2(uid INTEGER PRIMARY KEY, info BLOB, pinned INTEGER)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 144
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS chat_settings_pinned_idx ON chat_settings_v2(uid, pinned) WHERE pinned != 0;"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 146
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE chat_pinned(uid INTEGER PRIMARY KEY, pinned INTEGER, data BLOB)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 147
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS chat_pinned_mid_idx ON chat_pinned(uid, pinned) WHERE pinned != 0;"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 149
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE chat_hints(did INTEGER, type INTEGER, rating REAL, date INTEGER, PRIMARY KEY(did, type))"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 150
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE INDEX IF NOT EXISTS chat_hints_rating_idx ON chat_hints(rating);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 152
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE users_data(uid INTEGER PRIMARY KEY, about TEXT)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 153
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE users(uid INTEGER PRIMARY KEY, name TEXT, status INTEGER, data BLOB)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 154
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE chats(uid INTEGER PRIMARY KEY, name TEXT, data BLOB)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 155
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE enc_chats(uid INTEGER PRIMARY KEY, user INTEGER, name TEXT, data BLOB, g BLOB, authkey BLOB, ttl INTEGER, layer INTEGER, seq_in INTEGER, seq_out INTEGER, use_count INTEGER, exchange_id INTEGER, key_date INTEGER, fprint INTEGER, fauthkey BLOB, khash BLOB)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 156
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE channel_users_v2(did INTEGER, uid INTEGER, date INTEGER, data BLOB, PRIMARY KEY(did, uid))"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 157
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE contacts(uid INTEGER PRIMARY KEY, mutual INTEGER)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 158
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE wallpapers(uid INTEGER PRIMARY KEY, data BLOB)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 159
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE user_photos(uid INTEGER, id INTEGER, data BLOB, PRIMARY KEY (uid, id))"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 160
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE blocked_users(uid INTEGER PRIMARY KEY)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 161
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE dialog_settings(did INTEGER PRIMARY KEY, flags INTEGER);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 162
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE web_recent_v3(id TEXT, type INTEGER, image_url TEXT, thumb_url TEXT, local_url TEXT, width INTEGER, height INTEGER, size INTEGER, date INTEGER, document BLOB, PRIMARY KEY (id, type));"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 163
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE stickers_v2(id INTEGER PRIMARY KEY, data BLOB, date INTEGER, hash TEXT);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 164
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE hashtag_recent_v2(id TEXT PRIMARY KEY, date INTEGER);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 165
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE webpage_pending(id INTEGER, mid INTEGER, PRIMARY KEY (id, mid));"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 166
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE user_contacts_v6(uid INTEGER PRIMARY KEY, fname TEXT, sname TEXT)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 167
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE sent_files_v2(uid TEXT, type INTEGER, data BLOB, PRIMARY KEY (uid, type))"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 168
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE search_recent(did INTEGER PRIMARY KEY, date INTEGER);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 169
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE media_counts_v2(uid INTEGER, type INTEGER, count INTEGER, PRIMARY KEY(uid, type))"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 170
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE keyvalue(id TEXT PRIMARY KEY, value TEXT)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 171
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE bot_info(uid INTEGER PRIMARY KEY, info BLOB)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 172
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE pending_tasks(id INTEGER PRIMARY KEY, data BLOB);"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 175
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "PRAGMA user_version = 34"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesStorage;->loadUnreadMessages()V

    .line 217
    invoke-direct {p0}, Lorg/telegram/messenger/MessagesStorage;->loadPendingTasks()V

    .line 218
    return-void

    .line 181
    :cond_2
    :try_start_1
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "SELECT seq, pts, date, qts, lsv, sg, pbytes FROM params WHERE id = 1"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1

    .line 182
    .local v1, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 183
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    sput v5, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    .line 184
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    sput v5, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    .line 185
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    sput v5, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    .line 186
    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    sput v5, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    .line 187
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    sput v5, Lorg/telegram/messenger/MessagesStorage;->lastSecretVersion:I

    .line 188
    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    sput v5, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    .line 189
    const/4 v5, 0x6

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 190
    const/4 v5, 0x0

    sput-object v5, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    .line 198
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 208
    .end local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :goto_2
    :try_start_2
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "PRAGMA user_version"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->executeInt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 209
    .local v4, "version":I
    const/16 v5, 0x22

    if-ge v4, v5, :cond_1

    .line 210
    invoke-virtual {p0, v4}, Lorg/telegram/messenger/MessagesStorage;->updateDbToLastVersion(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 213
    .end local v4    # "version":I
    :catch_0
    move-exception v2

    .line 214
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "tmessages"

    invoke-static {v5, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 192
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_4
    const/4 v5, 0x6

    :try_start_3
    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->byteArrayValue(I)[B

    move-result-object v5

    sput-object v5, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    .line 193
    sget-object v5, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    if-eqz v5, :cond_3

    sget-object v5, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    array-length v5, v5

    if-ne v5, v8, :cond_3

    .line 194
    const/4 v5, 0x0

    sput-object v5, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 199
    .end local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :catch_1
    move-exception v2

    .line 200
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v5, "tmessages"

    invoke-static {v5, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 202
    :try_start_5
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "CREATE TABLE IF NOT EXISTS params(id INTEGER PRIMARY KEY, seq INTEGER, pts INTEGER, date INTEGER, qts INTEGER, lsv INTEGER, sg INTEGER, pbytes BLOB)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 203
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "INSERT INTO params VALUES(1, 0, 0, 0, 0, 0, 0, NULL)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 204
    :catch_2
    move-exception v3

    .line 205
    .local v3, "e2":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v5, "tmessages"

    invoke-static {v5, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2
.end method

.method public overwriteChannel(ILorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;I)V
    .locals 2
    .param p1, "channel_id"    # I
    .param p2, "difference"    # Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;
    .param p3, "newDialogType"    # I

    .prologue
    .line 3752
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$64;

    invoke-direct {v1, p0, p1, p3, p2}, Lorg/telegram/messenger/MessagesStorage$64;-><init>(Lorg/telegram/messenger/MessagesStorage;IILorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3811
    return-void
.end method

.method public processPendingRead(JJI)V
    .locals 9
    .param p1, "dialog_id"    # J
    .param p3, "max_id"    # J
    .param p5, "max_date"    # I

    .prologue
    .line 2049
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$37;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MessagesStorage$37;-><init>(Lorg/telegram/messenger/MessagesStorage;JJI)V

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2095
    return-void
.end method

.method public putBlockedUsers(Ljava/util/ArrayList;Z)V
    .locals 2
    .param p2, "replace"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1118
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1142
    :cond_0
    :goto_0
    return-void

    .line 1121
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$20;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/MessagesStorage$20;-><init>(Lorg/telegram/messenger/MessagesStorage;ZLjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public putCachedPhoneBook(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/ContactsController$Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2166
    .local p1, "contactHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$41;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$41;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2200
    return-void
.end method

.method public putChannelViews(Landroid/util/SparseArray;Z)V
    .locals 2
    .param p2, "isChannel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseIntArray;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 3814
    .local p1, "channelViews":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$65;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$65;-><init>(Lorg/telegram/messenger/MessagesStorage;Landroid/util/SparseArray;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3843
    return-void
.end method

.method public putContacts(Ljava/util/ArrayList;Z)V
    .locals 3
    .param p2, "deleteAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2098
    .local p1, "contacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2125
    :goto_0
    return-void

    .line 2101
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2102
    .local v0, "contactsCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/MessagesStorage$38;

    invoke-direct {v2, p0, p2, v0}, Lorg/telegram/messenger/MessagesStorage$38;-><init>(Lorg/telegram/messenger/MessagesStorage;ZLjava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public putDialogPhotos(ILorg/telegram/tgnet/TLRPC$photos_Photos;)V
    .locals 2
    .param p1, "did"    # I
    .param p2, "photos"    # Lorg/telegram/tgnet/TLRPC$photos_Photos;

    .prologue
    .line 1409
    if-eqz p2, :cond_0

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$photos_Photos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1436
    :cond_0
    :goto_0
    return-void

    .line 1412
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$26;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/MessagesStorage$26;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$photos_Photos;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public putDialogs(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;)V
    .locals 2
    .param p1, "dialogs"    # Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    .prologue
    .line 5632
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5642
    :goto_0
    return-void

    .line 5635
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$79;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$79;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$messages_Dialogs;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_dialog;)V
    .locals 2
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p2, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p3, "dialog"    # Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .prologue
    .line 3243
    if-nez p1, :cond_0

    .line 3317
    :goto_0
    return-void

    .line 3246
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$58;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage$58;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_dialog;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public putMessages(Ljava/util/ArrayList;ZZZI)V
    .locals 7
    .param p2, "withTransaction"    # Z
    .param p3, "useQueue"    # Z
    .param p4, "doNotUpdateDialogDate"    # Z
    .param p5, "downloadMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;ZZZI)V"
        }
    .end annotation

    .prologue
    .line 4252
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZIZ)V

    .line 4253
    return-void
.end method

.method public putMessages(Ljava/util/ArrayList;ZZZIZ)V
    .locals 8
    .param p2, "withTransaction"    # Z
    .param p3, "useQueue"    # Z
    .param p4, "doNotUpdateDialogDate"    # Z
    .param p5, "downloadMask"    # I
    .param p6, "ifNoLastMessage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;ZZZIZ)V"
        }
    .end annotation

    .prologue
    .line 4256
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 4269
    :goto_0
    return-void

    .line 4259
    :cond_0
    if-eqz p3, :cond_1

    .line 4260
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$67;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MessagesStorage$67;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;ZZIZ)V

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    .line 4267
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage;->putMessagesInternal(Ljava/util/ArrayList;ZZIZ)V

    goto :goto_0
.end method

.method public putMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIZ)V
    .locals 10
    .param p1, "messages"    # Lorg/telegram/tgnet/TLRPC$messages_Messages;
    .param p2, "dialog_id"    # J
    .param p4, "load_type"    # I
    .param p5, "max_id"    # I
    .param p6, "createDialog"    # Z

    .prologue
    .line 5119
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$77;

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-wide v4, p2

    move v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/MessagesStorage$77;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$messages_Messages;IJIZ)V

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 5274
    return-void
.end method

.method public putSentFile(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;I)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "file"    # Lorg/telegram/tgnet/TLObject;
    .param p3, "type"    # I

    .prologue
    .line 2982
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3024
    :cond_0
    :goto_0
    return-void

    .line 2985
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$50;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage$50;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V
    .locals 2
    .param p3, "withTransaction"    # Z
    .param p4, "useQueue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 3558
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .local p2, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3571
    :goto_0
    return-void

    .line 3561
    :cond_0
    if-eqz p4, :cond_1

    .line 3562
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$59;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage$59;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3569
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChatsInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    goto :goto_0
.end method

.method public putWallpapers(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$WallPaper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 863
    .local p1, "wallPapers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$WallPaper;>;"
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$11;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$11;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 888
    return-void
.end method

.method public putWebPages(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$WebPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3666
    .local p1, "webPages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$WebPage;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3749
    :cond_0
    :goto_0
    return-void

    .line 3669
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$63;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$63;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public putWebRecent(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 994
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$16;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$16;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1042
    return-void
.end method

.method public removeFromDownloadQueue(JIZ)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "type"    # I
    .param p4, "move"    # Z

    .prologue
    .line 3574
    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$60;

    move-object v1, p0

    move v2, p4

    move v3, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage$60;-><init>(Lorg/telegram/messenger/MessagesStorage;ZIJ)V

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3596
    return-void
.end method

.method public removePendingTask(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 615
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$5;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$5;-><init>(Lorg/telegram/messenger/MessagesStorage;J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 625
    return-void
.end method

.method public removeWebRecent(Lorg/telegram/messenger/MediaController$SearchImage;)V
    .locals 2
    .param p1, "searchImage"    # Lorg/telegram/messenger/MediaController$SearchImage;

    .prologue
    .line 965
    if-nez p1, :cond_0

    .line 978
    :goto_0
    return-void

    .line 968
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$14;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$14;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/messenger/MediaController$SearchImage;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public saveChannelPts(II)V
    .locals 2
    .param p1, "channelId"    # I
    .param p2, "pts"    # I

    .prologue
    .line 691
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$7;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/MessagesStorage$7;-><init>(Lorg/telegram/messenger/MessagesStorage;II)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 705
    return-void
.end method

.method public saveDiffParams(IIII)V
    .locals 7
    .param p1, "seq"    # I
    .param p2, "pts"    # I
    .param p3, "date"    # I
    .param p4, "qts"    # I

    .prologue
    .line 708
    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$8;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage$8;-><init>(Lorg/telegram/messenger/MessagesStorage;IIII)V

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 731
    return-void
.end method

.method public saveSecretParams(II[B)V
    .locals 2
    .param p1, "lsv"    # I
    .param p2, "sg"    # I
    .param p3, "pbytes"    # [B

    .prologue
    .line 568
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage$3;-><init>(Lorg/telegram/messenger/MessagesStorage;II[B)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 588
    return-void
.end method

.method public setDialogFlags(JJ)V
    .locals 7
    .param p1, "did"    # J
    .param p3, "flags"    # J

    .prologue
    .line 734
    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$9;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage$9;-><init>(Lorg/telegram/messenger/MessagesStorage;JJ)V

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 744
    return-void
.end method

.method public setMessageSeq(III)V
    .locals 2
    .param p1, "mid"    # I
    .param p2, "seq_in"    # I
    .param p3, "seq_out"    # I

    .prologue
    .line 4343
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$69;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage$69;-><init>(Lorg/telegram/messenger/MessagesStorage;III)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 4359
    return-void
.end method

.method public startTransaction(Z)V
    .locals 3
    .param p1, "useQueue"    # Z

    .prologue
    .line 2898
    if-eqz p1, :cond_0

    .line 2899
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/MessagesStorage$47;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesStorage$47;-><init>(Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2916
    :goto_0
    return-void

    .line 2911
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2912
    :catch_0
    move-exception v0

    .line 2913
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public updateChannelPinnedMessage(II)V
    .locals 2
    .param p1, "channelId"    # I
    .param p2, "messageId"    # I

    .prologue
    .line 1783
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$33;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$33;-><init>(Lorg/telegram/messenger/MessagesStorage;II)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1826
    return-void
.end method

.method public updateChannelUsers(ILjava/util/ArrayList;)V
    .locals 2
    .param p1, "channel_id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$ChannelParticipant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1688
    .local p2, "participants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$ChannelParticipant;>;"
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$31;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$31;-><init>(Lorg/telegram/messenger/MessagesStorage;ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1719
    return-void
.end method

.method public updateChatInfo(IIIII)V
    .locals 8
    .param p1, "chat_id"    # I
    .param p2, "user_id"    # I
    .param p3, "what"    # I
    .param p4, "invited_id"    # I
    .param p5, "version"    # I

    .prologue
    .line 1829
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$34;

    move-object v1, p0

    move v2, p1

    move v3, p3

    move v4, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MessagesStorage$34;-><init>(Lorg/telegram/messenger/MessagesStorage;IIIII)V

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1911
    return-void
.end method

.method public updateChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V
    .locals 2
    .param p1, "info"    # Lorg/telegram/tgnet/TLRPC$ChatFull;
    .param p2, "ifExist"    # Z

    .prologue
    .line 1722
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$32;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/MessagesStorage$32;-><init>(Lorg/telegram/messenger/MessagesStorage;ZLorg/telegram/tgnet/TLRPC$ChatFull;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1780
    return-void
.end method

.method public updateChatParticipants(Lorg/telegram/tgnet/TLRPC$ChatParticipants;)V
    .locals 2
    .param p1, "participants"    # Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    .prologue
    .line 1641
    if-nez p1, :cond_0

    .line 1685
    :goto_0
    return-void

    .line 1644
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$30;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$30;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$ChatParticipants;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateDbToLastVersion(I)V
    .locals 2
    .param p1, "currentVersion"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$1;-><init>(Lorg/telegram/messenger/MessagesStorage;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 526
    return-void
.end method

.method public updateDialogsWithDeletedMessages(Ljava/util/ArrayList;ZI)V
    .locals 2
    .param p2, "useQueue"    # Z
    .param p3, "channelId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 4874
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    .line 4887
    :goto_0
    return-void

    .line 4877
    :cond_0
    if-eqz p2, :cond_1

    .line 4878
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$75;

    invoke-direct {v1, p0, p1, p3}, Lorg/telegram/messenger/MessagesStorage$75;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4885
    :cond_1
    invoke-direct {p0, p1, p3}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithDeletedMessagesInternal(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public updateDialogsWithReadMessages(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)V
    .locals 2
    .param p3, "useQueue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1625
    .local p1, "inbox":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .local p2, "outbox":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1638
    :goto_0
    return-void

    .line 1628
    :cond_0
    if-eqz p3, :cond_1

    .line 1629
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$29;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$29;-><init>(Lorg/telegram/messenger/MessagesStorage;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1636
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithReadMessagesInternal(Ljava/util/ArrayList;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    goto :goto_0
.end method

.method public updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 2
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .prologue
    .line 3101
    if-nez p1, :cond_0

    .line 3162
    :goto_0
    return-void

    .line 3104
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$54;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$54;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateEncryptedChatLayer(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 2
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .prologue
    .line 3077
    if-nez p1, :cond_0

    .line 3098
    :goto_0
    return-void

    .line 3080
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$53;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$53;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateEncryptedChatSeq(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 2
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .prologue
    .line 3027
    if-nez p1, :cond_0

    .line 3050
    :goto_0
    return-void

    .line 3030
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$51;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$51;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateEncryptedChatTTL(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 2
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .prologue
    .line 3053
    if-nez p1, :cond_0

    .line 3074
    :goto_0
    return-void

    .line 3056
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$52;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$52;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateMessageStateAndId(JLjava/lang/Integer;IIZI)[J
    .locals 9
    .param p1, "random_id"    # J
    .param p3, "_oldId"    # Ljava/lang/Integer;
    .param p4, "newId"    # I
    .param p5, "date"    # I
    .param p6, "useQueue"    # Z
    .param p7, "channelId"    # I

    .prologue
    .line 4479
    if-eqz p6, :cond_0

    .line 4480
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$70;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/MessagesStorage$70;-><init>(Lorg/telegram/messenger/MessagesStorage;JLjava/lang/Integer;III)V

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 4489
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p7

    .line 4487
    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/MessagesStorage;->updateMessageStateAndIdInternal(JLjava/lang/Integer;III)[J

    move-result-object v0

    goto :goto_0
.end method

.method public updateUsers(Ljava/util/ArrayList;ZZZ)V
    .locals 2
    .param p2, "onlyStatus"    # Z
    .param p3, "withTransaction"    # Z
    .param p4, "useQueue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;ZZZ)V"
        }
    .end annotation

    .prologue
    .line 4561
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4574
    :goto_0
    return-void

    .line 4564
    :cond_0
    if-eqz p4, :cond_1

    .line 4565
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$71;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage$71;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;ZZ)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4572
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->updateUsersInternal(Ljava/util/ArrayList;ZZ)V

    goto :goto_0
.end method
