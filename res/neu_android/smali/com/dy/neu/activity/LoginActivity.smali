.class public Lcom/dy/neu/activity/LoginActivity;
.super Lcom/dy/neu/common/BaseActivity;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dy/neu/activity/LoginActivity$downloadApkThread;
    }
.end annotation


# static fields
.field private static final DOWNLOAD:I = 0x1

.field private static final DOWNLOAD_FINISH:I = 0x2

.field private static MODULE_URL_LOGIN:Ljava/lang/String;


# instance fields
.field private cancelUpdate:Z

.field private dialog:Landroid/app/ProgressDialog;

.field private exitTime:J

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

.field private updateUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-string v0, "/login"

    sput-object v0, Lcom/dy/neu/activity/LoginActivity;->MODULE_URL_LOGIN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/dy/neu/common/BaseActivity;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dy/neu/activity/LoginActivity;->cancelUpdate:Z

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dy/neu/activity/LoginActivity;->exitTime:J

    .line 275
    new-instance v0, Lcom/dy/neu/activity/LoginActivity$5;

    invoke-direct {v0, p0}, Lcom/dy/neu/activity/LoginActivity$5;-><init>(Lcom/dy/neu/activity/LoginActivity;)V

    iput-object v0, p0, Lcom/dy/neu/activity/LoginActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/dy/neu/activity/LoginActivity;->MODULE_URL_LOGIN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dy/neu/activity/LoginActivity;Ljava/lang/String;Ljava/util/List;IZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dy/neu/activity/LoginActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-virtual/range {p0 .. p5}, Lcom/dy/neu/activity/LoginActivity;->getData(Ljava/lang/String;Ljava/util/List;IZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/dy/neu/activity/LoginActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dy/neu/activity/LoginActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/dy/neu/activity/LoginActivity;->installApk()V

    return-void
.end method

.method static synthetic access$1100(Lcom/dy/neu/activity/LoginActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/activity/LoginActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dy/neu/activity/LoginActivity;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/dy/neu/activity/LoginActivity;Lcom/dy/neu/common/Result;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/activity/LoginActivity;
    .param p1, "x1"    # Lcom/dy/neu/common/Result;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/dy/neu/activity/LoginActivity;->checkResult(Lcom/dy/neu/common/Result;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/dy/neu/activity/LoginActivity;Ljava/lang/String;Ljava/util/List;)Lcom/dy/neu/common/ResponseData;
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/activity/LoginActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/dy/neu/activity/LoginActivity;->getGetData(Ljava/lang/String;Ljava/util/List;)Lcom/dy/neu/common/ResponseData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/dy/neu/activity/LoginActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dy/neu/activity/LoginActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/dy/neu/activity/LoginActivity;->showDownloadDialog()V

    return-void
.end method

.method static synthetic access$1500(Lcom/dy/neu/activity/LoginActivity;Lcom/dy/neu/common/Result;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/activity/LoginActivity;
    .param p1, "x1"    # Lcom/dy/neu/common/Result;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/dy/neu/activity/LoginActivity;->checkResult(Lcom/dy/neu/common/Result;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/dy/neu/activity/LoginActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/activity/LoginActivity;

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/dy/neu/activity/LoginActivity;->getUserName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/dy/neu/activity/LoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/activity/LoginActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/dy/neu/activity/LoginActivity;->getUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/dy/neu/activity/LoginActivity;Ljava/lang/String;Ljava/util/List;)Lcom/dy/neu/common/ResponseData;
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/activity/LoginActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/dy/neu/activity/LoginActivity;->getGetData(Ljava/lang/String;Ljava/util/List;)Lcom/dy/neu/common/ResponseData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/dy/neu/activity/LoginActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/activity/LoginActivity;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/dy/neu/activity/LoginActivity;->cancelUpdate:Z

    return v0
.end method

.method static synthetic access$202(Lcom/dy/neu/activity/LoginActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/dy/neu/activity/LoginActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/dy/neu/activity/LoginActivity;->cancelUpdate:Z

    return p1
.end method

.method static synthetic access$400(Lcom/dy/neu/activity/LoginActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/activity/LoginActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dy/neu/activity/LoginActivity;->mSavePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/dy/neu/activity/LoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/dy/neu/activity/LoginActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/dy/neu/activity/LoginActivity;->mSavePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/dy/neu/activity/LoginActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/activity/LoginActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dy/neu/activity/LoginActivity;->updateUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/dy/neu/activity/LoginActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/activity/LoginActivity;

    .prologue
    .line 48
    iget v0, p0, Lcom/dy/neu/activity/LoginActivity;->progress:I

    return v0
.end method

.method static synthetic access$602(Lcom/dy/neu/activity/LoginActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dy/neu/activity/LoginActivity;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/dy/neu/activity/LoginActivity;->progress:I

    return p1
.end method

.method static synthetic access$700(Lcom/dy/neu/activity/LoginActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/activity/LoginActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dy/neu/activity/LoginActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/dy/neu/activity/LoginActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/activity/LoginActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dy/neu/activity/LoginActivity;->mDownloadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/dy/neu/activity/LoginActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/activity/LoginActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dy/neu/activity/LoginActivity;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private autoLogin()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 529
    const-string v0, "pwd"

    invoke-virtual {p0, v0}, Lcom/dy/neu/activity/LoginActivity;->getUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "pwd"

    invoke-virtual {p0, v0}, Lcom/dy/neu/activity/LoginActivity;->getUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 530
    new-instance v6, Lcom/dy/neu/activity/LoginActivity$11;

    invoke-direct {v6, p0}, Lcom/dy/neu/activity/LoginActivity$11;-><init>(Lcom/dy/neu/activity/LoginActivity;)V

    .line 563
    .local v6, "handler":Landroid/os/Handler;
    const/4 v1, 0x0

    const v0, 0x7f050007

    invoke-virtual {p0, v0}, Lcom/dy/neu/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/dy/neu/activity/LoginActivity$12;

    invoke-direct {v5, p0}, Lcom/dy/neu/activity/LoginActivity$12;-><init>(Lcom/dy/neu/activity/LoginActivity;)V

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/dy/neu/activity/LoginActivity;->dialog:Landroid/app/ProgressDialog;

    .line 570
    new-instance v0, Lcom/dy/neu/activity/LoginActivity$13;

    invoke-direct {v0, p0, v6}, Lcom/dy/neu/activity/LoginActivity$13;-><init>(Lcom/dy/neu/activity/LoginActivity;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/dy/neu/activity/LoginActivity$13;->start()V

    .line 593
    .end local v6    # "handler":Landroid/os/Handler;
    :goto_0
    return-void

    .line 591
    :cond_0
    invoke-direct {p0}, Lcom/dy/neu/activity/LoginActivity;->fetchNotice()V

    goto :goto_0
.end method

.method private downloadApk()V
    .locals 2

    .prologue
    .line 199
    new-instance v0, Lcom/dy/neu/activity/LoginActivity$downloadApkThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dy/neu/activity/LoginActivity$downloadApkThread;-><init>(Lcom/dy/neu/activity/LoginActivity;Lcom/dy/neu/activity/LoginActivity$1;)V

    invoke-virtual {v0}, Lcom/dy/neu/activity/LoginActivity$downloadApkThread;->start()V

    .line 200
    return-void
.end method

.method private fetchNotice()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 331
    const-string v7, "/notice"

    .line 332
    .local v7, "url":Ljava/lang/String;
    new-instance v6, Lcom/dy/neu/activity/LoginActivity$6;

    invoke-direct {v6, p0}, Lcom/dy/neu/activity/LoginActivity$6;-><init>(Lcom/dy/neu/activity/LoginActivity;)V

    .line 398
    .local v6, "handler":Landroid/os/Handler;
    const/4 v1, 0x0

    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Lcom/dy/neu/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/dy/neu/activity/LoginActivity$7;

    invoke-direct {v5, p0}, Lcom/dy/neu/activity/LoginActivity$7;-><init>(Lcom/dy/neu/activity/LoginActivity;)V

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/dy/neu/activity/LoginActivity;->dialog:Landroid/app/ProgressDialog;

    .line 405
    new-instance v0, Lcom/dy/neu/activity/LoginActivity$8;

    invoke-direct {v0, p0, v6}, Lcom/dy/neu/activity/LoginActivity$8;-><init>(Lcom/dy/neu/activity/LoginActivity;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/dy/neu/activity/LoginActivity$8;->start()V

    .line 424
    return-void
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 78
    const v0, 0x7f08001c

    invoke-virtual {p0, v0}, Lcom/dy/neu/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 79
    .local v6, "loginButton":Landroid/widget/Button;
    new-instance v0, Lcom/dy/neu/activity/LoginActivity$1;

    invoke-direct {v0, p0}, Lcom/dy/neu/activity/LoginActivity$1;-><init>(Lcom/dy/neu/activity/LoginActivity;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v0, 0x7f080016

    invoke-virtual {p0, v0}, Lcom/dy/neu/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 122
    .local v7, "tvHelp":Landroid/widget/TextView;
    new-instance v0, Lcom/dy/neu/activity/LoginActivity$2;

    invoke-direct {v0, p0}, Lcom/dy/neu/activity/LoginActivity$2;-><init>(Lcom/dy/neu/activity/LoginActivity;)V

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const/4 v1, 0x0

    const-string v2, "\u6b63\u5728\u68c0\u67e5\u66f4\u65b0..."

    new-instance v5, Lcom/dy/neu/activity/LoginActivity$3;

    invoke-direct {v5, p0}, Lcom/dy/neu/activity/LoginActivity$3;-><init>(Lcom/dy/neu/activity/LoginActivity;)V

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/dy/neu/activity/LoginActivity;->dialog:Landroid/app/ProgressDialog;

    .line 138
    invoke-virtual {p0}, Lcom/dy/neu/activity/LoginActivity;->checkUpdate()V

    .line 139
    return-void
.end method

.method private installApk()V
    .locals 4

    .prologue
    .line 301
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/dy/neu/activity/LoginActivity;->mSavePath:Ljava/lang/String;

    const-string v3, "neu.apk"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .local v0, "apkfile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 310
    :goto_0
    return-void

    .line 307
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
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

    .line 309
    invoke-virtual {p0, v1}, Lcom/dy/neu/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private isUpdate()V
    .locals 5

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/dy/neu/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/dy/neu/activity/LoginActivity;->getVersionCode(Landroid/content/Context;)I

    move-result v1

    .line 158
    .local v1, "versionCode":I
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 159
    .local v0, "systemVer":Ljava/lang/String;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/dy/neu/activity/LoginActivity;->updateUrl:Ljava/lang/String;

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/checkUpdate/2/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "checkUpdate"

    invoke-virtual {p0, v2, v3, v4}, Lcom/dy/neu/activity/LoginActivity;->getData(Ljava/lang/String;ZLjava/lang/String;)V

    .line 161
    return-void
.end method

.method private showDownloadDialog()V
    .locals 5

    .prologue
    .line 169
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 170
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f05000d

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 172
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 173
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f03001e

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 174
    .local v2, "v":Landroid/view/View;
    const v3, 0x7f08003a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/dy/neu/activity/LoginActivity;->mProgress:Landroid/widget/ProgressBar;

    .line 175
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 177
    const v3, 0x7f05000e

    new-instance v4, Lcom/dy/neu/activity/LoginActivity$4;

    invoke-direct {v4, p0}, Lcom/dy/neu/activity/LoginActivity$4;-><init>(Lcom/dy/neu/activity/LoginActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 187
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/dy/neu/activity/LoginActivity;->mDownloadDialog:Landroid/app/Dialog;

    .line 188
    iget-object v3, p0, Lcom/dy/neu/activity/LoginActivity;->mDownloadDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 190
    invoke-direct {p0}, Lcom/dy/neu/activity/LoginActivity;->downloadApk()V

    .line 191
    return-void
.end method

.method private showNoticeDialog()V
    .locals 4

    .prologue
    .line 432
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 433
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f050009

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 434
    const v2, 0x7f05000a

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 436
    const v2, 0x7f05000b

    new-instance v3, Lcom/dy/neu/activity/LoginActivity$9;

    invoke-direct {v3, p0}, Lcom/dy/neu/activity/LoginActivity$9;-><init>(Lcom/dy/neu/activity/LoginActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 447
    const v2, 0x7f05000c

    new-instance v3, Lcom/dy/neu/activity/LoginActivity$10;

    invoke-direct {v3, p0}, Lcom/dy/neu/activity/LoginActivity$10;-><init>(Lcom/dy/neu/activity/LoginActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 455
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 456
    .local v1, "noticeDialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 457
    return-void
.end method


# virtual methods
.method public checkUpdate()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/dy/neu/activity/LoginActivity;->isUpdate()V

    .line 147
    return-void
.end method

.method protected fetchData(Ljava/util/List;Ljava/lang/String;)V
    .locals 12
    .param p2, "op"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "resultData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const v9, 0x7f08001b

    const/4 v11, 0x5

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 461
    if-eqz p2, :cond_6

    const-string v7, "checkUpdate"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 462
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 463
    :cond_0
    iget-object v7, p0, Lcom/dy/neu/activity/LoginActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 464
    iget-object v7, p0, Lcom/dy/neu/activity/LoginActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 466
    :cond_1
    invoke-direct {p0}, Lcom/dy/neu/activity/LoginActivity;->autoLogin()V

    .line 527
    :goto_0
    return-void

    .line 469
    :cond_2
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "appUrl"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/dy/neu/activity/LoginActivity;->updateUrl:Ljava/lang/String;

    .line 471
    iget-object v7, p0, Lcom/dy/neu/activity/LoginActivity;->updateUrl:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/dy/neu/activity/LoginActivity;->updateUrl:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 472
    iget-object v7, p0, Lcom/dy/neu/activity/LoginActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 473
    iget-object v7, p0, Lcom/dy/neu/activity/LoginActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 475
    :cond_3
    invoke-direct {p0}, Lcom/dy/neu/activity/LoginActivity;->showNoticeDialog()V

    goto :goto_0

    .line 478
    :cond_4
    iget-object v7, p0, Lcom/dy/neu/activity/LoginActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 479
    iget-object v7, p0, Lcom/dy/neu/activity/LoginActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 481
    :cond_5
    invoke-direct {p0}, Lcom/dy/neu/activity/LoginActivity;->autoLogin()V

    goto :goto_0

    .line 485
    :cond_6
    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 486
    :cond_7
    const-string v7, "loginTimes"

    invoke-virtual {p0, v7, v8}, Lcom/dy/neu/activity/LoginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 488
    .local v5, "sp":Landroid/content/SharedPreferences;
    const-string v7, "times"

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    add-int/lit8 v6, v7, 0x1

    .line 489
    .local v6, "times":I
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 490
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "times"

    invoke-interface {v2, v7, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 491
    if-ne v6, v11, :cond_8

    .line 492
    const-string v7, "locked"

    invoke-interface {v2, v7, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 493
    const-string v7, "lockedDate"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v2, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 495
    :cond_8
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 496
    if-ne v6, v11, :cond_9

    .line 497
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/dy/neu/activity/LoginActivity;->errMsg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u8f93\u5165\u9519\u8bef\u6b21\u6570\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u6b21\uff0c\u8bf75\u5206\u949f\u540e\u518d\u8bd5"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 500
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/dy/neu/activity/LoginActivity;->errMsg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u8f93\u5165\u9519\u8bef\u6b21\u6570\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u6b21"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 505
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    .end local v6    # "times":I
    :cond_a
    const-string v7, "loginTimes"

    invoke-virtual {p0, v7, v8}, Lcom/dy/neu/activity/LoginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 507
    .restart local v5    # "sp":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 508
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "times"

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 509
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 511
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 512
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 514
    .local v4, "password":Ljava/lang/String;
    const v7, 0x7f08001b

    :try_start_0
    invoke-virtual {p0, v7}, Lcom/dy/neu/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/dy/neu/util/MD5;->encrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/dy/neu/common/MD5Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 518
    :goto_1
    invoke-virtual {p0, v9}, Lcom/dy/neu/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    if-lez v7, :cond_b

    .line 519
    const-string v7, "pwd"

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    :cond_b
    invoke-virtual {p0, v0}, Lcom/dy/neu/activity/LoginActivity;->setUserInfo(Ljava/util/Map;)V

    .line 522
    new-instance v3, Landroid/content/Intent;

    const-class v7, Lcom/dy/neu/activity/MainActivity;

    invoke-direct {v3, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 523
    .local v3, "intent":Landroid/content/Intent;
    const-string v7, "isTeacher"

    invoke-virtual {p0}, Lcom/dy/neu/activity/LoginActivity;->isTeacher()Z

    move-result v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 524
    invoke-virtual {p0, v3}, Lcom/dy/neu/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 525
    invoke-virtual {p0}, Lcom/dy/neu/activity/LoginActivity;->finish()V

    goto/16 :goto_0

    .line 515
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 516
    .local v1, "e":Lcom/dy/neu/common/MD5Exception;
    invoke-virtual {v1}, Lcom/dy/neu/common/MD5Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected getVersionCode(Landroid/content/Context;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 319
    const/4 v1, 0x0

    .line 323
    .local v1, "versionCode":I
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.dy.neu"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    return v1

    .line 324
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/dy/neu/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/dy/neu/activity/LoginActivity;->setContentView(I)V

    .line 75
    invoke-direct {p0}, Lcom/dy/neu/activity/LoginActivity;->init()V

    .line 76
    return-void
.end method
