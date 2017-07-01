.class Lorg/telegram/messenger/ImageLoader$HttpFileTask;
.super Landroid/os/AsyncTask;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpFileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private canRetry:Z

.field private ext:Ljava/lang/String;

.field private fileOutputStream:Ljava/io/RandomAccessFile;

.field private tempFile:Ljava/io/File;

.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "tempFile"    # Ljava/io/File;
    .param p4, "ext"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->fileOutputStream:Ljava/io/RandomAccessFile;

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->canRetry:Z

    .line 105
    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->url:Ljava/lang/String;

    .line 106
    iput-object p3, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->tempFile:Ljava/io/File;

    .line 107
    iput-object p4, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->ext:Ljava/lang/String;

    .line 108
    return-void
.end method

.method static synthetic access$4000(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    .prologue
    .line 96
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->canRetry:Z

    return v0
.end method

.method static synthetic access$4100(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    .prologue
    .line 96
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4200(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    .prologue
    .line 96
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->tempFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$4300(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    .prologue
    .line 96
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->ext:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 16
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 111
    const/4 v8, 0x0

    .line 112
    .local v8, "httpConnectionStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 114
    .local v4, "done":Z
    const/4 v7, 0x0

    .line 116
    .local v7, "httpConnection":Ljava/net/URLConnection;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->url:Ljava/lang/String;

    invoke-direct {v5, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 117
    .local v5, "downloadUrl":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    .line 118
    const-string/jumbo v13, "User-Agent"

    const-string/jumbo v14, "Mozilla/5.0 (Linux; Android 4.4; Nexus 5 Build/_BuildID_) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/30.0.0.0 Mobile Safari/537.36"

    invoke-virtual {v7, v13, v14}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string/jumbo v13, "Referer"

    const-string/jumbo v14, "google.com"

    invoke-virtual {v7, v13, v14}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/16 v13, 0x1388

    invoke-virtual {v7, v13}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 121
    const/16 v13, 0x1388

    invoke-virtual {v7, v13}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 122
    instance-of v13, v7, Ljava/net/HttpURLConnection;

    if-eqz v13, :cond_1

    .line 123
    move-object v0, v7

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v9, v0

    .line 124
    .local v9, "httpURLConnection":Ljava/net/HttpURLConnection;
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 125
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    .line 126
    .local v12, "status":I
    const/16 v13, 0x12e

    if-eq v12, v13, :cond_0

    const/16 v13, 0x12d

    if-eq v12, v13, :cond_0

    const/16 v13, 0x12f

    if-ne v12, v13, :cond_1

    .line 127
    :cond_0
    const-string/jumbo v13, "Location"

    invoke-virtual {v9, v13}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 128
    .local v10, "newUrl":Ljava/lang/String;
    const-string/jumbo v13, "Set-Cookie"

    invoke-virtual {v9, v13}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "cookies":Ljava/lang/String;
    new-instance v5, Ljava/net/URL;

    .end local v5    # "downloadUrl":Ljava/net/URL;
    invoke-direct {v5, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 130
    .restart local v5    # "downloadUrl":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    .line 131
    const-string/jumbo v13, "Cookie"

    invoke-virtual {v7, v13, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string/jumbo v13, "User-Agent"

    const-string/jumbo v14, "Mozilla/5.0 (Linux; Android 4.4; Nexus 5 Build/_BuildID_) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/30.0.0.0 Mobile Safari/537.36"

    invoke-virtual {v7, v13, v14}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string/jumbo v13, "Referer"

    const-string/jumbo v14, "google.com"

    invoke-virtual {v7, v13, v14}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .end local v2    # "cookies":Ljava/lang/String;
    .end local v9    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v10    # "newUrl":Ljava/lang/String;
    .end local v12    # "status":I
    :cond_1
    invoke-virtual {v7}, Ljava/net/URLConnection;->connect()V

    .line 137
    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 139
    new-instance v13, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->tempFile:Ljava/io/File;

    const-string/jumbo v15, "rws"

    invoke-direct {v13, v14, v15}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->fileOutputStream:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v5    # "downloadUrl":Ljava/net/URL;
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->canRetry:Z

    if-eqz v13, :cond_5

    .line 149
    if-eqz v7, :cond_2

    :try_start_1
    instance-of v13, v7, Ljava/net/HttpURLConnection;

    if-eqz v13, :cond_2

    .line 150
    check-cast v7, Ljava/net/HttpURLConnection;

    .end local v7    # "httpConnection":Ljava/net/URLConnection;
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 151
    .local v1, "code":I
    const/16 v13, 0xc8

    if-eq v1, v13, :cond_2

    const/16 v13, 0xca

    if-eq v1, v13, :cond_2

    const/16 v13, 0x130

    if-eq v1, v13, :cond_2

    .line 152
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->canRetry:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    .end local v1    # "code":I
    :cond_2
    :goto_1
    if-eqz v8, :cond_3

    .line 161
    const/16 v13, 0x1000

    :try_start_2
    new-array v3, v13, [B

    .line 163
    .local v3, "data":[B
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->isCancelled()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    move-result v13

    if-eqz v13, :cond_7

    .line 187
    .end local v3    # "data":[B
    :cond_3
    :goto_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->fileOutputStream:Ljava/io/RandomAccessFile;

    if-eqz v13, :cond_4

    .line 188
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->fileOutputStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V

    .line 189
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->fileOutputStream:Ljava/io/RandomAccessFile;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .line 196
    :cond_4
    :goto_4
    if-eqz v8, :cond_5

    .line 197
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    .line 204
    :cond_5
    :goto_5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    return-object v13

    .line 140
    .restart local v7    # "httpConnection":Ljava/net/URLConnection;
    :catch_0
    move-exception v6

    .line 141
    .local v6, "e":Ljava/lang/Throwable;
    instance-of v13, v6, Ljava/net/UnknownHostException;

    if-eqz v13, :cond_6

    .line 142
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->canRetry:Z

    .line 144
    :cond_6
    const-string/jumbo v13, "tmessages"

    invoke-static {v13, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 155
    .end local v6    # "e":Ljava/lang/Throwable;
    .end local v7    # "httpConnection":Ljava/net/URLConnection;
    :catch_1
    move-exception v6

    .line 156
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "tmessages"

    invoke-static {v13, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 167
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v3    # "data":[B
    :cond_7
    :try_start_5
    invoke-virtual {v8, v3}, Ljava/io/InputStream;->read([B)I

    move-result v11

    .line 168
    .local v11, "read":I
    if-lez v11, :cond_8

    .line 169
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->fileOutputStream:Ljava/io/RandomAccessFile;

    const/4 v14, 0x0

    invoke-virtual {v13, v3, v14, v11}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 176
    .end local v11    # "read":I
    :catch_2
    move-exception v6

    .line 177
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v13, "tmessages"

    invoke-static {v13, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    .line 181
    .end local v3    # "data":[B
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v6

    .line 182
    .local v6, "e":Ljava/lang/Throwable;
    const-string/jumbo v13, "tmessages"

    invoke-static {v13, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 170
    .end local v6    # "e":Ljava/lang/Throwable;
    .restart local v3    # "data":[B
    .restart local v11    # "read":I
    :cond_8
    const/4 v13, -0x1

    if-ne v11, v13, :cond_3

    .line 171
    const/4 v4, 0x1

    goto :goto_3

    .line 191
    .end local v3    # "data":[B
    .end local v11    # "read":I
    :catch_4
    move-exception v6

    .line 192
    .restart local v6    # "e":Ljava/lang/Throwable;
    const-string/jumbo v13, "tmessages"

    invoke-static {v13, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 199
    .end local v6    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v6

    .line 200
    .restart local v6    # "e":Ljava/lang/Throwable;
    const-string/jumbo v13, "tmessages"

    invoke-static {v13, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 96
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    const/4 v1, 0x2

    # invokes: Lorg/telegram/messenger/ImageLoader;->runHttpFileLoadTasks(Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V
    invoke-static {v0, p0, v1}, Lorg/telegram/messenger/ImageLoader;->access$000(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V

    .line 215
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 209
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    # invokes: Lorg/telegram/messenger/ImageLoader;->runHttpFileLoadTasks(Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V
    invoke-static {v1, p0, v0}, Lorg/telegram/messenger/ImageLoader;->access$000(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V

    .line 210
    return-void

    .line 209
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 96
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
