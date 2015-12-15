.class Lcom/dy/neu/activity/RollBookTaskActivity$2;
.super Ljava/lang/Object;
.source "RollBookTaskActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dy/neu/activity/RollBookTaskActivity;->fetchData(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dy/neu/activity/RollBookTaskActivity;


# direct methods
.method constructor <init>(Lcom/dy/neu/activity/RollBookTaskActivity;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/dy/neu/activity/RollBookTaskActivity$2;->this$0:Lcom/dy/neu/activity/RollBookTaskActivity;

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
    .line 64
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v2, p1

    check-cast v2, Landroid/widget/ListView;

    .line 65
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {v2, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dy/neu/common/ListItemLine2;

    .line 66
    .local v1, "item":Lcom/dy/neu/common/ListItemLine2;
    invoke-virtual {v1}, Lcom/dy/neu/common/ListItemLine2;->getListItemId()Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "taskId":Ljava/lang/String;
    const-string v4, "taskId"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/dy/neu/activity/RollBookTaskActivity$2;->this$0:Lcom/dy/neu/activity/RollBookTaskActivity;

    const-class v5, Lcom/dy/neu/activity/RollBookActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "taskId"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    iget-object v4, p0, Lcom/dy/neu/activity/RollBookTaskActivity$2;->this$0:Lcom/dy/neu/activity/RollBookTaskActivity;

    invoke-virtual {v4, v0}, Lcom/dy/neu/activity/RollBookTaskActivity;->startActivity(Landroid/content/Intent;)V

    .line 71
    return-void
.end method
