.class public Lorg/telegram/messenger/support/customtabsclient/shared/CustomTabsHelper;
.super Ljava/lang/Object;
.source "CustomTabsHelper.java"


# static fields
.field private static final ACTION_CUSTOM_TABS_CONNECTION:Ljava/lang/String; = "android.support.customtabs.action.CustomTabsService"

.field static final BETA_PACKAGE:Ljava/lang/String; = "com.chrome.beta"

.field static final DEV_PACKAGE:Ljava/lang/String; = "com.chrome.dev"

.field private static final EXTRA_CUSTOM_TABS_KEEP_ALIVE:Ljava/lang/String; = "android.support.customtabs.extra.KEEP_ALIVE"

.field static final LOCAL_PACKAGE:Ljava/lang/String; = "com.google.android.apps.chrome"

.field static final STABLE_PACKAGE:Ljava/lang/String; = "com.android.chrome"

.field private static final TAG:Ljava/lang/String; = "CustomTabsHelper"

.field private static sPackageNameToUse:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addKeepAliveExtra(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 48
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lorg/telegram/messenger/support/customtabsclient/shared/KeepAliveService;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 50
    .local v0, "keepAliveIntent":Landroid/content/Intent;
    const-string/jumbo v1, "android.support.customtabs.extra.KEEP_ALIVE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 51
    return-void
.end method

.method public static getPackageNameToUse(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x0

    .line 64
    sget-object v9, Lorg/telegram/messenger/support/customtabsclient/shared/CustomTabsHelper;->sPackageNameToUse:Ljava/lang/String;

    if-eqz v9, :cond_0

    sget-object v9, Lorg/telegram/messenger/support/customtabsclient/shared/CustomTabsHelper;->sPackageNameToUse:Ljava/lang/String;

    .line 106
    :goto_0
    return-object v9

    .line 66
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 68
    .local v6, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.VIEW"

    const-string/jumbo v10, "http://www.example.com"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 69
    .local v0, "activityIntent":Landroid/content/Intent;
    invoke-virtual {v6, v0, v11}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 70
    .local v1, "defaultViewHandlerInfo":Landroid/content/pm/ResolveInfo;
    const/4 v2, 0x0

    .line 71
    .local v2, "defaultViewHandlerPackageName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 72
    iget-object v9, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 76
    :cond_1
    invoke-virtual {v6, v0, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 77
    .local v7, "resolvedActivityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v5, "packagesSupportingCustomTabs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 79
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 80
    .local v8, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v9, "android.support.customtabs.action.CustomTabsService"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    invoke-virtual {v6, v8, v11}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 83
    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 89
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    .end local v8    # "serviceIntent":Landroid/content/Intent;
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 90
    const/4 v9, 0x0

    sput-object v9, Lorg/telegram/messenger/support/customtabsclient/shared/CustomTabsHelper;->sPackageNameToUse:Ljava/lang/String;

    .line 106
    :cond_4
    :goto_2
    sget-object v9, Lorg/telegram/messenger/support/customtabsclient/shared/CustomTabsHelper;->sPackageNameToUse:Ljava/lang/String;

    goto :goto_0

    .line 91
    :cond_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 92
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    sput-object v9, Lorg/telegram/messenger/support/customtabsclient/shared/CustomTabsHelper;->sPackageNameToUse:Ljava/lang/String;

    goto :goto_2

    .line 93
    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-static {p0, v0}, Lorg/telegram/messenger/support/customtabsclient/shared/CustomTabsHelper;->hasSpecializedHandlerIntents(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 96
    sput-object v2, Lorg/telegram/messenger/support/customtabsclient/shared/CustomTabsHelper;->sPackageNameToUse:Ljava/lang/String;

    goto :goto_2

    .line 97
    :cond_7
    const-string/jumbo v9, "com.android.chrome"

    invoke-interface {v5, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 98
    const-string/jumbo v9, "com.android.chrome"

    sput-object v9, Lorg/telegram/messenger/support/customtabsclient/shared/CustomTabsHelper;->sPackageNameToUse:Ljava/lang/String;

    goto :goto_2

    .line 99
    :cond_8
    const-string/jumbo v9, "com.chrome.beta"

    invoke-interface {v5, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 100
    const-string/jumbo v9, "com.chrome.beta"

    sput-object v9, Lorg/telegram/messenger/support/customtabsclient/shared/CustomTabsHelper;->sPackageNameToUse:Ljava/lang/String;

    goto :goto_2

    .line 101
    :cond_9
    const-string/jumbo v9, "com.chrome.dev"

    invoke-interface {v5, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 102
    const-string/jumbo v9, "com.chrome.dev"

    sput-object v9, Lorg/telegram/messenger/support/customtabsclient/shared/CustomTabsHelper;->sPackageNameToUse:Ljava/lang/String;

    goto :goto_2

    .line 103
    :cond_a
    const-string/jumbo v9, "com.google.android.apps.chrome"

    invoke-interface {v5, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 104
    const-string/jumbo v9, "com.google.android.apps.chrome"

    sput-object v9, Lorg/telegram/messenger/support/customtabsclient/shared/CustomTabsHelper;->sPackageNameToUse:Ljava/lang/String;

    goto :goto_2
.end method

.method public static getPackages()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 140
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "com.android.chrome"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "com.chrome.beta"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "com.chrome.dev"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "com.google.android.apps.chrome"

    aput-object v2, v0, v1

    return-object v0
.end method

.method private static hasSpecializedHandlerIntents(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 116
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 117
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/16 v7, 0x40

    invoke-virtual {v4, p1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 120
    .local v2, "handlers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 133
    .end local v2    # "handlers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v6

    .line 123
    .restart local v2    # "handlers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 124
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v1, v5, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 125
    .local v1, "filter":Landroid/content/IntentFilter;
    if-eqz v1, :cond_2

    .line 126
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v7

    if-eqz v7, :cond_2

    .line 127
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_2

    .line 128
    const/4 v6, 0x1

    goto :goto_0

    .line 130
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "handlers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v7, "CustomTabsHelper"

    const-string/jumbo v8, "Runtime exception while getting specialized handlers"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
