.class public Lorg/telegram/messenger/UserConfig;
.super Ljava/lang/Object;
.source "UserConfig.java"


# static fields
.field public static appLocked:Z

.field public static autoLockIn:I

.field public static blockedUsersLoaded:Z

.field public static contactsHash:Ljava/lang/String;

.field private static currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field public static draftsLoaded:Z

.field public static isWaitingForPasscodeEnter:Z

.field public static lastBroadcastId:I

.field public static lastContactsSyncTime:I

.field public static lastHintsSyncTime:I

.field public static lastLocalId:I

.field public static lastPauseTime:I

.field public static lastSendMessageId:I

.field public static lastUpdateVersion:Ljava/lang/String;

.field public static migrateOffsetAccess:J

.field public static migrateOffsetChannelId:I

.field public static migrateOffsetChatId:I

.field public static migrateOffsetDate:I

.field public static migrateOffsetId:I

.field public static migrateOffsetUserId:I

.field public static passcodeHash:Ljava/lang/String;

.field public static passcodeSalt:[B

.field public static passcodeType:I

.field public static pushString:Ljava/lang/String;

.field public static registeredForPush:Z

.field public static saveIncomingPhotos:Z

.field private static final sync:Ljava/lang/Object;

.field public static useFingerprint:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const v2, -0x33450

    const/4 v1, -0x1

    .line 24
    const-string/jumbo v0, ""

    sput-object v0, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    .line 25
    sput v2, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    .line 26
    sput v2, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 27
    sput v1, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    .line 28
    const-string/jumbo v0, ""

    sput-object v0, Lorg/telegram/messenger/UserConfig;->contactsHash:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    .line 32
    const-string/jumbo v0, ""

    sput-object v0, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    .line 36
    const/16 v0, 0xe10

    sput v0, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    .line 45
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    .line 46
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetDate:I

    .line 47
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    .line 48
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    .line 49
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    .line 50
    const-wide/16 v0, -0x1

    sput-wide v0, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPasscode(Ljava/lang/String;)Z
    .locals 9
    .param p0, "passcode"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 256
    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    array-length v5, v5

    if-nez v5, :cond_1

    .line 257
    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 258
    .local v4, "result":Z
    if-eqz v4, :cond_0

    .line 260
    const/16 v5, 0x10

    :try_start_0
    new-array v5, v5, [B

    sput-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    .line 261
    sget-object v5, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    sget-object v6, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    invoke-virtual {v5, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 262
    const-string/jumbo v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 263
    .local v3, "passcodeBytes":[B
    array-length v5, v3

    add-int/lit8 v5, v5, 0x20

    new-array v0, v5, [B

    .line 264
    .local v0, "bytes":[B
    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-static {v5, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    const/4 v5, 0x0

    const/16 v6, 0x10

    array-length v7, v3

    invoke-static {v3, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/4 v6, 0x0

    array-length v7, v3

    add-int/lit8 v7, v7, 0x10

    const/16 v8, 0x10

    invoke-static {v5, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v0, v5, v6}, Lorg/telegram/messenger/Utilities;->computeSHA256([BII)[B

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    .line 268
    const/4 v5, 0x0

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v0    # "bytes":[B
    .end local v3    # "passcodeBytes":[B
    .end local v4    # "result":Z
    :cond_0
    :goto_0
    return v4

    .line 269
    .restart local v4    # "result":Z
    :catch_0
    move-exception v1

    .line 270
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "tmessages"

    invoke-static {v5, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 276
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "result":Z
    :cond_1
    :try_start_1
    const-string/jumbo v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 277
    .restart local v3    # "passcodeBytes":[B
    array-length v5, v3

    add-int/lit8 v5, v5, 0x20

    new-array v0, v5, [B

    .line 278
    .restart local v0    # "bytes":[B
    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-static {v5, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    const/4 v5, 0x0

    const/16 v6, 0x10

    array-length v7, v3

    invoke-static {v3, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/4 v6, 0x0

    array-length v7, v3

    add-int/lit8 v7, v7, 0x10

    const/16 v8, 0x10

    invoke-static {v5, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v0, v5, v6}, Lorg/telegram/messenger/Utilities;->computeSHA256([BII)[B

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, "hash":Ljava/lang/String;
    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    goto :goto_0

    .line 283
    .end local v0    # "bytes":[B
    .end local v2    # "hash":Ljava/lang/String;
    .end local v3    # "passcodeBytes":[B
    :catch_1
    move-exception v1

    .line 284
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "tmessages"

    invoke-static {v5, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static clearConfig()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 291
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 292
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    .line 293
    const-string/jumbo v0, ""

    sput-object v0, Lorg/telegram/messenger/UserConfig;->contactsHash:Ljava/lang/String;

    .line 294
    const v0, -0x33450

    sput v0, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    .line 295
    sput v1, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    .line 296
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->saveIncomingPhotos:Z

    .line 297
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->blockedUsersLoaded:Z

    .line 298
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    .line 299
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetDate:I

    .line 300
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    .line 301
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    .line 302
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    .line 303
    const-wide/16 v0, -0x1

    sput-wide v0, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    .line 304
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    .line 305
    sput v2, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    .line 306
    const-string/jumbo v0, ""

    sput-object v0, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    .line 307
    new-array v0, v2, [B

    sput-object v0, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    .line 308
    const/16 v0, 0xe10

    sput v0, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    .line 309
    sput v2, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    .line 310
    sput-boolean v3, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    .line 311
    sput-boolean v3, Lorg/telegram/messenger/UserConfig;->draftsLoaded:Z

    .line 312
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    .line 313
    sget-object v0, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION_STRING:Ljava/lang/String;

    sput-object v0, Lorg/telegram/messenger/UserConfig;->lastUpdateVersion:Ljava/lang/String;

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v4

    long-to-int v0, v0

    const v1, 0x14370

    sub-int/2addr v0, v1

    sput v0, Lorg/telegram/messenger/UserConfig;->lastContactsSyncTime:I

    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v4

    long-to-int v0, v0

    const v1, 0x15f90

    sub-int/2addr v0, v1

    sput v0, Lorg/telegram/messenger/UserConfig;->lastHintsSyncTime:I

    .line 316
    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 317
    return-void
.end method

.method public static getClientUserId()I
    .locals 2

    .prologue
    .line 128
    sget-object v1, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;
    .locals 2

    .prologue
    .line 134
    sget-object v1, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    monitor-exit v1

    return-object v0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getNewMessageId()I
    .locals 3

    .prologue
    .line 54
    sget-object v2, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v2

    .line 55
    :try_start_0
    sget v0, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    .line 56
    .local v0, "id":I
    sget v1, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    .line 57
    monitor-exit v2

    .line 58
    return v0

    .line 57
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isClientActivated()Z
    .locals 2

    .prologue
    .line 122
    sget-object v1, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 123
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static loadConfig()V
    .locals 16

    .prologue
    .line 146
    sget-object v11, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v11

    .line 147
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v10

    const-string/jumbo v12, "user.dat"

    invoke-direct {v0, v10, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 148
    .local v0, "configFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_5

    .line 150
    :try_start_1
    new-instance v2, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v2, v0}, Lorg/telegram/tgnet/SerializedData;-><init>(Ljava/io/File;)V

    .line 151
    .local v2, "data":Lorg/telegram/tgnet/SerializedData;
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v9

    .line 152
    .local v9, "ver":I
    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 153
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v1

    .line 154
    .local v1, "constructor":I
    const/4 v10, 0x0

    invoke-static {v2, v1, v10}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    sput-object v10, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 155
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v10

    sput v10, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    .line 156
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v10

    sput v10, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    .line 157
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v10

    sput v10, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    .line 158
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/SerializedData;->readBool(Z)Z

    move-result v10

    sput-boolean v10, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    .line 159
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    .line 160
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v10

    sput v10, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    .line 161
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v10

    sput v10, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 162
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lorg/telegram/messenger/UserConfig;->contactsHash:Ljava/lang/String;

    .line 163
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    .line 164
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/SerializedData;->readBool(Z)Z

    move-result v10

    sput-boolean v10, Lorg/telegram/messenger/UserConfig;->saveIncomingPhotos:Z

    .line 165
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v10

    sput v10, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    .line 166
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v10

    sput v10, Lorg/telegram/messenger/MessagesStorage;->lastSecretVersion:I

    .line 167
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v8

    .line 168
    .local v8, "val":I
    const/4 v10, 0x1

    if-ne v8, v10, :cond_0

    .line 169
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/SerializedData;->readByteArray(Z)[B

    move-result-object v10

    sput-object v10, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    .line 171
    :cond_0
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v10

    sput v10, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    .line 172
    sget-object v10, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v12, Lorg/telegram/messenger/UserConfig$1;

    invoke-direct {v12, v0}, Lorg/telegram/messenger/UserConfig$1;-><init>(Ljava/io/File;)V

    invoke-virtual {v10, v12}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 190
    .end local v1    # "constructor":I
    .end local v8    # "val":I
    :cond_1
    :goto_0
    sget v10, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    const v12, -0x33450

    if-le v10, v12, :cond_2

    .line 191
    const v10, -0x33450

    sput v10, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 193
    :cond_2
    sget v10, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    const v12, -0x33450

    if-le v10, v12, :cond_3

    .line 194
    const v10, -0x33450

    sput v10, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    .line 196
    :cond_3
    invoke-virtual {v2}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    .line 197
    sget-object v10, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v12, Lorg/telegram/messenger/UserConfig$2;

    invoke-direct {v12, v0}, Lorg/telegram/messenger/UserConfig$2;-><init>(Ljava/io/File;)V

    invoke-virtual {v10, v12}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    .end local v2    # "data":Lorg/telegram/tgnet/SerializedData;
    .end local v9    # "ver":I
    :goto_1
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 253
    return-void

    .line 178
    .restart local v2    # "data":Lorg/telegram/tgnet/SerializedData;
    .restart local v9    # "ver":I
    :cond_4
    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 179
    const/4 v10, 0x0

    :try_start_3
    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v1

    .line 180
    .restart local v1    # "constructor":I
    const/4 v10, 0x0

    invoke-static {v2, v1, v10}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    sput-object v10, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 182
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v12, "userconfing"

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 183
    .local v5, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v10, "registeredForPush"

    const/4 v12, 0x0

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    sput-boolean v10, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    .line 184
    const-string/jumbo v10, "pushString2"

    const-string/jumbo v12, ""

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    .line 185
    const-string/jumbo v10, "lastSendMessageId"

    const v12, -0x33450

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    .line 186
    const-string/jumbo v10, "lastLocalId"

    const v12, -0x33450

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 187
    const-string/jumbo v10, "contactsHash"

    const-string/jumbo v12, ""

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lorg/telegram/messenger/UserConfig;->contactsHash:Ljava/lang/String;

    .line 188
    const-string/jumbo v10, "saveIncomingPhotos"

    const/4 v12, 0x0

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    sput-boolean v10, Lorg/telegram/messenger/UserConfig;->saveIncomingPhotos:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 203
    .end local v1    # "constructor":I
    .end local v2    # "data":Lorg/telegram/tgnet/SerializedData;
    .end local v5    # "preferences":Landroid/content/SharedPreferences;
    .end local v9    # "ver":I
    :catch_0
    move-exception v3

    .line 204
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v10, "tmessages"

    invoke-static {v10, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 252
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v10

    .line 207
    :cond_5
    :try_start_5
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v12, "userconfing"

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 208
    .restart local v5    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v10, "registeredForPush"

    const/4 v12, 0x0

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    sput-boolean v10, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    .line 209
    const-string/jumbo v10, "pushString2"

    const-string/jumbo v12, ""

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    .line 210
    const-string/jumbo v10, "lastSendMessageId"

    const v12, -0x33450

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    .line 211
    const-string/jumbo v10, "lastLocalId"

    const v12, -0x33450

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 212
    const-string/jumbo v10, "contactsHash"

    const-string/jumbo v12, ""

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lorg/telegram/messenger/UserConfig;->contactsHash:Ljava/lang/String;

    .line 213
    const-string/jumbo v10, "saveIncomingPhotos"

    const/4 v12, 0x0

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    sput-boolean v10, Lorg/telegram/messenger/UserConfig;->saveIncomingPhotos:Z

    .line 214
    const-string/jumbo v10, "lastBroadcastId"

    const/4 v12, -0x1

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    .line 215
    const-string/jumbo v10, "blockedUsersLoaded"

    const/4 v12, 0x0

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    sput-boolean v10, Lorg/telegram/messenger/UserConfig;->blockedUsersLoaded:Z

    .line 216
    const-string/jumbo v10, "passcodeHash1"

    const-string/jumbo v12, ""

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    .line 217
    const-string/jumbo v10, "appLocked"

    const/4 v12, 0x0

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    sput-boolean v10, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    .line 218
    const-string/jumbo v10, "passcodeType"

    const/4 v12, 0x0

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    .line 219
    const-string/jumbo v10, "autoLockIn"

    const/16 v12, 0xe10

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    .line 220
    const-string/jumbo v10, "lastPauseTime"

    const/4 v12, 0x0

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    .line 221
    const-string/jumbo v10, "useFingerprint"

    const/4 v12, 0x1

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    sput-boolean v10, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    .line 222
    const-string/jumbo v10, "lastUpdateVersion2"

    const-string/jumbo v12, "3.5"

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lorg/telegram/messenger/UserConfig;->lastUpdateVersion:Ljava/lang/String;

    .line 223
    const-string/jumbo v10, "lastContactsSyncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    long-to-int v12, v12

    const v13, 0x14370

    sub-int/2addr v12, v13

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lorg/telegram/messenger/UserConfig;->lastContactsSyncTime:I

    .line 224
    const-string/jumbo v10, "lastHintsSyncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    long-to-int v12, v12

    const v13, 0x15f90

    sub-int/2addr v12, v13

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lorg/telegram/messenger/UserConfig;->lastHintsSyncTime:I

    .line 225
    const-string/jumbo v10, "draftsLoaded"

    const/4 v12, 0x0

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    sput-boolean v10, Lorg/telegram/messenger/UserConfig;->draftsLoaded:Z

    .line 227
    const-string/jumbo v10, "migrateOffsetId"

    const/4 v12, 0x0

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    .line 228
    sget v10, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    const/4 v12, -0x1

    if-eq v10, v12, :cond_6

    .line 229
    const-string/jumbo v10, "migrateOffsetDate"

    const/4 v12, 0x0

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lorg/telegram/messenger/UserConfig;->migrateOffsetDate:I

    .line 230
    const-string/jumbo v10, "migrateOffsetUserId"

    const/4 v12, 0x0

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    .line 231
    const-string/jumbo v10, "migrateOffsetChatId"

    const/4 v12, 0x0

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    .line 232
    const-string/jumbo v10, "migrateOffsetChannelId"

    const/4 v12, 0x0

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    .line 233
    const-string/jumbo v10, "migrateOffsetAccess"

    const-wide/16 v12, 0x0

    invoke-interface {v5, v10, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    sput-wide v12, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    .line 236
    :cond_6
    const-string/jumbo v10, "user"

    const/4 v12, 0x0

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 237
    .local v6, "user":Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 238
    const/4 v10, 0x0

    invoke-static {v6, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    .line 239
    .local v7, "userBytes":[B
    if-eqz v7, :cond_7

    .line 240
    new-instance v2, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v2, v7}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 241
    .restart local v2    # "data":Lorg/telegram/tgnet/SerializedData;
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v10

    const/4 v12, 0x0

    invoke-static {v2, v10, v12}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    sput-object v10, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 242
    invoke-virtual {v2}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    .line 245
    .end local v2    # "data":Lorg/telegram/tgnet/SerializedData;
    .end local v7    # "userBytes":[B
    :cond_7
    const-string/jumbo v10, "passcodeSalt"

    const-string/jumbo v12, ""

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 246
    .local v4, "passcodeSaltString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_8

    .line 247
    const/4 v10, 0x0

    invoke-static {v4, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v10

    sput-object v10, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    goto/16 :goto_1

    .line 249
    :cond_8
    const/4 v10, 0x0

    new-array v10, v10, [B

    sput-object v10, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1
.end method

.method public static saveConfig(Z)V
    .locals 1
    .param p0, "withFile"    # Z

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/telegram/messenger/UserConfig;->saveConfig(ZLjava/io/File;)V

    .line 63
    return-void
.end method

.method public static saveConfig(ZLjava/io/File;)V
    .locals 10
    .param p0, "withFile"    # Z
    .param p1, "oldFile"    # Ljava/io/File;

    .prologue
    .line 66
    sget-object v6, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v6

    .line 68
    :try_start_0
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v7, "userconfing"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 69
    .local v3, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 70
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v5, "registeredForPush"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 71
    const-string/jumbo v5, "pushString2"

    sget-object v7, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 72
    const-string/jumbo v5, "lastSendMessageId"

    sget v7, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 73
    const-string/jumbo v5, "lastLocalId"

    sget v7, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 74
    const-string/jumbo v5, "contactsHash"

    sget-object v7, Lorg/telegram/messenger/UserConfig;->contactsHash:Ljava/lang/String;

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 75
    const-string/jumbo v5, "saveIncomingPhotos"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->saveIncomingPhotos:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 76
    const-string/jumbo v5, "lastBroadcastId"

    sget v7, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 77
    const-string/jumbo v5, "blockedUsersLoaded"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->blockedUsersLoaded:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 78
    const-string/jumbo v5, "passcodeHash1"

    sget-object v7, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 79
    const-string/jumbo v7, "passcodeSalt"

    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    array-length v5, v5

    if-lez v5, :cond_3

    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/4 v8, 0x0

    invoke-static {v5, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-interface {v2, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 80
    const-string/jumbo v5, "appLocked"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 81
    const-string/jumbo v5, "passcodeType"

    sget v7, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 82
    const-string/jumbo v5, "autoLockIn"

    sget v7, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 83
    const-string/jumbo v5, "lastPauseTime"

    sget v7, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 84
    const-string/jumbo v5, "lastUpdateVersion2"

    sget-object v7, Lorg/telegram/messenger/UserConfig;->lastUpdateVersion:Ljava/lang/String;

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    const-string/jumbo v5, "lastContactsSyncTime"

    sget v7, Lorg/telegram/messenger/UserConfig;->lastContactsSyncTime:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 86
    const-string/jumbo v5, "useFingerprint"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 87
    const-string/jumbo v5, "lastHintsSyncTime"

    sget v7, Lorg/telegram/messenger/UserConfig;->lastHintsSyncTime:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 88
    const-string/jumbo v5, "draftsLoaded"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->draftsLoaded:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 90
    const-string/jumbo v5, "migrateOffsetId"

    sget v7, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 91
    sget v5, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    .line 92
    const-string/jumbo v5, "migrateOffsetDate"

    sget v7, Lorg/telegram/messenger/UserConfig;->migrateOffsetDate:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 93
    const-string/jumbo v5, "migrateOffsetUserId"

    sget v7, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 94
    const-string/jumbo v5, "migrateOffsetChatId"

    sget v7, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 95
    const-string/jumbo v5, "migrateOffsetChannelId"

    sget v7, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 96
    const-string/jumbo v5, "migrateOffsetAccess"

    sget-wide v8, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    invoke-interface {v2, v5, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 99
    :cond_0
    sget-object v5, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_4

    .line 100
    if-eqz p0, :cond_1

    .line 101
    new-instance v0, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v0}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    .line 102
    .local v0, "data":Lorg/telegram/tgnet/SerializedData;
    sget-object v5, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v5, v0}, Lorg/telegram/tgnet/TLRPC$User;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 103
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v5, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, "userString":Ljava/lang/String;
    const-string/jumbo v5, "user"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 105
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    .line 111
    .end local v0    # "data":Lorg/telegram/tgnet/SerializedData;
    .end local v4    # "userString":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 112
    if-eqz p1, :cond_2

    .line 113
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    :cond_2
    :goto_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    return-void

    .line 79
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v3    # "preferences":Landroid/content/SharedPreferences;
    :cond_3
    :try_start_2
    const-string/jumbo v5, ""

    goto/16 :goto_0

    .line 108
    :cond_4
    const-string/jumbo v5, "user"

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 115
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v5, "tmessages"

    invoke-static {v5, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 118
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method

.method public static setCurrentUser(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 2
    .param p0, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 140
    sget-object v1, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 141
    :try_start_0
    sput-object p0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 142
    monitor-exit v1

    .line 143
    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
