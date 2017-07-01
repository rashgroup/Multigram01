.class Lorg/telegram/messenger/MessagesStorage$2;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->cleanup(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$isLogin:Z


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;Z)V
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$2;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-boolean p2, p0, Lorg/telegram/messenger/MessagesStorage$2;->val$isLogin:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 533
    sput v1, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    .line 534
    sput v1, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    .line 535
    sput v1, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    .line 536
    sput v1, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    .line 537
    sput v1, Lorg/telegram/messenger/MessagesStorage;->lastSecretVersion:I

    .line 539
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$2;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # setter for: Lorg/telegram/messenger/MessagesStorage;->lastSavedSeq:I
    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->access$202(Lorg/telegram/messenger/MessagesStorage;I)I

    .line 540
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$2;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # setter for: Lorg/telegram/messenger/MessagesStorage;->lastSavedPts:I
    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->access$302(Lorg/telegram/messenger/MessagesStorage;I)I

    .line 541
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$2;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # setter for: Lorg/telegram/messenger/MessagesStorage;->lastSavedDate:I
    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->access$402(Lorg/telegram/messenger/MessagesStorage;I)I

    .line 542
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$2;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # setter for: Lorg/telegram/messenger/MessagesStorage;->lastSavedQts:I
    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->access$502(Lorg/telegram/messenger/MessagesStorage;I)I

    .line 544
    sput-object v2, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    .line 545
    sput v1, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    .line 546
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$2;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$2;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteDatabase;->close()V

    .line 548
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$2;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # setter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v0, v2}, Lorg/telegram/messenger/MessagesStorage;->access$002(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/SQLite/SQLiteDatabase;)Lorg/telegram/SQLite/SQLiteDatabase;

    .line 550
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$2;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->cacheFile:Ljava/io/File;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->access$600(Lorg/telegram/messenger/MessagesStorage;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 551
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$2;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->cacheFile:Ljava/io/File;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->access$600(Lorg/telegram/messenger/MessagesStorage;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 552
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$2;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # setter for: Lorg/telegram/messenger/MessagesStorage;->cacheFile:Ljava/io/File;
    invoke-static {v0, v2}, Lorg/telegram/messenger/MessagesStorage;->access$602(Lorg/telegram/messenger/MessagesStorage;Ljava/io/File;)Ljava/io/File;

    .line 554
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$2;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->openDatabase()V

    .line 555
    iget-boolean v0, p0, Lorg/telegram/messenger/MessagesStorage$2;->val$isLogin:Z

    if-eqz v0, :cond_2

    .line 556
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$2$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesStorage$2$1;-><init>(Lorg/telegram/messenger/MessagesStorage$2;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 563
    :cond_2
    return-void
.end method
