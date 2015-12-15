.class Lcom/dy/neu/activity/LoginActivity$6;
.super Landroid/os/Handler;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dy/neu/activity/LoginActivity;->fetchNotice()V
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
    .line 332
    iput-object p1, p0, Lcom/dy/neu/activity/LoginActivity$6;->this$0:Lcom/dy/neu/activity/LoginActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 336
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 337
    iget v7, p1, Landroid/os/Message;->what:I

    if-nez v7, :cond_7

    .line 338
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/dy/neu/common/ResponseData;

    .line 341
    .local v3, "resData":Lcom/dy/neu/common/ResponseData;
    :try_start_0
    invoke-virtual {v3}, Lcom/dy/neu/common/ResponseData;->getResData()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/dy/neu/util/JSONUtils;->parse(Ljava/lang/String;)Lcom/dy/neu/common/Result;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 348
    .local v5, "ret":Lcom/dy/neu/common/Result;, "Lcom/dy/neu/common/Result<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    iget-object v7, p0, Lcom/dy/neu/activity/LoginActivity$6;->this$0:Lcom/dy/neu/activity/LoginActivity;

    # invokes: Lcom/dy/neu/activity/LoginActivity;->checkResult(Lcom/dy/neu/common/Result;)Z
    invoke-static {v7, v5}, Lcom/dy/neu/activity/LoginActivity;->access$1200(Lcom/dy/neu/activity/LoginActivity;Lcom/dy/neu/common/Result;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 349
    iget-object v7, p0, Lcom/dy/neu/activity/LoginActivity$6;->this$0:Lcom/dy/neu/activity/LoginActivity;

    # getter for: Lcom/dy/neu/activity/LoginActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/dy/neu/activity/LoginActivity;->access$1100(Lcom/dy/neu/activity/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 350
    iget-object v7, p0, Lcom/dy/neu/activity/LoginActivity$6;->this$0:Lcom/dy/neu/activity/LoginActivity;

    # getter for: Lcom/dy/neu/activity/LoginActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/dy/neu/activity/LoginActivity;->access$1100(Lcom/dy/neu/activity/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 396
    .end local v3    # "resData":Lcom/dy/neu/common/ResponseData;
    .end local v5    # "ret":Lcom/dy/neu/common/Result;, "Lcom/dy/neu/common/Result<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    :cond_0
    :goto_0
    return-void

    .line 342
    .restart local v3    # "resData":Lcom/dy/neu/common/ResponseData;
    :catch_0
    move-exception v1

    .line 343
    .local v1, "e":Lorg/json/JSONException;
    const-string v7, ""

    const-string v8, "JSONException"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    iget-object v7, p0, Lcom/dy/neu/activity/LoginActivity$6;->this$0:Lcom/dy/neu/activity/LoginActivity;

    # getter for: Lcom/dy/neu/activity/LoginActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/dy/neu/activity/LoginActivity;->access$1100(Lcom/dy/neu/activity/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 345
    iget-object v7, p0, Lcom/dy/neu/activity/LoginActivity$6;->this$0:Lcom/dy/neu/activity/LoginActivity;

    # getter for: Lcom/dy/neu/activity/LoginActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/dy/neu/activity/LoginActivity;->access$1100(Lcom/dy/neu/activity/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 353
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v5    # "ret":Lcom/dy/neu/common/Result;, "Lcom/dy/neu/common/Result<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    :cond_1
    invoke-virtual {v5}, Lcom/dy/neu/common/Result;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 354
    .local v4, "resultData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_6

    .line 355
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 357
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v2, :cond_2

    .line 358
    iget-object v7, p0, Lcom/dy/neu/activity/LoginActivity$6;->this$0:Lcom/dy/neu/activity/LoginActivity;

    const v8, 0x7f08001e

    invoke-virtual {v7, v8}, Lcom/dy/neu/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 375
    .local v6, "tvM":Landroid/widget/TextView;
    :goto_2
    const-string v7, "title"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    const-string v7, "publishId"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 377
    new-instance v7, Lcom/dy/neu/activity/LoginActivity$6$1;

    invoke-direct {v7, p0}, Lcom/dy/neu/activity/LoginActivity$6$1;-><init>(Lcom/dy/neu/activity/LoginActivity$6;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 360
    .end local v6    # "tvM":Landroid/widget/TextView;
    :cond_2
    const/4 v7, 0x1

    if-ne v2, v7, :cond_3

    .line 361
    iget-object v7, p0, Lcom/dy/neu/activity/LoginActivity$6;->this$0:Lcom/dy/neu/activity/LoginActivity;

    const v8, 0x7f08001f

    invoke-virtual {v7, v8}, Lcom/dy/neu/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .restart local v6    # "tvM":Landroid/widget/TextView;
    goto :goto_2

    .line 363
    .end local v6    # "tvM":Landroid/widget/TextView;
    :cond_3
    const/4 v7, 0x2

    if-ne v2, v7, :cond_4

    .line 364
    iget-object v7, p0, Lcom/dy/neu/activity/LoginActivity$6;->this$0:Lcom/dy/neu/activity/LoginActivity;

    const v8, 0x7f080020

    invoke-virtual {v7, v8}, Lcom/dy/neu/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .restart local v6    # "tvM":Landroid/widget/TextView;
    goto :goto_2

    .line 366
    .end local v6    # "tvM":Landroid/widget/TextView;
    :cond_4
    const/4 v7, 0x3

    if-ne v2, v7, :cond_5

    .line 367
    iget-object v7, p0, Lcom/dy/neu/activity/LoginActivity$6;->this$0:Lcom/dy/neu/activity/LoginActivity;

    const v8, 0x7f080021

    invoke-virtual {v7, v8}, Lcom/dy/neu/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .restart local v6    # "tvM":Landroid/widget/TextView;
    goto :goto_2

    .line 369
    .end local v6    # "tvM":Landroid/widget/TextView;
    :cond_5
    const/4 v7, 0x4

    if-ne v2, v7, :cond_6

    .line 370
    iget-object v7, p0, Lcom/dy/neu/activity/LoginActivity$6;->this$0:Lcom/dy/neu/activity/LoginActivity;

    const v8, 0x7f080022

    invoke-virtual {v7, v8}, Lcom/dy/neu/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .restart local v6    # "tvM":Landroid/widget/TextView;
    goto :goto_2

    .line 388
    .end local v0    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "tvM":Landroid/widget/TextView;
    :cond_6
    iget-object v7, p0, Lcom/dy/neu/activity/LoginActivity$6;->this$0:Lcom/dy/neu/activity/LoginActivity;

    # getter for: Lcom/dy/neu/activity/LoginActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/dy/neu/activity/LoginActivity;->access$1100(Lcom/dy/neu/activity/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 389
    iget-object v7, p0, Lcom/dy/neu/activity/LoginActivity$6;->this$0:Lcom/dy/neu/activity/LoginActivity;

    # getter for: Lcom/dy/neu/activity/LoginActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/dy/neu/activity/LoginActivity;->access$1100(Lcom/dy/neu/activity/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 392
    .end local v2    # "i":I
    .end local v3    # "resData":Lcom/dy/neu/common/ResponseData;
    .end local v4    # "resultData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v5    # "ret":Lcom/dy/neu/common/Result;, "Lcom/dy/neu/common/Result<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    :cond_7
    iget v7, p1, Landroid/os/Message;->what:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 393
    iget-object v7, p0, Lcom/dy/neu/activity/LoginActivity$6;->this$0:Lcom/dy/neu/activity/LoginActivity;

    # getter for: Lcom/dy/neu/activity/LoginActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/dy/neu/activity/LoginActivity;->access$1100(Lcom/dy/neu/activity/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 394
    iget-object v7, p0, Lcom/dy/neu/activity/LoginActivity$6;->this$0:Lcom/dy/neu/activity/LoginActivity;

    # getter for: Lcom/dy/neu/activity/LoginActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/dy/neu/activity/LoginActivity;->access$1100(Lcom/dy/neu/activity/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0
.end method
