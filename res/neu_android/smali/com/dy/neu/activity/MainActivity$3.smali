.class Lcom/dy/neu/activity/MainActivity$3;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dy/neu/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dy/neu/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/dy/neu/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/dy/neu/activity/MainActivity$3;->this$0:Lcom/dy/neu/activity/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 376
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 390
    :goto_0
    return-void

    .line 381
    :pswitch_0
    iget-object v0, p0, Lcom/dy/neu/activity/MainActivity$3;->this$0:Lcom/dy/neu/activity/MainActivity;

    # getter for: Lcom/dy/neu/activity/MainActivity;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/dy/neu/activity/MainActivity;->access$100(Lcom/dy/neu/activity/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$3;->this$0:Lcom/dy/neu/activity/MainActivity;

    # getter for: Lcom/dy/neu/activity/MainActivity;->progress:I
    invoke-static {v1}, Lcom/dy/neu/activity/MainActivity;->access$000(Lcom/dy/neu/activity/MainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 385
    :pswitch_1
    iget-object v0, p0, Lcom/dy/neu/activity/MainActivity$3;->this$0:Lcom/dy/neu/activity/MainActivity;

    # invokes: Lcom/dy/neu/activity/MainActivity;->installApk()V
    invoke-static {v0}, Lcom/dy/neu/activity/MainActivity;->access$200(Lcom/dy/neu/activity/MainActivity;)V

    goto :goto_0

    .line 376
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
