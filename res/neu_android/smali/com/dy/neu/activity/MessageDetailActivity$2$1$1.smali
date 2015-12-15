.class Lcom/dy/neu/activity/MessageDetailActivity$2$1$1;
.super Ljava/lang/Thread;
.source "MessageDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dy/neu/activity/MessageDetailActivity$2$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/dy/neu/activity/MessageDetailActivity$2$1;


# direct methods
.method constructor <init>(Lcom/dy/neu/activity/MessageDetailActivity$2$1;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/dy/neu/activity/MessageDetailActivity$2$1$1;->this$2:Lcom/dy/neu/activity/MessageDetailActivity$2$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dy/neu/activity/MessageDetailActivity$2$1$1;->this$2:Lcom/dy/neu/activity/MessageDetailActivity$2$1;

    iget-object v0, v0, Lcom/dy/neu/activity/MessageDetailActivity$2$1;->this$1:Lcom/dy/neu/activity/MessageDetailActivity$2;

    iget-object v0, v0, Lcom/dy/neu/activity/MessageDetailActivity$2;->this$0:Lcom/dy/neu/activity/MessageDetailActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/dy/neu/activity/MessageDetailActivity;->MODULE_URL_MESSAGE_CONFIRM:Ljava/lang/String;
    invoke-static {}, Lcom/dy/neu/activity/MessageDetailActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dy/neu/activity/MessageDetailActivity$2$1$1;->this$2:Lcom/dy/neu/activity/MessageDetailActivity$2$1;

    iget-object v2, v2, Lcom/dy/neu/activity/MessageDetailActivity$2$1;->this$1:Lcom/dy/neu/activity/MessageDetailActivity$2;

    iget-object v2, v2, Lcom/dy/neu/activity/MessageDetailActivity$2;->val$messageId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Lcom/dy/neu/activity/MessageDetailActivity;->getGetData(Ljava/lang/String;Ljava/util/List;)Lcom/dy/neu/common/ResponseData;
    invoke-static {v0, v1, v2}, Lcom/dy/neu/activity/MessageDetailActivity;->access$100(Lcom/dy/neu/activity/MessageDetailActivity;Ljava/lang/String;Ljava/util/List;)Lcom/dy/neu/common/ResponseData;

    .line 61
    return-void
.end method
