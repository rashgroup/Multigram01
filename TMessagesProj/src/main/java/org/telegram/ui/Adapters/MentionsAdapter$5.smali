.class Lorg/telegram/ui/Adapters/MentionsAdapter$5;
.super Ljava/lang/Object;
.source "MentionsAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/MentionsAdapter;->searchUsernameOrHashtag(Ljava/lang/String;ILjava/util/ArrayList;)V
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
        "Lorg/telegram/tgnet/TLRPC$User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

.field final synthetic val$newResultsHashMap:Ljava/util/HashMap;

.field final synthetic val$users:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 639
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$5;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$5;->val$newResultsHashMap:Ljava/util/HashMap;

    iput-object p3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$5;->val$users:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 639
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Adapters/MentionsAdapter$5;->compare(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$User;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$User;)I
    .locals 7
    .param p1, "lhs"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "rhs"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 642
    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$5;->val$newResultsHashMap:Ljava/util/HashMap;

    iget v6, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$5;->val$newResultsHashMap:Ljava/util/HashMap;

    iget v6, p2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v3

    .line 658
    :cond_0
    :goto_0
    return v2

    .line 644
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$5;->val$newResultsHashMap:Ljava/util/HashMap;

    iget v6, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 646
    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$5;->val$newResultsHashMap:Ljava/util/HashMap;

    iget v6, p2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v4

    .line 647
    goto :goto_0

    .line 649
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$5;->val$users:Ljava/util/ArrayList;

    iget v6, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 650
    .local v0, "lhsNum":I
    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$5;->val$users:Ljava/util/ArrayList;

    iget v6, p2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 651
    .local v1, "rhsNum":I
    if-eq v0, v2, :cond_4

    if-eq v1, v2, :cond_4

    .line 652
    if-lt v0, v1, :cond_0

    if-ne v0, v1, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_0

    .line 653
    :cond_4
    if-eq v0, v2, :cond_5

    if-eq v1, v2, :cond_0

    .line 655
    :cond_5
    if-ne v0, v2, :cond_6

    if-eq v1, v2, :cond_6

    move v2, v4

    .line 656
    goto :goto_0

    :cond_6
    move v2, v3

    .line 658
    goto :goto_0
.end method
