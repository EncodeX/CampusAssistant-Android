.class Lcom/dy/neu/activity/LoginActivity$5;
.super Landroid/os/Handler;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dy/neu/activity/LoginActivity;
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
    .line 276
    iput-object p1, p0, Lcom/dy/neu/activity/LoginActivity$5;->this$0:Lcom/dy/neu/activity/LoginActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 279
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 293
    :goto_0
    return-void

    .line 284
    :pswitch_0
    iget-object v0, p0, Lcom/dy/neu/activity/LoginActivity$5;->this$0:Lcom/dy/neu/activity/LoginActivity;

    # getter for: Lcom/dy/neu/activity/LoginActivity;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/dy/neu/activity/LoginActivity;->access$900(Lcom/dy/neu/activity/LoginActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/dy/neu/activity/LoginActivity$5;->this$0:Lcom/dy/neu/activity/LoginActivity;

    # getter for: Lcom/dy/neu/activity/LoginActivity;->progress:I
    invoke-static {v1}, Lcom/dy/neu/activity/LoginActivity;->access$600(Lcom/dy/neu/activity/LoginActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 288
    :pswitch_1
    iget-object v0, p0, Lcom/dy/neu/activity/LoginActivity$5;->this$0:Lcom/dy/neu/activity/LoginActivity;

    # invokes: Lcom/dy/neu/activity/LoginActivity;->installApk()V
    invoke-static {v0}, Lcom/dy/neu/activity/LoginActivity;->access$1000(Lcom/dy/neu/activity/LoginActivity;)V

    goto :goto_0

    .line 279
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
