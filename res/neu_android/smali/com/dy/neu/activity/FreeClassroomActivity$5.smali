.class Lcom/dy/neu/activity/FreeClassroomActivity$5;
.super Ljava/lang/Object;
.source "FreeClassroomActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dy/neu/activity/FreeClassroomActivity;->fetchData(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dy/neu/activity/FreeClassroomActivity;


# direct methods
.method constructor <init>(Lcom/dy/neu/activity/FreeClassroomActivity;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/dy/neu/activity/FreeClassroomActivity$5;->this$0:Lcom/dy/neu/activity/FreeClassroomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 166
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v4, p1

    check-cast v4, Landroid/widget/ListView;

    .line 167
    .local v4, "listView":Landroid/widget/ListView;
    invoke-virtual {v4, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dy/neu/common/ListItemLine1;

    .line 168
    .local v3, "item":Lcom/dy/neu/common/ListItemLine1;
    invoke-virtual {v3}, Lcom/dy/neu/common/ListItemLine1;->getListItemId()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "classroomsId":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/dy/neu/common/ListItemLine1;->getListItemName()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "classroomsName":Ljava/lang/String;
    const-string v5, "classroomsId"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/dy/neu/activity/FreeClassroomActivity$5;->this$0:Lcom/dy/neu/activity/FreeClassroomActivity;

    const-class v6, Lcom/dy/neu/activity/FreeClassroomDetailActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "classroomsId"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v5, "classroomsName"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    iget-object v5, p0, Lcom/dy/neu/activity/FreeClassroomActivity$5;->this$0:Lcom/dy/neu/activity/FreeClassroomActivity;

    invoke-virtual {v5, v2}, Lcom/dy/neu/activity/FreeClassroomActivity;->startActivity(Landroid/content/Intent;)V

    .line 175
    return-void
.end method
