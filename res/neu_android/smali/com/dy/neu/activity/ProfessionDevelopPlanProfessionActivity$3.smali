.class Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity$3;
.super Ljava/lang/Object;
.source "ProfessionDevelopPlanProfessionActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity;->fetchData(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity;


# direct methods
.method constructor <init>(Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity$3;->this$0:Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    .line 85
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v6, p1

    check-cast v6, Landroid/widget/ListView;

    .line 86
    .local v6, "listView":Landroid/widget/ListView;
    invoke-virtual {v6, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dy/neu/common/ListItemLine3;

    .line 87
    .local v5, "item":Lcom/dy/neu/common/ListItemLine3;
    invoke-virtual {v5}, Lcom/dy/neu/common/ListItemLine3;->getListItemId()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "courseId":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/dy/neu/common/ListItemLine3;->getListItemName()Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "courseName":Ljava/lang/String;
    const-string v8, "courseId"

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v4, Landroid/content/Intent;

    iget-object v8, p0, Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity$3;->this$0:Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity;

    const-class v9, Lcom/dy/neu/activity/ProfessionDevelopPlanCourseActivity;

    invoke-direct {v4, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    .local v4, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity$3;->this$0:Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity;

    invoke-virtual {v8}, Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 92
    .local v3, "data":Landroid/content/Intent;
    const-string v8, "batchId"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "batchId":Ljava/lang/String;
    const-string v8, "professionId"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 94
    .local v7, "professionId":Ljava/lang/String;
    const-string v8, "batchId"

    invoke-virtual {v4, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v8, "professionId"

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v8, "courseId"

    invoke-virtual {v4, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string v8, "courseName"

    invoke-virtual {v4, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v8, "courseIntroduce"

    invoke-virtual {v5}, Lcom/dy/neu/common/ListItemLine3;->getRemark1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    iget-object v8, p0, Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity$3;->this$0:Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity;

    invoke-virtual {v8, v4}, Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity;->startActivity(Landroid/content/Intent;)V

    .line 100
    return-void
.end method
