.class Lcom/dy/neu/activity/TeachingTasksActivity$2$1;
.super Ljava/lang/Object;
.source "TeachingTasksActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dy/neu/activity/TeachingTasksActivity$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/dy/neu/activity/TeachingTasksActivity$2;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/dy/neu/activity/TeachingTasksActivity$2;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/dy/neu/activity/TeachingTasksActivity$2$1;->this$1:Lcom/dy/neu/activity/TeachingTasksActivity$2;

    iput-object p2, p0, Lcom/dy/neu/activity/TeachingTasksActivity$2$1;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 90
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/dy/neu/activity/TeachingTasksActivity$2$1;->this$1:Lcom/dy/neu/activity/TeachingTasksActivity$2;

    iget-object v4, v4, Lcom/dy/neu/activity/TeachingTasksActivity$2;->this$0:Lcom/dy/neu/activity/TeachingTasksActivity;

    const v5, 0x7f080050

    invoke-virtual {v4, v5}, Lcom/dy/neu/activity/TeachingTasksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 91
    .local v3, "teachingTasksList":Landroid/widget/ListView;
    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 92
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    :cond_0
    iget-object v4, p0, Lcom/dy/neu/activity/TeachingTasksActivity$2$1;->val$list:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dy/neu/common/SpinnerData;

    .line 95
    .local v2, "sd":Lcom/dy/neu/common/SpinnerData;
    invoke-virtual {v2}, Lcom/dy/neu/common/SpinnerData;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    if-eq v4, v5, :cond_1

    .line 96
    iget-object v4, p0, Lcom/dy/neu/activity/TeachingTasksActivity$2$1;->this$1:Lcom/dy/neu/activity/TeachingTasksActivity$2;

    iget-object v4, v4, Lcom/dy/neu/activity/TeachingTasksActivity$2;->this$0:Lcom/dy/neu/activity/TeachingTasksActivity;

    invoke-virtual {v4}, Lcom/dy/neu/activity/TeachingTasksActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "isTeacher"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 98
    .local v1, "isTeacher":Z
    if-eqz v1, :cond_2

    .line 99
    iget-object v4, p0, Lcom/dy/neu/activity/TeachingTasksActivity$2$1;->this$1:Lcom/dy/neu/activity/TeachingTasksActivity$2;

    iget-object v4, v4, Lcom/dy/neu/activity/TeachingTasksActivity$2;->this$0:Lcom/dy/neu/activity/TeachingTasksActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/dy/neu/activity/TeachingTasksActivity;->MODULE_URL_FOR_TEACHER:Ljava/lang/String;
    invoke-static {}, Lcom/dy/neu/activity/TeachingTasksActivity;->access$200()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/dy/neu/common/SpinnerData;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    # invokes: Lcom/dy/neu/activity/TeachingTasksActivity;->getData(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lcom/dy/neu/activity/TeachingTasksActivity;->access$300(Lcom/dy/neu/activity/TeachingTasksActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "isTeacher":Z
    :cond_1
    :goto_0
    return-void

    .line 102
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "isTeacher":Z
    :cond_2
    iget-object v4, p0, Lcom/dy/neu/activity/TeachingTasksActivity$2$1;->this$1:Lcom/dy/neu/activity/TeachingTasksActivity$2;

    iget-object v4, v4, Lcom/dy/neu/activity/TeachingTasksActivity$2;->this$0:Lcom/dy/neu/activity/TeachingTasksActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/dy/neu/activity/TeachingTasksActivity;->MODULE_URL:Ljava/lang/String;
    invoke-static {}, Lcom/dy/neu/activity/TeachingTasksActivity;->access$400()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/dy/neu/common/SpinnerData;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    # invokes: Lcom/dy/neu/activity/TeachingTasksActivity;->getData(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lcom/dy/neu/activity/TeachingTasksActivity;->access$500(Lcom/dy/neu/activity/TeachingTasksActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
