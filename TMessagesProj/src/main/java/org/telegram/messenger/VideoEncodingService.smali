.class public Lorg/telegram/messenger/VideoEncodingService;
.super Landroid/app/Service;
.source "VideoEncodingService.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field private builder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private currentProgress:I

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 19
    iput-object v0, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 20
    iput-object v0, p0, Lorg/telegram/messenger/VideoEncodingService;->path:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/VideoEncodingService;->currentProgress:I

    .line 25
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileUploadProgressChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 26
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stopEncodingService:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 27
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 10
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 42
    sget v6, Lorg/telegram/messenger/NotificationCenter;->FileUploadProgressChanged:I

    if-ne p1, v6, :cond_2

    .line 43
    aget-object v1, p2, v5

    check-cast v1, Ljava/lang/String;

    .line 44
    .local v1, "fileName":Ljava/lang/String;
    iget-object v6, p0, Lorg/telegram/messenger/VideoEncodingService;->path:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/telegram/messenger/VideoEncodingService;->path:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 45
    aget-object v3, p2, v4

    check-cast v3, Ljava/lang/Float;

    .line 46
    .local v3, "progress":Ljava/lang/Float;
    const/4 v6, 0x2

    aget-object v0, p2, v6

    check-cast v0, Ljava/lang/Boolean;

    .line 47
    .local v0, "enc":Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lorg/telegram/messenger/VideoEncodingService;->currentProgress:I

    .line 48
    iget-object v6, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    const/16 v7, 0x64

    iget v8, p0, Lorg/telegram/messenger/VideoEncodingService;->currentProgress:I

    iget v9, p0, Lorg/telegram/messenger/VideoEncodingService;->currentProgress:I

    if-nez v9, :cond_1

    :goto_0
    invoke-virtual {v6, v7, v8, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 49
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v4

    const/4 v5, 0x4

    iget-object v6, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 57
    .end local v0    # "enc":Ljava/lang/Boolean;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v3    # "progress":Ljava/lang/Float;
    :cond_0
    :goto_1
    return-void

    .restart local v0    # "enc":Ljava/lang/Boolean;
    .restart local v1    # "fileName":Ljava/lang/String;
    .restart local v3    # "progress":Ljava/lang/Float;
    :cond_1
    move v4, v5

    .line 48
    goto :goto_0

    .line 51
    .end local v0    # "enc":Ljava/lang/Boolean;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v3    # "progress":Ljava/lang/Float;
    :cond_2
    sget v4, Lorg/telegram/messenger/NotificationCenter;->stopEncodingService:I

    if-ne p1, v4, :cond_0

    .line 52
    aget-object v2, p2, v5

    check-cast v2, Ljava/lang/String;

    .line 53
    .local v2, "filepath":Ljava/lang/String;
    if-eqz v2, :cond_3

    iget-object v4, p0, Lorg/telegram/messenger/VideoEncodingService;->path:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/VideoEncodingService;->stopSelf()V

    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg2"    # Landroid/content/Intent;

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/VideoEncodingService;->stopForeground(Z)V

    .line 35
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileUploadProgressChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 36
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stopEncodingService:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 37
    const-string/jumbo v0, "tmessages"

    const-string/jumbo v1, "destroy video service"

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const v4, 0x7f070458

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v0, 0x0

    .line 60
    const-string/jumbo v1, "path"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/VideoEncodingService;->path:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lorg/telegram/messenger/VideoEncodingService;->path:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 62
    invoke-virtual {p0}, Lorg/telegram/messenger/VideoEncodingService;->stopSelf()V

    .line 78
    :goto_0
    return v5

    .line 65
    :cond_0
    const-string/jumbo v1, "tmessages"

    const-string/jumbo v2, "start video service"

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-nez v1, :cond_1

    .line 67
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 68
    iget-object v1, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    const v2, 0x1080088

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 69
    iget-object v1, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 70
    iget-object v1, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string/jumbo v2, "AppName"

    const v3, 0x7f07009a

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 71
    iget-object v1, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string/jumbo v2, "SendingVideo"

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 72
    iget-object v1, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string/jumbo v2, "SendingVideo"

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 74
    :cond_1
    iput v0, p0, Lorg/telegram/messenger/VideoEncodingService;->currentProgress:I

    .line 75
    iget-object v1, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    const/16 v2, 0x64

    iget v3, p0, Lorg/telegram/messenger/VideoEncodingService;->currentProgress:I

    iget v4, p0, Lorg/telegram/messenger/VideoEncodingService;->currentProgress:I

    if-nez v4, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 76
    iget-object v0, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lorg/telegram/messenger/VideoEncodingService;->startForeground(ILandroid/app/Notification;)V

    .line 77
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method
