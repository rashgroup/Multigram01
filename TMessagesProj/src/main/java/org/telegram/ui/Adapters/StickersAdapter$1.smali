.class Lorg/telegram/ui/Adapters/StickersAdapter$1;
.super Ljava/lang/Object;
.source "StickersAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/StickersAdapter;->loadStikersForEmoji(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/telegram/tgnet/TLRPC$Document;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/StickersAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/StickersAdapter;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lorg/telegram/ui/Adapters/StickersAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 141
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Document;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/telegram/tgnet/TLRPC$Document;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Adapters/StickersAdapter$1;->compare(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$Document;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$Document;)I
    .locals 6
    .param p1, "lhs"    # Lorg/telegram/tgnet/TLRPC$Document;
    .param p2, "rhs"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 144
    iget-object v2, p0, Lorg/telegram/ui/Adapters/StickersAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersAdapter;

    # getter for: Lorg/telegram/ui/Adapters/StickersAdapter;->newRecentStickers:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/Adapters/StickersAdapter;->access$000(Lorg/telegram/ui/Adapters/StickersAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 145
    .local v0, "idx1":I
    iget-object v2, p0, Lorg/telegram/ui/Adapters/StickersAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersAdapter;

    # getter for: Lorg/telegram/ui/Adapters/StickersAdapter;->newRecentStickers:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/Adapters/StickersAdapter;->access$000(Lorg/telegram/ui/Adapters/StickersAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 146
    .local v1, "idx2":I
    if-le v0, v1, :cond_0

    .line 147
    const/4 v2, -0x1

    .line 151
    :goto_0
    return v2

    .line 148
    :cond_0
    if-ge v0, v1, :cond_1

    .line 149
    const/4 v2, 0x1

    goto :goto_0

    .line 151
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
