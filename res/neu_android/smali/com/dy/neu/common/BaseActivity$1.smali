.class Lcom/dy/neu/common/BaseActivity$1;
.super Landroid/os/Handler;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dy/neu/common/BaseActivity;->getData(Ljava/lang/String;Ljava/util/List;IZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dy/neu/common/BaseActivity;

.field final synthetic val$isCheckCount:Z

.field final synthetic val$op:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dy/neu/common/BaseActivity;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/dy/neu/common/BaseActivity$1;->this$0:Lcom/dy/neu/common/BaseActivity;

    iput-boolean p2, p0, Lcom/dy/neu/common/BaseActivity$1;->val$isCheckCount:Z

    iput-object p3, p0, Lcom/dy/neu/common/BaseActivity$1;->val$op:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 54
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 55
    iget v3, p1, Landroid/os/Message;->what:I

    if-nez v3, :cond_3

    .line 56
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/dy/neu/common/ResponseData;

    .line 59
    .local v1, "resData":Lcom/dy/neu/common/ResponseData;
    :try_start_0
    invoke-virtual {v1}, Lcom/dy/neu/common/ResponseData;->getResData()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dy/neu/util/JSONUtils;->parse(Ljava/lang/String;)Lcom/dy/neu/common/Result;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 67
    .local v2, "ret":Lcom/dy/neu/common/Result;, "Lcom/dy/neu/common/Result<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    iget-boolean v3, p0, Lcom/dy/neu/common/BaseActivity$1;->val$isCheckCount:Z

    if-eqz v3, :cond_1

    .line 68
    iget-object v3, p0, Lcom/dy/neu/common/BaseActivity$1;->this$0:Lcom/dy/neu/common/BaseActivity;

    invoke-virtual {v3, v2}, Lcom/dy/neu/common/BaseActivity;->checkResult(Lcom/dy/neu/common/Result;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 69
    iget-object v3, p0, Lcom/dy/neu/common/BaseActivity$1;->this$0:Lcom/dy/neu/common/BaseActivity;

    # getter for: Lcom/dy/neu/common/BaseActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/dy/neu/common/BaseActivity;->access$000(Lcom/dy/neu/common/BaseActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    iget-object v3, p0, Lcom/dy/neu/common/BaseActivity$1;->this$0:Lcom/dy/neu/common/BaseActivity;

    # getter for: Lcom/dy/neu/common/BaseActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/dy/neu/common/BaseActivity;->access$000(Lcom/dy/neu/common/BaseActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 91
    .end local v1    # "resData":Lcom/dy/neu/common/ResponseData;
    .end local v2    # "ret":Lcom/dy/neu/common/Result;, "Lcom/dy/neu/common/Result<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    :cond_0
    :goto_0
    return-void

    .line 60
    .restart local v1    # "resData":Lcom/dy/neu/common/ResponseData;
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Lorg/json/JSONException;
    iget-object v3, p0, Lcom/dy/neu/common/BaseActivity$1;->this$0:Lcom/dy/neu/common/BaseActivity;

    invoke-virtual {v3}, Lcom/dy/neu/common/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "\u7cfb\u7edf\u7e41\u5fd9\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5"

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 62
    const-string v3, ""

    const-string v4, "JSONException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    iget-object v3, p0, Lcom/dy/neu/common/BaseActivity$1;->this$0:Lcom/dy/neu/common/BaseActivity;

    # getter for: Lcom/dy/neu/common/BaseActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/dy/neu/common/BaseActivity;->access$000(Lcom/dy/neu/common/BaseActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    iget-object v3, p0, Lcom/dy/neu/common/BaseActivity$1;->this$0:Lcom/dy/neu/common/BaseActivity;

    # getter for: Lcom/dy/neu/common/BaseActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/dy/neu/common/BaseActivity;->access$000(Lcom/dy/neu/common/BaseActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 74
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v2    # "ret":Lcom/dy/neu/common/Result;, "Lcom/dy/neu/common/Result<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    :cond_1
    if-nez v2, :cond_2

    .line 75
    iget-object v3, p0, Lcom/dy/neu/common/BaseActivity$1;->this$0:Lcom/dy/neu/common/BaseActivity;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/dy/neu/common/BaseActivity$1;->val$op:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/dy/neu/common/BaseActivity;->fetchData(Ljava/util/List;Ljava/lang/String;)V

    .line 76
    iget-object v3, p0, Lcom/dy/neu/common/BaseActivity$1;->this$0:Lcom/dy/neu/common/BaseActivity;

    const-string v4, ""

    iput-object v4, v3, Lcom/dy/neu/common/BaseActivity;->errMsg:Ljava/lang/String;

    .line 82
    :goto_1
    iget-object v3, p0, Lcom/dy/neu/common/BaseActivity$1;->this$0:Lcom/dy/neu/common/BaseActivity;

    # getter for: Lcom/dy/neu/common/BaseActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/dy/neu/common/BaseActivity;->access$000(Lcom/dy/neu/common/BaseActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    iget-object v3, p0, Lcom/dy/neu/common/BaseActivity$1;->this$0:Lcom/dy/neu/common/BaseActivity;

    # getter for: Lcom/dy/neu/common/BaseActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/dy/neu/common/BaseActivity;->access$000(Lcom/dy/neu/common/BaseActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 79
    :cond_2
    iget-object v4, p0, Lcom/dy/neu/common/BaseActivity$1;->this$0:Lcom/dy/neu/common/BaseActivity;

    invoke-virtual {v2}, Lcom/dy/neu/common/Result;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget-object v5, p0, Lcom/dy/neu/common/BaseActivity$1;->val$op:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Lcom/dy/neu/common/BaseActivity;->fetchData(Ljava/util/List;Ljava/lang/String;)V

    .line 80
    iget-object v3, p0, Lcom/dy/neu/common/BaseActivity$1;->this$0:Lcom/dy/neu/common/BaseActivity;

    invoke-virtual {v2}, Lcom/dy/neu/common/Result;->getErrMsg()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/dy/neu/common/BaseActivity;->errMsg:Ljava/lang/String;

    goto :goto_1

    .line 86
    .end local v1    # "resData":Lcom/dy/neu/common/ResponseData;
    .end local v2    # "ret":Lcom/dy/neu/common/Result;, "Lcom/dy/neu/common/Result<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    :cond_3
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 87
    iget-object v3, p0, Lcom/dy/neu/common/BaseActivity$1;->this$0:Lcom/dy/neu/common/BaseActivity;

    # getter for: Lcom/dy/neu/common/BaseActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/dy/neu/common/BaseActivity;->access$000(Lcom/dy/neu/common/BaseActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 88
    iget-object v3, p0, Lcom/dy/neu/common/BaseActivity$1;->this$0:Lcom/dy/neu/common/BaseActivity;

    # getter for: Lcom/dy/neu/common/BaseActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/dy/neu/common/BaseActivity;->access$000(Lcom/dy/neu/common/BaseActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 89
    :cond_4
    iget-object v3, p0, Lcom/dy/neu/common/BaseActivity$1;->this$0:Lcom/dy/neu/common/BaseActivity;

    invoke-virtual {v3}, Lcom/dy/neu/common/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "\u7cfb\u7edf\u7e41\u5fd9\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5"

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
