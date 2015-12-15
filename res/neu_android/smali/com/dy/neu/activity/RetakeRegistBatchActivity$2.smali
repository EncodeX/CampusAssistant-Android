.class Lcom/dy/neu/activity/RetakeRegistBatchActivity$2;
.super Ljava/lang/Object;
.source "RetakeRegistBatchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dy/neu/activity/RetakeRegistBatchActivity;->fetchData(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dy/neu/activity/RetakeRegistBatchActivity;


# direct methods
.method constructor <init>(Lcom/dy/neu/activity/RetakeRegistBatchActivity;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/dy/neu/activity/RetakeRegistBatchActivity$2;->this$0:Lcom/dy/neu/activity/RetakeRegistBatchActivity;

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
    .line 61
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v3, p1

    check-cast v3, Landroid/widget/ListView;

    .line 62
    .local v3, "listView":Landroid/widget/ListView;
    invoke-virtual {v3, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dy/neu/common/ListItemLine1;

    .line 63
    .local v2, "item":Lcom/dy/neu/common/ListItemLine1;
    invoke-virtual {v2}, Lcom/dy/neu/common/ListItemLine1;->getListItemId()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "batchId":Ljava/lang/String;
    const-string v4, "batchId"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/dy/neu/activity/RetakeRegistBatchActivity$2;->this$0:Lcom/dy/neu/activity/RetakeRegistBatchActivity;

    const-class v5, Lcom/dy/neu/activity/RetakeRegistActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "batchId"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    iget-object v4, p0, Lcom/dy/neu/activity/RetakeRegistBatchActivity$2;->this$0:Lcom/dy/neu/activity/RetakeRegistBatchActivity;

    invoke-virtual {v4, v1}, Lcom/dy/neu/activity/RetakeRegistBatchActivity;->startActivity(Landroid/content/Intent;)V

    .line 68
    return-void
.end method
