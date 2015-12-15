.class Lcom/dy/neu/activity/ProfessionDevelopPlanBatchListActivity$2;
.super Ljava/lang/Object;
.source "ProfessionDevelopPlanBatchListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dy/neu/activity/ProfessionDevelopPlanBatchListActivity;->fetchData(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dy/neu/activity/ProfessionDevelopPlanBatchListActivity;


# direct methods
.method constructor <init>(Lcom/dy/neu/activity/ProfessionDevelopPlanBatchListActivity;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/dy/neu/activity/ProfessionDevelopPlanBatchListActivity$2;->this$0:Lcom/dy/neu/activity/ProfessionDevelopPlanBatchListActivity;

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
    .line 66
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v3, p1

    check-cast v3, Landroid/widget/ListView;

    .line 67
    .local v3, "listView":Landroid/widget/ListView;
    invoke-virtual {v3, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dy/neu/common/ListItemLine2;

    .line 68
    .local v2, "item":Lcom/dy/neu/common/ListItemLine2;
    invoke-virtual {v2}, Lcom/dy/neu/common/ListItemLine2;->getListItemId()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "batchId":Ljava/lang/String;
    const-string v4, "batchId"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/dy/neu/activity/ProfessionDevelopPlanBatchListActivity$2;->this$0:Lcom/dy/neu/activity/ProfessionDevelopPlanBatchListActivity;

    const-class v5, Lcom/dy/neu/activity/ProfessionDevelopPlanBatchActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "batchId"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    iget-object v4, p0, Lcom/dy/neu/activity/ProfessionDevelopPlanBatchListActivity$2;->this$0:Lcom/dy/neu/activity/ProfessionDevelopPlanBatchListActivity;

    invoke-virtual {v4, v1}, Lcom/dy/neu/activity/ProfessionDevelopPlanBatchListActivity;->startActivity(Landroid/content/Intent;)V

    .line 73
    return-void
.end method
