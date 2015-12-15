.class public Lcom/dy/neu/activity/MainActivity;
.super Lcom/dy/neu/common/BaseActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dy/neu/activity/MainActivity$downloadApkThread;,
        Lcom/dy/neu/activity/MainActivity$ListItemView;,
        Lcom/dy/neu/activity/MainActivity$MainListViewAdapter;
    }
.end annotation


# static fields
.field private static final DOWNLOAD:I = 0x1

.field private static final DOWNLOAD_FINISH:I = 0x2


# instance fields
.field private cancelUpdate:Z

.field dialog:Landroid/app/ProgressDialog;

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
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/dy/neu/common/BaseActivity;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dy/neu/activity/MainActivity;->cancelUpdate:Z

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dy/neu/activity/MainActivity;->exitTime:J

    .line 372
    new-instance v0, Lcom/dy/neu/activity/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/dy/neu/activity/MainActivity$3;-><init>(Lcom/dy/neu/activity/MainActivity;)V

    iput-object v0, p0, Lcom/dy/neu/activity/MainActivity;->mHandler:Landroid/os/Handler;

    .line 409
    return-void
.end method

.method static synthetic access$000(Lcom/dy/neu/activity/MainActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/activity/MainActivity;

    .prologue
    .line 39
    iget v0, p0, Lcom/dy/neu/activity/MainActivity;->progress:I

    return v0
.end method

.method static synthetic access$002(Lcom/dy/neu/activity/MainActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dy/neu/activity/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/dy/neu/activity/MainActivity;->progress:I

    return p1
.end method

.method static synthetic access$100(Lcom/dy/neu/activity/MainActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/activity/MainActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dy/neu/activity/MainActivity;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dy/neu/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dy/neu/activity/MainActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/dy/neu/activity/MainActivity;->installApk()V

    return-void
.end method

.method static synthetic access$400(Lcom/dy/neu/activity/MainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/activity/MainActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dy/neu/activity/MainActivity;->mSavePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/dy/neu/activity/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/dy/neu/activity/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/dy/neu/activity/MainActivity;->mSavePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/dy/neu/activity/MainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/activity/MainActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dy/neu/activity/MainActivity;->updateUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/dy/neu/activity/MainActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/activity/MainActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dy/neu/activity/MainActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/dy/neu/activity/MainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/activity/MainActivity;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/dy/neu/activity/MainActivity;->cancelUpdate:Z

    return v0
.end method

.method static synthetic access$702(Lcom/dy/neu/activity/MainActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/dy/neu/activity/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/dy/neu/activity/MainActivity;->cancelUpdate:Z

    return p1
.end method

.method static synthetic access$800(Lcom/dy/neu/activity/MainActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/activity/MainActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dy/neu/activity/MainActivity;->mDownloadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/dy/neu/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dy/neu/activity/MainActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/dy/neu/activity/MainActivity;->showDownloadDialog()V

    return-void
.end method

.method private downloadApk()V
    .locals 2

    .prologue
    .line 399
    new-instance v0, Lcom/dy/neu/activity/MainActivity$downloadApkThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dy/neu/activity/MainActivity$downloadApkThread;-><init>(Lcom/dy/neu/activity/MainActivity;Lcom/dy/neu/activity/MainActivity$1;)V

    invoke-virtual {v0}, Lcom/dy/neu/activity/MainActivity$downloadApkThread;->start()V

    .line 400
    return-void
.end method

.method private init()V
    .locals 12

    .prologue
    .line 123
    const v10, 0x7f080025

    invoke-virtual {p0, v10}, Lcom/dy/neu/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 124
    .local v6, "menuListView":Landroid/widget/ListView;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dy/neu/common/ListItemMenu;>;"
    invoke-virtual {p0}, Lcom/dy/neu/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 126
    .local v9, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/dy/neu/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 127
    .local v1, "intent":Landroid/content/Intent;
    const-string v10, "isTeacher"

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 128
    .local v2, "isTeacher":Z
    const/4 v5, 0x0

    .line 129
    .local v5, "menuImage":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    .line 130
    .local v7, "menuTitle":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 131
    const v10, 0x7f060001

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 132
    const/high16 v10, 0x7f060000

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 138
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v10, v7

    if-ge v0, v10, :cond_1

    .line 139
    new-instance v3, Lcom/dy/neu/common/ListItemMenu;

    invoke-direct {v3}, Lcom/dy/neu/common/ListItemMenu;-><init>()V

    .line 140
    .local v3, "item":Lcom/dy/neu/common/ListItemMenu;
    aget-object v10, v7, v0

    invoke-virtual {v3, v10}, Lcom/dy/neu/common/ListItemMenu;->setTitle(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/dy/neu/common/ListItemMenu;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 142
    const v10, 0x7f02001c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/dy/neu/common/ListItemMenu;->setRight(Landroid/graphics/drawable/Drawable;)V

    .line 143
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    .end local v0    # "i":I
    .end local v3    # "item":Lcom/dy/neu/common/ListItemMenu;
    :cond_0
    const v10, 0x7f060003

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 136
    const v10, 0x7f060002

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 145
    .restart local v0    # "i":I
    :cond_1
    new-instance v8, Lcom/dy/neu/activity/MainActivity$MainListViewAdapter;

    invoke-direct {v8, p0, v4}, Lcom/dy/neu/activity/MainActivity$MainListViewAdapter;-><init>(Lcom/dy/neu/activity/MainActivity;Ljava/util/List;)V

    .line 146
    .local v8, "mva":Lcom/dy/neu/activity/MainActivity$MainListViewAdapter;
    invoke-virtual {v6, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 148
    new-instance v10, Lcom/dy/neu/activity/MainActivity$2;

    invoke-direct {v10, p0, v2}, Lcom/dy/neu/activity/MainActivity$2;-><init>(Lcom/dy/neu/activity/MainActivity;Z)V

    invoke-virtual {v6, v10}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 281
    return-void
.end method

.method private installApk()V
    .locals 4

    .prologue
    .line 480
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/dy/neu/activity/MainActivity;->mSavePath:Ljava/lang/String;

    const-string v3, "neu.apk"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    .local v0, "apkfile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 489
    :goto_0
    return-void

    .line 486
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 487
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

    .line 488
    invoke-virtual {p0, v1}, Lcom/dy/neu/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private isUpdate()V
    .locals 5

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/dy/neu/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/dy/neu/activity/MainActivity;->getVersionCode(Landroid/content/Context;)I

    move-result v1

    .line 540
    .local v1, "versionCode":I
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 541
    .local v0, "systemVer":Ljava/lang/String;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/dy/neu/activity/MainActivity;->updateUrl:Ljava/lang/String;

    .line 542
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

    invoke-virtual {p0, v2, v3, v4}, Lcom/dy/neu/activity/MainActivity;->getData(Ljava/lang/String;ZLjava/lang/String;)V

    .line 543
    return-void
.end method

.method private showDownloadDialog()V
    .locals 5

    .prologue
    .line 551
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 552
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f05000d

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 554
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 555
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f03001e

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 556
    .local v2, "v":Landroid/view/View;
    const v3, 0x7f08003a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/dy/neu/activity/MainActivity;->mProgress:Landroid/widget/ProgressBar;

    .line 557
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 559
    const v3, 0x7f05000e

    new-instance v4, Lcom/dy/neu/activity/MainActivity$6;

    invoke-direct {v4, p0}, Lcom/dy/neu/activity/MainActivity$6;-><init>(Lcom/dy/neu/activity/MainActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 569
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/dy/neu/activity/MainActivity;->mDownloadDialog:Landroid/app/Dialog;

    .line 570
    iget-object v3, p0, Lcom/dy/neu/activity/MainActivity;->mDownloadDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 572
    invoke-direct {p0}, Lcom/dy/neu/activity/MainActivity;->downloadApk()V

    .line 573
    return-void
.end method

.method private showNoticeDialog()V
    .locals 4

    .prologue
    .line 496
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 497
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f050009

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 498
    const v2, 0x7f05000a

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 500
    const v2, 0x7f05000b

    new-instance v3, Lcom/dy/neu/activity/MainActivity$4;

    invoke-direct {v3, p0}, Lcom/dy/neu/activity/MainActivity$4;-><init>(Lcom/dy/neu/activity/MainActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 511
    const v2, 0x7f05000c

    new-instance v3, Lcom/dy/neu/activity/MainActivity$5;

    invoke-direct {v3, p0}, Lcom/dy/neu/activity/MainActivity$5;-><init>(Lcom/dy/neu/activity/MainActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 519
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 520
    .local v1, "noticeDialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 521
    return-void
.end method


# virtual methods
.method public checkUpdate()V
    .locals 0

    .prologue
    .line 528
    invoke-direct {p0}, Lcom/dy/neu/activity/MainActivity;->isUpdate()V

    .line 529
    return-void
.end method

.method protected fetchData(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
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
    .local p1, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const v3, 0x7f050008

    const/4 v2, 0x1

    .line 285
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/dy/neu/activity/MainActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/dy/neu/activity/MainActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 288
    :cond_1
    invoke-virtual {p0}, Lcom/dy/neu/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 302
    :cond_2
    :goto_0
    return-void

    .line 291
    :cond_3
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "appUrl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/dy/neu/activity/MainActivity;->updateUrl:Ljava/lang/String;

    .line 293
    iget-object v0, p0, Lcom/dy/neu/activity/MainActivity;->updateUrl:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/dy/neu/activity/MainActivity;->updateUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 295
    invoke-direct {p0}, Lcom/dy/neu/activity/MainActivity;->showNoticeDialog()V

    .line 300
    :goto_1
    iget-object v0, p0, Lcom/dy/neu/activity/MainActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/dy/neu/activity/MainActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 298
    :cond_4
    invoke-virtual {p0}, Lcom/dy/neu/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method protected getVersionCode(Landroid/content/Context;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 583
    const/4 v1, 0x0

    .line 587
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

    .line 592
    :goto_0
    return v1

    .line 588
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/dy/neu/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/dy/neu/activity/MainActivity;->setContentView(I)V

    .line 68
    invoke-direct {p0}, Lcom/dy/neu/activity/MainActivity;->init()V

    .line 69
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 73
    const-string v0, "\u68c0\u67e5\u66f4\u65b0"

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 74
    const-string v0, "\u91cd\u65b0\u767b\u5f55"

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 75
    const-string v0, "\u9000\u51fa\u5e94\u7528"

    invoke-interface {p1, v1, v3, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 76
    invoke-super {p0, p1}, Lcom/dy/neu/common/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    .line 109
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/dy/neu/activity/MainActivity;->exitTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/dy/neu/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u518d\u6309\u4e00\u6b21\u9000\u51fa\u7a0b\u5e8f"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dy/neu/activity/MainActivity;->exitTime:J

    .line 117
    :goto_0
    const/4 v0, 0x1

    .line 119
    :goto_1
    return v0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/dy/neu/activity/MainActivity;->finish()V

    .line 115
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 119
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/dy/neu/common/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 81
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v6

    .line 82
    .local v6, "groupId":I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    .line 83
    .local v8, "itemId":I
    if-nez v6, :cond_0

    .line 84
    if-nez v8, :cond_1

    .line 85
    const/4 v1, 0x0

    const-string v2, "\u6b63\u5728\u68c0\u67e5\u66f4\u65b0..."

    new-instance v5, Lcom/dy/neu/activity/MainActivity$1;

    invoke-direct {v5, p0}, Lcom/dy/neu/activity/MainActivity$1;-><init>(Lcom/dy/neu/activity/MainActivity;)V

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/dy/neu/activity/MainActivity;->dialog:Landroid/app/ProgressDialog;

    .line 92
    invoke-virtual {p0}, Lcom/dy/neu/activity/MainActivity;->checkUpdate()V

    .line 105
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/dy/neu/common/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 94
    :cond_1
    if-ne v8, v3, :cond_2

    .line 95
    invoke-virtual {p0}, Lcom/dy/neu/activity/MainActivity;->clearUserInfo()V

    .line 96
    new-instance v7, Landroid/content/Intent;

    const-class v0, Lcom/dy/neu/activity/LoginActivity;

    invoke-direct {v7, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v7}, Lcom/dy/neu/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 98
    invoke-virtual {p0}, Lcom/dy/neu/activity/MainActivity;->finish()V

    goto :goto_0

    .line 100
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_2
    const/4 v0, 0x2

    if-ne v8, v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/dy/neu/activity/MainActivity;->finish()V

    .line 102
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method
