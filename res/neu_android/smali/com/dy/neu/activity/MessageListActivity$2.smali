.class Lcom/dy/neu/activity/MessageListActivity$2;
.super Ljava/lang/Object;
.source "MessageListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dy/neu/activity/MessageListActivity;->fetchData(Ljava/util/List;Ljava/lang/String;)V
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
    .line 94
    iput-object p1, p0, Lcom/dy/neu/activity/MessageListActivity$2;->this$0:Lcom/dy/neu/activity/MessageListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 97
    iget-object v1, p0, Lcom/dy/neu/activity/MessageListActivity$2;->this$0:Lcom/dy/neu/activity/MessageListActivity;

    # getter for: Lcom/dy/neu/activity/MessageListActivity;->isLoading:Z
    invoke-static {v1}, Lcom/dy/neu/activity/MessageListActivity;->access$000(Lcom/dy/neu/activity/MessageListActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/dy/neu/activity/MessageListActivity$2;->this$0:Lcom/dy/neu/activity/MessageListActivity;

    # getter for: Lcom/dy/neu/activity/MessageListActivity;->more:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/dy/neu/activity/MessageListActivity;->access$100(Lcom/dy/neu/activity/MessageListActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v1, p0, Lcom/dy/neu/activity/MessageListActivity$2;->this$0:Lcom/dy/neu/activity/MessageListActivity;

    # getter for: Lcom/dy/neu/activity/MessageListActivity;->loading:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/dy/neu/activity/MessageListActivity;->access$200(Lcom/dy/neu/activity/MessageListActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 100
    iget-object v1, p0, Lcom/dy/neu/activity/MessageListActivity$2;->this$0:Lcom/dy/neu/activity/MessageListActivity;

    const/4 v2, 0x1

    # setter for: Lcom/dy/neu/activity/MessageListActivity;->isLoading:Z
    invoke-static {v1, v2}, Lcom/dy/neu/activity/MessageListActivity;->access$002(Lcom/dy/neu/activity/MessageListActivity;Z)Z

    .line 101
    iget-object v1, p0, Lcom/dy/neu/activity/MessageListActivity$2;->this$0:Lcom/dy/neu/activity/MessageListActivity;

    # operator++ for: Lcom/dy/neu/activity/MessageListActivity;->page:I
    invoke-static {v1}, Lcom/dy/neu/activity/MessageListActivity;->access$308(Lcom/dy/neu/activity/MessageListActivity;)I

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "page"

    iget-object v3, p0, Lcom/dy/neu/activity/MessageListActivity$2;->this$0:Lcom/dy/neu/activity/MessageListActivity;

    # getter for: Lcom/dy/neu/activity/MessageListActivity;->page:I
    invoke-static {v3}, Lcom/dy/neu/activity/MessageListActivity;->access$300(Lcom/dy/neu/activity/MessageListActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "pageSize"

    iget-object v3, p0, Lcom/dy/neu/activity/MessageListActivity$2;->this$0:Lcom/dy/neu/activity/MessageListActivity;

    invoke-virtual {v3}, Lcom/dy/neu/activity/MessageListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f070000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v1, p0, Lcom/dy/neu/activity/MessageListActivity$2;->this$0:Lcom/dy/neu/activity/MessageListActivity;

    # getter for: Lcom/dy/neu/activity/MessageListActivity;->MODULE_URL_NOTICE:Ljava/lang/String;
    invoke-static {}, Lcom/dy/neu/activity/MessageListActivity;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    # invokes: Lcom/dy/neu/activity/MessageListActivity;->getData(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    invoke-static {v1, v2, v0, v3}, Lcom/dy/neu/activity/MessageListActivity;->access$500(Lcom/dy/neu/activity/MessageListActivity;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/dy/neu/activity/MessageListActivity$2;->this$0:Lcom/dy/neu/activity/MessageListActivity;

    # getter for: Lcom/dy/neu/activity/MessageListActivity;->mhHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/dy/neu/activity/MessageListActivity;->access$600(Lcom/dy/neu/activity/MessageListActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x111

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
