.class Lcom/dy/neu/activity/ProfessionDevelopPlanBatchActivity$2;
.super Ljava/lang/Object;
.source "ProfessionDevelopPlanBatchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dy/neu/activity/ProfessionDevelopPlanBatchActivity;->fetchData(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dy/neu/activity/ProfessionDevelopPlanBatchActivity;


# direct methods
.method constructor <init>(Lcom/dy/neu/activity/ProfessionDevelopPlanBatchActivity;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/dy/neu/activity/ProfessionDevelopPlanBatchActivity$2;->this$0:Lcom/dy/neu/activity/ProfessionDevelopPlanBatchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
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
    .line 71
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v4, p1

    check-cast v4, Landroid/widget/ListView;

    .line 72
    .local v4, "listView":Landroid/widget/ListView;
    invoke-virtual {v4, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dy/neu/common/ListItemLine1;

    .line 73
    .local v3, "item":Lcom/dy/neu/common/ListItemLine1;
    invoke-virtual {v3}, Lcom/dy/neu/common/ListItemLine1;->getListItemId()Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, "professionId":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/dy/neu/common/ListItemLine1;->getListItemName()Ljava/lang/String;

    move-result-object v6

    .line 75
    .local v6, "professionName":Ljava/lang/String;
    const-string v7, "professionId"

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/dy/neu/activity/ProfessionDevelopPlanBatchActivity$2;->this$0:Lcom/dy/neu/activity/ProfessionDevelopPlanBatchActivity;

    const-class v8, Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .local v2, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/dy/neu/activity/ProfessionDevelopPlanBatchActivity$2;->this$0:Lcom/dy/neu/activity/ProfessionDevelopPlanBatchActivity;

    invoke-virtual {v7}, Lcom/dy/neu/activity/ProfessionDevelopPlanBatchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 78
    .local v1, "data":Landroid/content/Intent;
    const-string v7, "batchId"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "batchId":Ljava/lang/String;
    const-string v7, "batchId"

    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v7, "professionId"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v7, "professionName"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v7, "professionIntroduce"

    invoke-virtual {v3}, Lcom/dy/neu/common/ListItemLine1;->getRemark1()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    iget-object v7, p0, Lcom/dy/neu/activity/ProfessionDevelopPlanBatchActivity$2;->this$0:Lcom/dy/neu/activity/ProfessionDevelopPlanBatchActivity;

    invoke-virtual {v7, v2}, Lcom/dy/neu/activity/ProfessionDevelopPlanBatchActivity;->startActivity(Landroid/content/Intent;)V

    .line 84
    return-void
.end method
