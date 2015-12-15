.class Lcom/dy/neu/activity/StudentScheduleActivity$2;
.super Ljava/lang/Object;
.source "StudentScheduleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dy/neu/activity/StudentScheduleActivity;->fetchData(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dy/neu/activity/StudentScheduleActivity;

.field final synthetic val$touchStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dy/neu/activity/StudentScheduleActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/dy/neu/activity/StudentScheduleActivity$2;->this$0:Lcom/dy/neu/activity/StudentScheduleActivity;

    iput-object p2, p0, Lcom/dy/neu/activity/StudentScheduleActivity$2;->val$touchStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 164
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/dy/neu/activity/StudentScheduleActivity$2;->this$0:Lcom/dy/neu/activity/StudentScheduleActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u8bfe\u7a0b\u8be6\u7ec6"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/dy/neu/activity/StudentScheduleActivity$2;->val$touchStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/dy/neu/activity/StudentScheduleActivity$2$1;

    invoke-direct {v2, p0}, Lcom/dy/neu/activity/StudentScheduleActivity$2$1;-><init>(Lcom/dy/neu/activity/StudentScheduleActivity$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 171
    return-void
.end method
