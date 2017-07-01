.class Lorg/telegram/messenger/LocaleController$2;
.super Ljava/lang/Object;
.source "LocaleController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/LocaleController;->applyLanguageFile(Ljava/io/File;)Z
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
        "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/LocaleController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/LocaleController;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lorg/telegram/messenger/LocaleController$2;->this$0:Lorg/telegram/messenger/LocaleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 409
    check-cast p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/LocaleController$2;->compare(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/messenger/LocaleController$LocaleInfo;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/messenger/LocaleController$LocaleInfo;)I
    .locals 2
    .param p1, "o"    # Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .param p2, "o2"    # Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .prologue
    .line 412
    iget-object v0, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 413
    const/4 v0, -0x1

    .line 417
    :goto_0
    return v0

    .line 414
    :cond_0
    iget-object v0, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 415
    const/4 v0, 0x1

    goto :goto_0

    .line 417
    :cond_1
    iget-object v0, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
