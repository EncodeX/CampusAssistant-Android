.class Lcom/dy/neu/common/BaseActivity$3;
.super Ljava/lang/Thread;
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

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$method:I

.field final synthetic val$params:Ljava/util/List;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dy/neu/common/BaseActivity;ILjava/lang/String;Ljava/util/List;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/dy/neu/common/BaseActivity$3;->this$0:Lcom/dy/neu/common/BaseActivity;

    iput p2, p0, Lcom/dy/neu/common/BaseActivity$3;->val$method:I

    iput-object p3, p0, Lcom/dy/neu/common/BaseActivity$3;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/dy/neu/common/BaseActivity$3;->val$params:Ljava/util/List;

    iput-object p5, p0, Lcom/dy/neu/common/BaseActivity$3;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 104
    iget v2, p0, Lcom/dy/neu/common/BaseActivity$3;->val$method:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 105
    iget-object v2, p0, Lcom/dy/neu/common/BaseActivity$3;->this$0:Lcom/dy/neu/common/BaseActivity;

    iget-object v3, p0, Lcom/dy/neu/common/BaseActivity$3;->val$url:Ljava/lang/String;

    iget-object v4, p0, Lcom/dy/neu/common/BaseActivity$3;->val$params:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/dy/neu/common/BaseActivity;->getPostData(Ljava/lang/String;Ljava/util/List;)Lcom/dy/neu/common/ResponseData;

    move-result-object v1

    .line 110
    .local v1, "resData":Lcom/dy/neu/common/ResponseData;
    :goto_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 111
    .local v0, "msg":Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 112
    if-nez v1, :cond_1

    .line 113
    const/4 v2, -0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 118
    :goto_1
    iget-object v2, p0, Lcom/dy/neu/common/BaseActivity$3;->val$handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 119
    return-void

    .line 108
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "resData":Lcom/dy/neu/common/ResponseData;
    :cond_0
    iget-object v2, p0, Lcom/dy/neu/common/BaseActivity$3;->this$0:Lcom/dy/neu/common/BaseActivity;

    iget-object v3, p0, Lcom/dy/neu/common/BaseActivity$3;->val$url:Ljava/lang/String;

    iget-object v4, p0, Lcom/dy/neu/common/BaseActivity$3;->val$params:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/dy/neu/common/BaseActivity;->getGetData(Ljava/lang/String;Ljava/util/List;)Lcom/dy/neu/common/ResponseData;

    move-result-object v1

    .restart local v1    # "resData":Lcom/dy/neu/common/ResponseData;
    goto :goto_0

    .line 116
    .restart local v0    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v2, 0x0

    iput v2, v0, Landroid/os/Message;->what:I

    goto :goto_1
.end method
