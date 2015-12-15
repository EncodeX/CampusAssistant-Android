.class Lcom/dy/neu/activity/StudentScoreActivity$4;
.super Ljava/lang/Object;
.source "StudentScoreActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dy/neu/activity/StudentScoreActivity;->fetchData(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dy/neu/activity/StudentScoreActivity;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/dy/neu/activity/StudentScoreActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/dy/neu/activity/StudentScoreActivity$4;->this$0:Lcom/dy/neu/activity/StudentScoreActivity;

    iput-object p2, p0, Lcom/dy/neu/activity/StudentScoreActivity$4;->val$list:Ljava/util/List;

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
    .line 106
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/dy/neu/activity/StudentScoreActivity$4;->this$0:Lcom/dy/neu/activity/StudentScoreActivity;

    const v5, 0x7f08004d

    invoke-virtual {v4, v5}, Lcom/dy/neu/activity/StudentScoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 107
    .local v3, "teachingTasksList":Landroid/widget/ListView;
    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 108
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    :cond_0
    iget-object v4, p0, Lcom/dy/neu/activity/StudentScoreActivity$4;->val$list:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dy/neu/common/SpinnerData;

    .line 111
    .local v2, "sd":Lcom/dy/neu/common/SpinnerData;
    invoke-virtual {v2}, Lcom/dy/neu/common/SpinnerData;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    if-eq v4, v5, :cond_1

    .line 112
    iget-object v4, p0, Lcom/dy/neu/activity/StudentScoreActivity$4;->this$0:Lcom/dy/neu/activity/StudentScoreActivity;

    invoke-virtual {v4}, Lcom/dy/neu/activity/StudentScoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 113
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "isTeacher"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 114
    .local v1, "isTeacher":Z
    if-eqz v1, :cond_2

    .line 121
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "isTeacher":Z
    :cond_1
    :goto_0
    return-void

    .line 118
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "isTeacher":Z
    :cond_2
    iget-object v4, p0, Lcom/dy/neu/activity/StudentScoreActivity$4;->this$0:Lcom/dy/neu/activity/StudentScoreActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/dy/neu/activity/StudentScoreActivity;->MODULE_URL:Ljava/lang/String;
    invoke-static {}, Lcom/dy/neu/activity/StudentScoreActivity;->access$000()Ljava/lang/String;

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

    # invokes: Lcom/dy/neu/activity/StudentScoreActivity;->getData(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lcom/dy/neu/activity/StudentScoreActivity;->access$300(Lcom/dy/neu/activity/StudentScoreActivity;Ljava/lang/String;Ljava/lang/String;)V

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
    .line 126
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
