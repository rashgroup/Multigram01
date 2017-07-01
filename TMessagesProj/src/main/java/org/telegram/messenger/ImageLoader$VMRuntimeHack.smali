.class public Lorg/telegram/messenger/ImageLoader$VMRuntimeHack;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VMRuntimeHack"
.end annotation


# instance fields
.field private runtime:Ljava/lang/Object;

.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;

.field private trackAllocation:Ljava/lang/reflect/Method;

.field private trackFree:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/ImageLoader;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 928
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$VMRuntimeHack;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 899
    iput-object v8, p0, Lorg/telegram/messenger/ImageLoader$VMRuntimeHack;->runtime:Ljava/lang/Object;

    .line 900
    iput-object v8, p0, Lorg/telegram/messenger/ImageLoader$VMRuntimeHack;->trackAllocation:Ljava/lang/reflect/Method;

    .line 901
    iput-object v8, p0, Lorg/telegram/messenger/ImageLoader$VMRuntimeHack;->trackFree:Ljava/lang/reflect/Method;

    .line 930
    :try_start_0
    const-string/jumbo v4, "dalvik.system.VMRuntime"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 931
    .local v0, "cl":Ljava/lang/Class;
    const-string/jumbo v4, "getRuntime"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 932
    .local v2, "getRt":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v3, v4, [Ljava/lang/Object;

    .line 933
    .local v3, "objects":[Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/messenger/ImageLoader$VMRuntimeHack;->runtime:Ljava/lang/Object;

    .line 934
    const-string/jumbo v4, "trackExternalAllocation"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/messenger/ImageLoader$VMRuntimeHack;->trackAllocation:Ljava/lang/reflect/Method;

    .line 935
    const-string/jumbo v4, "trackExternalFree"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/messenger/ImageLoader$VMRuntimeHack;->trackFree:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 942
    .end local v0    # "cl":Ljava/lang/Class;
    .end local v2    # "getRt":Ljava/lang/reflect/Method;
    .end local v3    # "objects":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 936
    :catch_0
    move-exception v1

    .line 937
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "tmessages"

    invoke-static {v4, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 938
    iput-object v8, p0, Lorg/telegram/messenger/ImageLoader$VMRuntimeHack;->runtime:Ljava/lang/Object;

    .line 939
    iput-object v8, p0, Lorg/telegram/messenger/ImageLoader$VMRuntimeHack;->trackAllocation:Ljava/lang/reflect/Method;

    .line 940
    iput-object v8, p0, Lorg/telegram/messenger/ImageLoader$VMRuntimeHack;->trackFree:Ljava/lang/reflect/Method;

    goto :goto_0
.end method


# virtual methods
.method public trackAlloc(J)Z
    .locals 9
    .param p1, "size"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 904
    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$VMRuntimeHack;->runtime:Ljava/lang/Object;

    if-nez v4, :cond_1

    move v2, v3

    .line 911
    :cond_0
    :goto_0
    return v2

    .line 908
    :cond_1
    :try_start_0
    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$VMRuntimeHack;->trackAllocation:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$VMRuntimeHack;->runtime:Ljava/lang/Object;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 909
    .local v1, "res":Ljava/lang/Object;
    instance-of v4, v1, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "res":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 910
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v2, v3

    .line 911
    goto :goto_0
.end method

.method public trackFree(J)Z
    .locals 9
    .param p1, "size"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 916
    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$VMRuntimeHack;->runtime:Ljava/lang/Object;

    if-nez v4, :cond_1

    move v2, v3

    .line 923
    :cond_0
    :goto_0
    return v2

    .line 920
    :cond_1
    :try_start_0
    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$VMRuntimeHack;->trackFree:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$VMRuntimeHack;->runtime:Ljava/lang/Object;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 921
    .local v1, "res":Ljava/lang/Object;
    instance-of v4, v1, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "res":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 922
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v2, v3

    .line 923
    goto :goto_0
.end method
