.class Lcom/dy/neu/activity/LoginActivity$13;
.super Ljava/lang/Thread;
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

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/dy/neu/activity/LoginActivity;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 570
    iput-object p1, p0, Lcom/dy/neu/activity/LoginActivity$13;->this$0:Lcom/dy/neu/activity/LoginActivity;

    iput-object p2, p0, Lcom/dy/neu/activity/LoginActivity$13;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 574
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 575
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "userName"

    iget-object v5, p0, Lcom/dy/neu/activity/LoginActivity$13;->this$0:Lcom/dy/neu/activity/LoginActivity;

    # invokes: Lcom/dy/neu/activity/LoginActivity;->getUserName()Ljava/lang/String;
    invoke-static {v5}, Lcom/dy/neu/activity/LoginActivity;->access$1600(Lcom/dy/neu/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "passwd"

    iget-object v5, p0, Lcom/dy/neu/activity/LoginActivity$13;->this$0:Lcom/dy/neu/activity/LoginActivity;

    const-string v6, "pwd"

    # invokes: Lcom/dy/neu/activity/LoginActivity;->getUserInfo(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/dy/neu/activity/LoginActivity;->access$1700(Lcom/dy/neu/activity/LoginActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    iget-object v3, p0, Lcom/dy/neu/activity/LoginActivity$13;->this$0:Lcom/dy/neu/activity/LoginActivity;

    # getter for: Lcom/dy/neu/activity/LoginActivity;->MODULE_URL_LOGIN:Ljava/lang/String;
    invoke-static {}, Lcom/dy/neu/activity/LoginActivity;->access$000()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/dy/neu/activity/LoginActivity;->getGetData(Ljava/lang/String;Ljava/util/List;)Lcom/dy/neu/common/ResponseData;
    invoke-static {v3, v4, v1}, Lcom/dy/neu/activity/LoginActivity;->access$1800(Lcom/dy/neu/activity/LoginActivity;Ljava/lang/String;Ljava/util/List;)Lcom/dy/neu/common/ResponseData;

    move-result-object v2

    .line 578
    .local v2, "resData":Lcom/dy/neu/common/ResponseData;
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 579
    .local v0, "msg":Landroid/os/Message;
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 580
    if-nez v2, :cond_0

    .line 581
    const/4 v3, -0x1

    iput v3, v0, Landroid/os/Message;->what:I

    .line 586
    :goto_0
    iget-object v3, p0, Lcom/dy/neu/activity/LoginActivity$13;->val$handler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 587
    return-void

    .line 584
    :cond_0
    const/4 v3, 0x0

    iput v3, v0, Landroid/os/Message;->what:I

    goto :goto_0
.end method
