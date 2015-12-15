.class Lcom/dy/neu/activity/FreeClassroomActivity$4;
.super Ljava/lang/Thread;
.source "FreeClassroomActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dy/neu/activity/FreeClassroomActivity;->fetchBuildings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dy/neu/activity/FreeClassroomActivity;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/dy/neu/activity/FreeClassroomActivity;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/dy/neu/activity/FreeClassroomActivity$4;->this$0:Lcom/dy/neu/activity/FreeClassroomActivity;

    iput-object p2, p0, Lcom/dy/neu/activity/FreeClassroomActivity$4;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 130
    iget-object v2, p0, Lcom/dy/neu/activity/FreeClassroomActivity$4;->this$0:Lcom/dy/neu/activity/FreeClassroomActivity;

    const-string v3, "/buildings"

    const/4 v4, 0x0

    # invokes: Lcom/dy/neu/activity/FreeClassroomActivity;->getGetData(Ljava/lang/String;Ljava/util/List;)Lcom/dy/neu/common/ResponseData;
    invoke-static {v2, v3, v4}, Lcom/dy/neu/activity/FreeClassroomActivity;->access$400(Lcom/dy/neu/activity/FreeClassroomActivity;Ljava/lang/String;Ljava/util/List;)Lcom/dy/neu/common/ResponseData;

    move-result-object v1

    .line 131
    .local v1, "resData":Lcom/dy/neu/common/ResponseData;
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 132
    .local v0, "msg":Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 133
    if-nez v1, :cond_0

    .line 134
    const/4 v2, -0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 139
    :goto_0
    iget-object v2, p0, Lcom/dy/neu/activity/FreeClassroomActivity$4;->val$handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 140
    return-void

    .line 137
    :cond_0
    const/4 v2, 0x0

    iput v2, v0, Landroid/os/Message;->what:I

    goto :goto_0
.end method
