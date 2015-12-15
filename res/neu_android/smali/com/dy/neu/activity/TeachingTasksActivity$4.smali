.class Lcom/dy/neu/activity/TeachingTasksActivity$4;
.super Ljava/lang/Thread;
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

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/dy/neu/activity/TeachingTasksActivity;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/dy/neu/activity/TeachingTasksActivity$4;->this$0:Lcom/dy/neu/activity/TeachingTasksActivity;

    iput-object p2, p0, Lcom/dy/neu/activity/TeachingTasksActivity$4;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 134
    iget-object v2, p0, Lcom/dy/neu/activity/TeachingTasksActivity$4;->this$0:Lcom/dy/neu/activity/TeachingTasksActivity;

    const-string v3, "/termList"

    const/4 v4, 0x0

    # invokes: Lcom/dy/neu/activity/TeachingTasksActivity;->getGetData(Ljava/lang/String;Ljava/util/List;)Lcom/dy/neu/common/ResponseData;
    invoke-static {v2, v3, v4}, Lcom/dy/neu/activity/TeachingTasksActivity;->access$600(Lcom/dy/neu/activity/TeachingTasksActivity;Ljava/lang/String;Ljava/util/List;)Lcom/dy/neu/common/ResponseData;

    move-result-object v1

    .line 135
    .local v1, "resData":Lcom/dy/neu/common/ResponseData;
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 136
    .local v0, "msg":Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 137
    if-nez v1, :cond_0

    .line 138
    const/4 v2, -0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 143
    :goto_0
    iget-object v2, p0, Lcom/dy/neu/activity/TeachingTasksActivity$4;->val$handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 144
    return-void

    .line 141
    :cond_0
    const/4 v2, 0x0

    iput v2, v0, Landroid/os/Message;->what:I

    goto :goto_0
.end method
