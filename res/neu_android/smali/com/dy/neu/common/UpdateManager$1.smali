.class Lcom/dy/neu/common/UpdateManager$1;
.super Landroid/os/Handler;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dy/neu/common/UpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dy/neu/common/UpdateManager;


# direct methods
.method constructor <init>(Lcom/dy/neu/common/UpdateManager;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/dy/neu/common/UpdateManager$1;->this$0:Lcom/dy/neu/common/UpdateManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 59
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 73
    :goto_0
    return-void

    .line 64
    :pswitch_0
    iget-object v0, p0, Lcom/dy/neu/common/UpdateManager$1;->this$0:Lcom/dy/neu/common/UpdateManager;

    # getter for: Lcom/dy/neu/common/UpdateManager;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/dy/neu/common/UpdateManager;->access$100(Lcom/dy/neu/common/UpdateManager;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/dy/neu/common/UpdateManager$1;->this$0:Lcom/dy/neu/common/UpdateManager;

    # getter for: Lcom/dy/neu/common/UpdateManager;->progress:I
    invoke-static {v1}, Lcom/dy/neu/common/UpdateManager;->access$000(Lcom/dy/neu/common/UpdateManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 68
    :pswitch_1
    iget-object v0, p0, Lcom/dy/neu/common/UpdateManager$1;->this$0:Lcom/dy/neu/common/UpdateManager;

    # invokes: Lcom/dy/neu/common/UpdateManager;->installApk()V
    invoke-static {v0}, Lcom/dy/neu/common/UpdateManager;->access$200(Lcom/dy/neu/common/UpdateManager;)V

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
