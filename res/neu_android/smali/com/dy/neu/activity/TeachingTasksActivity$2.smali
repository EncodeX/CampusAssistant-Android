.class Lcom/dy/neu/activity/TeachingTasksActivity$2;
.super Landroid/os/Handler;
.source "TeachingTasksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dy/neu/activity/TeachingTasksActivity;->fetchTerm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dy/neu/activity/TeachingTasksActivity;

.field final synthetic val$mSpinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/dy/neu/activity/TeachingTasksActivity;Landroid/widget/Spinner;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/dy/neu/activity/TeachingTasksActivity$2;->this$0:Lcom/dy/neu/activity/TeachingTasksActivity;

    iput-object p2, p0, Lcom/dy/neu/activity/TeachingTasksActivity$2;->val$mSpinner:Landroid/widget/Spinner;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x1

    .line 55
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 56
    iget v9, p1, Landroid/os/Message;->what:I

    if-nez v9, :cond_3

    .line 57
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/dy/neu/common/ResponseData;

    .line 60
    .local v5, "resData":Lcom/dy/neu/common/ResponseData;
    :try_start_0
    invoke-virtual {v5}, Lcom/dy/neu/common/ResponseData;->getResData()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/dy/neu/util/JSONUtils;->parse(Ljava/lang/String;)Lcom/dy/neu/common/Result;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 68
    .local v7, "ret":Lcom/dy/neu/common/Result;, "Lcom/dy/neu/common/Result<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    iget-object v9, p0, Lcom/dy/neu/activity/TeachingTasksActivity$2;->this$0:Lcom/dy/neu/activity/TeachingTasksActivity;

    # invokes: Lcom/dy/neu/activity/TeachingTasksActivity;->checkResult(Lcom/dy/neu/common/Result;)Z
    invoke-static {v9, v7}, Lcom/dy/neu/activity/TeachingTasksActivity;->access$100(Lcom/dy/neu/activity/TeachingTasksActivity;Lcom/dy/neu/common/Result;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 69
    iget-object v9, p0, Lcom/dy/neu/activity/TeachingTasksActivity$2;->this$0:Lcom/dy/neu/activity/TeachingTasksActivity;

    # getter for: Lcom/dy/neu/activity/TeachingTasksActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/dy/neu/activity/TeachingTasksActivity;->access$000(Lcom/dy/neu/activity/TeachingTasksActivity;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 70
    iget-object v9, p0, Lcom/dy/neu/activity/TeachingTasksActivity$2;->this$0:Lcom/dy/neu/activity/TeachingTasksActivity;

    # getter for: Lcom/dy/neu/activity/TeachingTasksActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/dy/neu/activity/TeachingTasksActivity;->access$000(Lcom/dy/neu/activity/TeachingTasksActivity;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->dismiss()V

    .line 121
    .end local v5    # "resData":Lcom/dy/neu/common/ResponseData;
    .end local v7    # "ret":Lcom/dy/neu/common/Result;, "Lcom/dy/neu/common/Result<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    :cond_0
    :goto_0
    return-void

    .line 61
    .restart local v5    # "resData":Lcom/dy/neu/common/ResponseData;
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Lorg/json/JSONException;
    iget-object v9, p0, Lcom/dy/neu/activity/TeachingTasksActivity$2;->this$0:Lcom/dy/neu/activity/TeachingTasksActivity;

    invoke-virtual {v9}, Lcom/dy/neu/activity/TeachingTasksActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "\u83b7\u53d6\u6570\u636e\u9519\u8bef"

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 63
    const-string v9, ""

    const-string v10, "JSONException"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    iget-object v9, p0, Lcom/dy/neu/activity/TeachingTasksActivity$2;->this$0:Lcom/dy/neu/activity/TeachingTasksActivity;

    # getter for: Lcom/dy/neu/activity/TeachingTasksActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/dy/neu/activity/TeachingTasksActivity;->access$000(Lcom/dy/neu/activity/TeachingTasksActivity;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 65
    iget-object v9, p0, Lcom/dy/neu/activity/TeachingTasksActivity$2;->this$0:Lcom/dy/neu/activity/TeachingTasksActivity;

    # getter for: Lcom/dy/neu/activity/TeachingTasksActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/dy/neu/activity/TeachingTasksActivity;->access$000(Lcom/dy/neu/activity/TeachingTasksActivity;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 73
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v7    # "ret":Lcom/dy/neu/common/Result;, "Lcom/dy/neu/common/Result<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    :cond_1
    invoke-virtual {v7}, Lcom/dy/neu/common/Result;->getData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 76
    .local v6, "resultData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dy/neu/common/SpinnerData;>;"
    new-instance v9, Lcom/dy/neu/common/SpinnerData;

    const-string v10, "\u8bf7\u9009\u62e9"

    const-string v11, "0"

    invoke-direct {v9, v10, v11}, Lcom/dy/neu/common/SpinnerData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_2

    .line 79
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 80
    .local v1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v8, Lcom/dy/neu/common/SpinnerData;

    const-string v9, "termName"

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "termId"

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lcom/dy/neu/common/SpinnerData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .local v8, "sd":Lcom/dy/neu/common/SpinnerData;
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 83
    .end local v1    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "sd":Lcom/dy/neu/common/SpinnerData;
    :cond_2
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v9, p0, Lcom/dy/neu/activity/TeachingTasksActivity$2;->this$0:Lcom/dy/neu/activity/TeachingTasksActivity;

    invoke-virtual {v9}, Lcom/dy/neu/activity/TeachingTasksActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x1090008

    invoke-direct {v0, v9, v10, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 85
    .local v0, "Adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/dy/neu/common/SpinnerData;>;"
    const v9, 0x1090009

    invoke-virtual {v0, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 86
    iget-object v9, p0, Lcom/dy/neu/activity/TeachingTasksActivity$2;->val$mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 87
    iget-object v9, p0, Lcom/dy/neu/activity/TeachingTasksActivity$2;->val$mSpinner:Landroid/widget/Spinner;

    new-instance v10, Lcom/dy/neu/activity/TeachingTasksActivity$2$1;

    invoke-direct {v10, p0, v4}, Lcom/dy/neu/activity/TeachingTasksActivity$2$1;-><init>(Lcom/dy/neu/activity/TeachingTasksActivity$2;Ljava/util/List;)V

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 112
    iget-object v9, p0, Lcom/dy/neu/activity/TeachingTasksActivity$2;->this$0:Lcom/dy/neu/activity/TeachingTasksActivity;

    # getter for: Lcom/dy/neu/activity/TeachingTasksActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/dy/neu/activity/TeachingTasksActivity;->access$000(Lcom/dy/neu/activity/TeachingTasksActivity;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 113
    iget-object v9, p0, Lcom/dy/neu/activity/TeachingTasksActivity$2;->this$0:Lcom/dy/neu/activity/TeachingTasksActivity;

    # getter for: Lcom/dy/neu/activity/TeachingTasksActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/dy/neu/activity/TeachingTasksActivity;->access$000(Lcom/dy/neu/activity/TeachingTasksActivity;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 116
    .end local v0    # "Adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/dy/neu/common/SpinnerData;>;"
    .end local v3    # "i":I
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/dy/neu/common/SpinnerData;>;"
    .end local v5    # "resData":Lcom/dy/neu/common/ResponseData;
    .end local v6    # "resultData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v7    # "ret":Lcom/dy/neu/common/Result;, "Lcom/dy/neu/common/Result<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    :cond_3
    iget v9, p1, Landroid/os/Message;->what:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    .line 117
    iget-object v9, p0, Lcom/dy/neu/activity/TeachingTasksActivity$2;->this$0:Lcom/dy/neu/activity/TeachingTasksActivity;

    # getter for: Lcom/dy/neu/activity/TeachingTasksActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/dy/neu/activity/TeachingTasksActivity;->access$000(Lcom/dy/neu/activity/TeachingTasksActivity;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 118
    iget-object v9, p0, Lcom/dy/neu/activity/TeachingTasksActivity$2;->this$0:Lcom/dy/neu/activity/TeachingTasksActivity;

    # getter for: Lcom/dy/neu/activity/TeachingTasksActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/dy/neu/activity/TeachingTasksActivity;->access$000(Lcom/dy/neu/activity/TeachingTasksActivity;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->dismiss()V

    .line 119
    :cond_4
    iget-object v9, p0, Lcom/dy/neu/activity/TeachingTasksActivity$2;->this$0:Lcom/dy/neu/activity/TeachingTasksActivity;

    invoke-virtual {v9}, Lcom/dy/neu/activity/TeachingTasksActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "\u83b7\u53d6\u6570\u636e\u9519\u8bef"

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_0
.end method
