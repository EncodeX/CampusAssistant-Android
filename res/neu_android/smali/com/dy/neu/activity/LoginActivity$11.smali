.class Lcom/dy/neu/activity/LoginActivity$11;
.super Landroid/os/Handler;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dy/neu/activity/LoginActivity;->autoLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dy/neu/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/dy/neu/activity/LoginActivity;)V
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Lcom/dy/neu/activity/LoginActivity$11;->this$0:Lcom/dy/neu/activity/LoginActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 534
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 535
    iget v4, p1, Landroid/os/Message;->what:I

    if-nez v4, :cond_3

    .line 536
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/dy/neu/common/ResponseData;

    .line 539
    .local v1, "resData":Lcom/dy/neu/common/ResponseData;
    :try_start_0
    invoke-virtual {v1}, Lcom/dy/neu/common/ResponseData;->getResData()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dy/neu/util/JSONUtils;->parse(Ljava/lang/String;)Lcom/dy/neu/common/Result;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 546
    .local v3, "ret":Lcom/dy/neu/common/Result;, "Lcom/dy/neu/common/Result<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    iget-object v4, p0, Lcom/dy/neu/activity/LoginActivity$11;->this$0:Lcom/dy/neu/activity/LoginActivity;

    # invokes: Lcom/dy/neu/activity/LoginActivity;->checkResult(Lcom/dy/neu/common/Result;)Z
    invoke-static {v4, v3}, Lcom/dy/neu/activity/LoginActivity;->access$1500(Lcom/dy/neu/activity/LoginActivity;Lcom/dy/neu/common/Result;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 547
    iget-object v4, p0, Lcom/dy/neu/activity/LoginActivity$11;->this$0:Lcom/dy/neu/activity/LoginActivity;

    # getter for: Lcom/dy/neu/activity/LoginActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/dy/neu/activity/LoginActivity;->access$1100(Lcom/dy/neu/activity/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 548
    iget-object v4, p0, Lcom/dy/neu/activity/LoginActivity$11;->this$0:Lcom/dy/neu/activity/LoginActivity;

    # getter for: Lcom/dy/neu/activity/LoginActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/dy/neu/activity/LoginActivity;->access$1100(Lcom/dy/neu/activity/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 561
    .end local v1    # "resData":Lcom/dy/neu/common/ResponseData;
    .end local v3    # "ret":Lcom/dy/neu/common/Result;, "Lcom/dy/neu/common/Result<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    :cond_0
    :goto_0
    return-void

    .line 540
    .restart local v1    # "resData":Lcom/dy/neu/common/ResponseData;
    :catch_0
    move-exception v0

    .line 541
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, ""

    const-string v5, "JSONException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 542
    iget-object v4, p0, Lcom/dy/neu/activity/LoginActivity$11;->this$0:Lcom/dy/neu/activity/LoginActivity;

    # getter for: Lcom/dy/neu/activity/LoginActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/dy/neu/activity/LoginActivity;->access$1100(Lcom/dy/neu/activity/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 543
    iget-object v4, p0, Lcom/dy/neu/activity/LoginActivity$11;->this$0:Lcom/dy/neu/activity/LoginActivity;

    # getter for: Lcom/dy/neu/activity/LoginActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/dy/neu/activity/LoginActivity;->access$1100(Lcom/dy/neu/activity/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 551
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v3    # "ret":Lcom/dy/neu/common/Result;, "Lcom/dy/neu/common/Result<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    :cond_1
    invoke-virtual {v3}, Lcom/dy/neu/common/Result;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 552
    .local v2, "resultData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v4, p0, Lcom/dy/neu/activity/LoginActivity$11;->this$0:Lcom/dy/neu/activity/LoginActivity;

    # getter for: Lcom/dy/neu/activity/LoginActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/dy/neu/activity/LoginActivity;->access$1100(Lcom/dy/neu/activity/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 553
    iget-object v4, p0, Lcom/dy/neu/activity/LoginActivity$11;->this$0:Lcom/dy/neu/activity/LoginActivity;

    # getter for: Lcom/dy/neu/activity/LoginActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/dy/neu/activity/LoginActivity;->access$1100(Lcom/dy/neu/activity/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 555
    :cond_2
    iget-object v4, p0, Lcom/dy/neu/activity/LoginActivity$11;->this$0:Lcom/dy/neu/activity/LoginActivity;

    const-string v5, "autoLogin"

    invoke-virtual {v4, v2, v5}, Lcom/dy/neu/activity/LoginActivity;->fetchData(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 557
    .end local v1    # "resData":Lcom/dy/neu/common/ResponseData;
    .end local v2    # "resultData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "ret":Lcom/dy/neu/common/Result;, "Lcom/dy/neu/common/Result<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    :cond_3
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 558
    iget-object v4, p0, Lcom/dy/neu/activity/LoginActivity$11;->this$0:Lcom/dy/neu/activity/LoginActivity;

    # getter for: Lcom/dy/neu/activity/LoginActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/dy/neu/activity/LoginActivity;->access$1100(Lcom/dy/neu/activity/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 559
    iget-object v4, p0, Lcom/dy/neu/activity/LoginActivity$11;->this$0:Lcom/dy/neu/activity/LoginActivity;

    # getter for: Lcom/dy/neu/activity/LoginActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/dy/neu/activity/LoginActivity;->access$1100(Lcom/dy/neu/activity/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method
