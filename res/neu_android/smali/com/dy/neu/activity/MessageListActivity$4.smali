.class Lcom/dy/neu/activity/MessageListActivity$4;
.super Landroid/os/Handler;
.source "MessageListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dy/neu/activity/MessageListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dy/neu/activity/MessageListActivity;


# direct methods
.method constructor <init>(Lcom/dy/neu/activity/MessageListActivity;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/dy/neu/activity/MessageListActivity$4;->this$0:Lcom/dy/neu/activity/MessageListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 198
    iget-object v0, p0, Lcom/dy/neu/activity/MessageListActivity$4;->this$0:Lcom/dy/neu/activity/MessageListActivity;

    # setter for: Lcom/dy/neu/activity/MessageListActivity;->isLoading:Z
    invoke-static {v0, v1}, Lcom/dy/neu/activity/MessageListActivity;->access$002(Lcom/dy/neu/activity/MessageListActivity;Z)Z

    .line 199
    iget-object v0, p0, Lcom/dy/neu/activity/MessageListActivity$4;->this$0:Lcom/dy/neu/activity/MessageListActivity;

    # getter for: Lcom/dy/neu/activity/MessageListActivity;->more:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/dy/neu/activity/MessageListActivity;->access$100(Lcom/dy/neu/activity/MessageListActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/dy/neu/activity/MessageListActivity$4;->this$0:Lcom/dy/neu/activity/MessageListActivity;

    # getter for: Lcom/dy/neu/activity/MessageListActivity;->loading:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/dy/neu/activity/MessageListActivity;->access$200(Lcom/dy/neu/activity/MessageListActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/dy/neu/activity/MessageListActivity$4;->this$0:Lcom/dy/neu/activity/MessageListActivity;

    iget-object v0, v0, Lcom/dy/neu/activity/MessageListActivity;->mva:Lcom/dy/neu/common/ListItemLine2Adapter;

    invoke-virtual {v0}, Lcom/dy/neu/common/ListItemLine2Adapter;->notifyDataSetChanged()V

    .line 206
    return-void
.end method
