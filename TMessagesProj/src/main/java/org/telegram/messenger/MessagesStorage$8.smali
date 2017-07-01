.class Lorg/telegram/messenger/MessagesStorage$8;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->saveDiffParams(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$date:I

.field final synthetic val$pts:I

.field final synthetic val$qts:I

.field final synthetic val$seq:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;IIII)V
    .locals 0

    .prologue
    .line 708
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$8;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$8;->val$seq:I

    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$8;->val$pts:I

    iput p4, p0, Lorg/telegram/messenger/MessagesStorage$8;->val$date:I

    iput p5, p0, Lorg/telegram/messenger/MessagesStorage$8;->val$qts:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 712
    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$8;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->lastSavedSeq:I
    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->access$200(Lorg/telegram/messenger/MessagesStorage;)I

    move-result v2

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$8;->val$seq:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$8;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->lastSavedPts:I
    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->access$300(Lorg/telegram/messenger/MessagesStorage;)I

    move-result v2

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$8;->val$pts:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$8;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->lastSavedDate:I
    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->access$400(Lorg/telegram/messenger/MessagesStorage;)I

    move-result v2

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$8;->val$date:I

    if-ne v2, v3, :cond_0

    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$8;->val$qts:I

    if-ne v2, v3, :cond_0

    .line 729
    :goto_0
    return-void

    .line 715
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$8;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "UPDATE params SET seq = ?, pts = ?, date = ?, qts = ? WHERE id = 1"

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    .line 716
    .local v1, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/4 v2, 0x1

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$8;->val$seq:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 717
    const/4 v2, 0x2

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$8;->val$pts:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 718
    const/4 v2, 0x3

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$8;->val$date:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 719
    const/4 v2, 0x4

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$8;->val$qts:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 720
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 721
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 722
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$8;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$8;->val$seq:I

    # setter for: Lorg/telegram/messenger/MessagesStorage;->lastSavedSeq:I
    invoke-static {v2, v3}, Lorg/telegram/messenger/MessagesStorage;->access$202(Lorg/telegram/messenger/MessagesStorage;I)I

    .line 723
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$8;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$8;->val$pts:I

    # setter for: Lorg/telegram/messenger/MessagesStorage;->lastSavedPts:I
    invoke-static {v2, v3}, Lorg/telegram/messenger/MessagesStorage;->access$302(Lorg/telegram/messenger/MessagesStorage;I)I

    .line 724
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$8;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$8;->val$date:I

    # setter for: Lorg/telegram/messenger/MessagesStorage;->lastSavedDate:I
    invoke-static {v2, v3}, Lorg/telegram/messenger/MessagesStorage;->access$402(Lorg/telegram/messenger/MessagesStorage;I)I

    .line 725
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$8;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$8;->val$qts:I

    # setter for: Lorg/telegram/messenger/MessagesStorage;->lastSavedQts:I
    invoke-static {v2, v3}, Lorg/telegram/messenger/MessagesStorage;->access$502(Lorg/telegram/messenger/MessagesStorage;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 726
    .end local v1    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :catch_0
    move-exception v0

    .line 727
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
