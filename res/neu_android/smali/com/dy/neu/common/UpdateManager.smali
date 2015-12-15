.class public Lcom/dy/neu/common/UpdateManager;
.super Ljava/lang/Object;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dy/neu/common/UpdateManager$downloadApkThread;
    }
.end annotation


# static fields
.field private static final DOWNLOAD:I = 0x1

.field private static final DOWNLOAD_FINISH:I = 0x2


# instance fields
.field private cancelUpdate:Z

.field private mContext:Landroid/content/Context;

.field private mDownloadDialog:Landroid/app/Dialog;

.field private mHandler:Landroid/os/Handler;

.field mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProgress:Landroid/widget/ProgressBar;

.field private mSavePath:Ljava/lang/String;

.field private progress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dy/neu/common/UpdateManager;->cancelUpdate:Z

    .line 55
    new-instance v0, Lcom/dy/neu/common/UpdateManager$1;

    invoke-direct {v0, p0}, Lcom/dy/neu/common/UpdateManager$1;-><init>(Lcom/dy/neu/common/UpdateManager;)V

    iput-object v0, p0, Lcom/dy/neu/common/UpdateManager;->mHandler:Landroid/os/Handler;

    .line 78
    iput-object p1, p0, Lcom/dy/neu/common/UpdateManager;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/dy/neu/common/UpdateManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/common/UpdateManager;

    .prologue
    .line 35
    iget v0, p0, Lcom/dy/neu/common/UpdateManager;->progress:I

    return v0
.end method

.method static synthetic access$002(Lcom/dy/neu/common/UpdateManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dy/neu/common/UpdateManager;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/dy/neu/common/UpdateManager;->progress:I

    return p1
.end method

.method static synthetic access$100(Lcom/dy/neu/common/UpdateManager;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/common/UpdateManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dy/neu/common/UpdateManager;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dy/neu/common/UpdateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/dy/neu/common/UpdateManager;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/dy/neu/common/UpdateManager;->installApk()V

    return-void
.end method

.method static synthetic access$400(Lcom/dy/neu/common/UpdateManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/common/UpdateManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dy/neu/common/UpdateManager;->mSavePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/dy/neu/common/UpdateManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/dy/neu/common/UpdateManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/dy/neu/common/UpdateManager;->mSavePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/dy/neu/common/UpdateManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/common/UpdateManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dy/neu/common/UpdateManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/dy/neu/common/UpdateManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/common/UpdateManager;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/dy/neu/common/UpdateManager;->cancelUpdate:Z

    return v0
.end method

.method static synthetic access$700(Lcom/dy/neu/common/UpdateManager;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/common/UpdateManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dy/neu/common/UpdateManager;->mDownloadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private downloadApk()V
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lcom/dy/neu/common/UpdateManager$downloadApkThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dy/neu/common/UpdateManager$downloadApkThread;-><init>(Lcom/dy/neu/common/UpdateManager;Lcom/dy/neu/common/UpdateManager$1;)V

    invoke-virtual {v0}, Lcom/dy/neu/common/UpdateManager$downloadApkThread;->start()V

    .line 88
    return-void
.end method

.method private installApk()V
    .locals 5

    .prologue
    .line 168
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/dy/neu/common/UpdateManager;->mSavePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/dy/neu/common/UpdateManager;->mHashMap:Ljava/util/HashMap;

    const-string v4, "name"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .local v0, "apkfile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    :goto_0
    return-void

    .line 174
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    .local v1, "i":Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    iget-object v2, p0, Lcom/dy/neu/common/UpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
