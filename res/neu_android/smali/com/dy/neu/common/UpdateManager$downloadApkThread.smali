.class Lcom/dy/neu/common/UpdateManager$downloadApkThread;
.super Ljava/lang/Thread;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dy/neu/common/UpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "downloadApkThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dy/neu/common/UpdateManager;


# direct methods
.method private constructor <init>(Lcom/dy/neu/common/UpdateManager;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/dy/neu/common/UpdateManager$downloadApkThread;->this$0:Lcom/dy/neu/common/UpdateManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dy/neu/common/UpdateManager;Lcom/dy/neu/common/UpdateManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dy/neu/common/UpdateManager;
    .param p2, "x1"    # Lcom/dy/neu/common/UpdateManager$1;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/dy/neu/common/UpdateManager$downloadApkThread;-><init>(Lcom/dy/neu/common/UpdateManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 105
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v12

    const-string v13, "mounted"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 108
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 109
    .local v10, "sdpath":Ljava/lang/String;
    iget-object v12, p0, Lcom/dy/neu/common/UpdateManager$downloadApkThread;->this$0:Lcom/dy/neu/common/UpdateManager;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "download"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # setter for: Lcom/dy/neu/common/UpdateManager;->mSavePath:Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/dy/neu/common/UpdateManager;->access$402(Lcom/dy/neu/common/UpdateManager;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    new-instance v11, Ljava/net/URL;

    iget-object v12, p0, Lcom/dy/neu/common/UpdateManager$downloadApkThread;->this$0:Lcom/dy/neu/common/UpdateManager;

    iget-object v12, v12, Lcom/dy/neu/common/UpdateManager;->mHashMap:Ljava/util/HashMap;

    const-string v13, "url"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 112
    .local v11, "url":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 113
    .local v2, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 115
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v8

    .line 117
    .local v8, "length":I
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 119
    .local v7, "is":Ljava/io/InputStream;
    new-instance v5, Ljava/io/File;

    iget-object v12, p0, Lcom/dy/neu/common/UpdateManager$downloadApkThread;->this$0:Lcom/dy/neu/common/UpdateManager;

    # getter for: Lcom/dy/neu/common/UpdateManager;->mSavePath:Ljava/lang/String;
    invoke-static {v12}, Lcom/dy/neu/common/UpdateManager;->access$400(Lcom/dy/neu/common/UpdateManager;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 123
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 125
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v12, p0, Lcom/dy/neu/common/UpdateManager$downloadApkThread;->this$0:Lcom/dy/neu/common/UpdateManager;

    # getter for: Lcom/dy/neu/common/UpdateManager;->mSavePath:Ljava/lang/String;
    invoke-static {v12}, Lcom/dy/neu/common/UpdateManager;->access$400(Lcom/dy/neu/common/UpdateManager;)Ljava/lang/String;

    move-result-object v13

    iget-object v12, p0, Lcom/dy/neu/common/UpdateManager$downloadApkThread;->this$0:Lcom/dy/neu/common/UpdateManager;

    iget-object v12, v12, Lcom/dy/neu/common/UpdateManager;->mHashMap:Ljava/util/HashMap;

    const-string v14, "name"

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-direct {v0, v13, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .local v0, "apkFile":Ljava/io/File;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 127
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 129
    .local v3, "count":I
    const/16 v12, 0x400

    new-array v1, v12, [B

    .line 133
    .local v1, "buf":[B
    :cond_1
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .line 134
    .local v9, "numread":I
    add-int/2addr v3, v9

    .line 136
    iget-object v12, p0, Lcom/dy/neu/common/UpdateManager$downloadApkThread;->this$0:Lcom/dy/neu/common/UpdateManager;

    int-to-float v13, v3

    int-to-float v14, v8

    div-float/2addr v13, v14

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float/2addr v13, v14

    float-to-int v13, v13

    # setter for: Lcom/dy/neu/common/UpdateManager;->progress:I
    invoke-static {v12, v13}, Lcom/dy/neu/common/UpdateManager;->access$002(Lcom/dy/neu/common/UpdateManager;I)I

    .line 138
    iget-object v12, p0, Lcom/dy/neu/common/UpdateManager$downloadApkThread;->this$0:Lcom/dy/neu/common/UpdateManager;

    # getter for: Lcom/dy/neu/common/UpdateManager;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/dy/neu/common/UpdateManager;->access$500(Lcom/dy/neu/common/UpdateManager;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 139
    if-gtz v9, :cond_3

    .line 142
    iget-object v12, p0, Lcom/dy/neu/common/UpdateManager$downloadApkThread;->this$0:Lcom/dy/neu/common/UpdateManager;

    # getter for: Lcom/dy/neu/common/UpdateManager;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/dy/neu/common/UpdateManager;->access$500(Lcom/dy/neu/common/UpdateManager;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 148
    :goto_0
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 149
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 159
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v1    # "buf":[B
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "count":I
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "length":I
    .end local v9    # "numread":I
    .end local v10    # "sdpath":Ljava/lang/String;
    .end local v11    # "url":Ljava/net/URL;
    :cond_2
    :goto_1
    iget-object v12, p0, Lcom/dy/neu/common/UpdateManager$downloadApkThread;->this$0:Lcom/dy/neu/common/UpdateManager;

    # getter for: Lcom/dy/neu/common/UpdateManager;->mDownloadDialog:Landroid/app/Dialog;
    invoke-static {v12}, Lcom/dy/neu/common/UpdateManager;->access$700(Lcom/dy/neu/common/UpdateManager;)Landroid/app/Dialog;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Dialog;->dismiss()V

    .line 160
    return-void

    .line 146
    .restart local v0    # "apkFile":Ljava/io/File;
    .restart local v1    # "buf":[B
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "count":I
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v8    # "length":I
    .restart local v9    # "numread":I
    .restart local v10    # "sdpath":Ljava/lang/String;
    .restart local v11    # "url":Ljava/net/URL;
    :cond_3
    const/4 v12, 0x0

    :try_start_1
    invoke-virtual {v6, v1, v12, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 147
    iget-object v12, p0, Lcom/dy/neu/common/UpdateManager$downloadApkThread;->this$0:Lcom/dy/neu/common/UpdateManager;

    # getter for: Lcom/dy/neu/common/UpdateManager;->cancelUpdate:Z
    invoke-static {v12}, Lcom/dy/neu/common/UpdateManager;->access$600(Lcom/dy/neu/common/UpdateManager;)Z
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v12

    if-eqz v12, :cond_1

    goto :goto_0

    .line 151
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v1    # "buf":[B
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "count":I
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "length":I
    .end local v9    # "numread":I
    .end local v10    # "sdpath":Ljava/lang/String;
    .end local v11    # "url":Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 153
    .local v4, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1

    .line 154
    .end local v4    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v4

    .line 156
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
