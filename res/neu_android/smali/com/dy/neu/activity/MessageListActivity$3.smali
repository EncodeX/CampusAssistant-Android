.class Lcom/dy/neu/activity/MessageListActivity$3;
.super Ljava/lang/Object;
.source "MessageListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 137
    iput-object p1, p0, Lcom/dy/neu/activity/MessageListActivity$3;->this$0:Lcom/dy/neu/activity/MessageListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v2, p1

    check-cast v2, Landroid/widget/ListView;

    .line 141
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {v2, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dy/neu/common/ListItemLine2;

    .line 142
    .local v1, "item":Lcom/dy/neu/common/ListItemLine2;
    invoke-virtual {v1}, Lcom/dy/neu/common/ListItemLine2;->getListItemId()Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, "messageId":Ljava/lang/String;
    const-string v4, "messageId"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/dy/neu/activity/MessageListActivity$3;->this$0:Lcom/dy/neu/activity/MessageListActivity;

    const-class v5, Lcom/dy/neu/activity/MessageDetailActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "messageId"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v4, "msgFlag"

    iget-object v5, p0, Lcom/dy/neu/activity/MessageListActivity$3;->this$0:Lcom/dy/neu/activity/MessageListActivity;

    # getter for: Lcom/dy/neu/activity/MessageListActivity;->msgFlag:Ljava/lang/String;
    invoke-static {v5}, Lcom/dy/neu/activity/MessageListActivity;->access$700(Lcom/dy/neu/activity/MessageListActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    iget-object v4, p0, Lcom/dy/neu/activity/MessageListActivity$3;->this$0:Lcom/dy/neu/activity/MessageListActivity;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/dy/neu/activity/MessageListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 148
    return-void
.end method
