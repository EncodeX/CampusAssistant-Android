.class Lcom/dy/neu/activity/FreeClassroomActivity$2$1;
.super Ljava/lang/Object;
.source "FreeClassroomActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dy/neu/activity/FreeClassroomActivity$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/dy/neu/activity/FreeClassroomActivity$2;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/dy/neu/activity/FreeClassroomActivity$2;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/dy/neu/activity/FreeClassroomActivity$2$1;->this$1:Lcom/dy/neu/activity/FreeClassroomActivity$2;

    iput-object p2, p0, Lcom/dy/neu/activity/FreeClassroomActivity$2$1;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 89
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/dy/neu/activity/FreeClassroomActivity$2$1;->this$1:Lcom/dy/neu/activity/FreeClassroomActivity$2;

    iget-object v2, v2, Lcom/dy/neu/activity/FreeClassroomActivity$2;->this$0:Lcom/dy/neu/activity/FreeClassroomActivity;

    const v3, 0x7f080006

    invoke-virtual {v2, v3}, Lcom/dy/neu/activity/FreeClassroomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 90
    .local v0, "lvFreeClassrooms":Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/dy/neu/activity/FreeClassroomActivity$2$1;->val$list:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dy/neu/common/SpinnerData;

    .line 94
    .local v1, "sd":Lcom/dy/neu/common/SpinnerData;
    invoke-virtual {v1}, Lcom/dy/neu/common/SpinnerData;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    if-eq v2, v3, :cond_1

    .line 95
    iget-object v2, p0, Lcom/dy/neu/activity/FreeClassroomActivity$2$1;->this$1:Lcom/dy/neu/activity/FreeClassroomActivity$2;

    iget-object v2, v2, Lcom/dy/neu/activity/FreeClassroomActivity$2;->this$0:Lcom/dy/neu/activity/FreeClassroomActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/dy/neu/activity/FreeClassroomActivity;->MODULE_URL:Ljava/lang/String;
    invoke-static {}, Lcom/dy/neu/activity/FreeClassroomActivity;->access$200()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/dy/neu/common/SpinnerData;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    # invokes: Lcom/dy/neu/activity/FreeClassroomActivity;->getData(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/dy/neu/activity/FreeClassroomActivity;->access$300(Lcom/dy/neu/activity/FreeClassroomActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_1
    return-void
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
    .line 102
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
