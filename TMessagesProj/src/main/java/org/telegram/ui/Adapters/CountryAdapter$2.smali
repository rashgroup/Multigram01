.class Lorg/telegram/ui/Adapters/CountryAdapter$2;
.super Ljava/lang/Object;
.source "CountryAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/CountryAdapter;-><init>(Landroid/content/Context;)V
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
        "Lorg/telegram/ui/Adapters/CountryAdapter$Country;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/CountryAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/CountryAdapter;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lorg/telegram/ui/Adapters/CountryAdapter$2;->this$0:Lorg/telegram/ui/Adapters/CountryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 79
    check-cast p1, Lorg/telegram/ui/Adapters/CountryAdapter$Country;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/telegram/ui/Adapters/CountryAdapter$Country;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Adapters/CountryAdapter$2;->compare(Lorg/telegram/ui/Adapters/CountryAdapter$Country;Lorg/telegram/ui/Adapters/CountryAdapter$Country;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/ui/Adapters/CountryAdapter$Country;Lorg/telegram/ui/Adapters/CountryAdapter$Country;)I
    .locals 2
    .param p1, "country"    # Lorg/telegram/ui/Adapters/CountryAdapter$Country;
    .param p2, "country2"    # Lorg/telegram/ui/Adapters/CountryAdapter$Country;

    .prologue
    .line 82
    iget-object v0, p1, Lorg/telegram/ui/Adapters/CountryAdapter$Country;->name:Ljava/lang/String;

    iget-object v1, p2, Lorg/telegram/ui/Adapters/CountryAdapter$Country;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
