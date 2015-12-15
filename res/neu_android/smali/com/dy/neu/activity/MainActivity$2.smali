.class Lcom/dy/neu/activity/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dy/neu/activity/MainActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dy/neu/activity/MainActivity;

.field final synthetic val$isTeacher:Z


# direct methods
.method constructor <init>(Lcom/dy/neu/activity/MainActivity;Z)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    iput-boolean p2, p0, Lcom/dy/neu/activity/MainActivity$2;->val$isTeacher:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 151
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-boolean v1, p0, Lcom/dy/neu/activity/MainActivity$2;->val$isTeacher:Z

    if-nez v1, :cond_0

    .line 152
    packed-switch p3, :pswitch_data_0

    .line 279
    :goto_0
    return-void

    .line 154
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    const-class v2, Lcom/dy/neu/activity/MessageListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "msgFlag"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/dy/neu/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 160
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    const-class v2, Lcom/dy/neu/activity/MessageListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "msgFlag"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/dy/neu/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 166
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    const-class v2, Lcom/dy/neu/activity/ProfessionDevelopPlanBatchListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/dy/neu/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 171
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    const-class v2, Lcom/dy/neu/activity/TeachingTasksActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/dy/neu/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 176
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    const-class v2, Lcom/dy/neu/activity/StudentScheduleActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/dy/neu/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 181
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    const-class v2, Lcom/dy/neu/activity/StudentScoreActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/dy/neu/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 186
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    const-class v2, Lcom/dy/neu/activity/InnovationCreditsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/dy/neu/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 191
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    const-class v2, Lcom/dy/neu/activity/SchoolRollActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/dy/neu/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 196
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    const-class v2, Lcom/dy/neu/activity/ExamScheduleActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/dy/neu/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 201
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_9
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    const-class v2, Lcom/dy/neu/activity/SelectCourseRecord;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/dy/neu/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 206
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_a
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    const-class v2, Lcom/dy/neu/activity/RetakeRegistActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/dy/neu/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 211
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_b
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    const-class v2, Lcom/dy/neu/activity/AcademicWarningActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/dy/neu/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 216
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_c
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    const-class v2, Lcom/dy/neu/activity/FreeClassroomActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/dy/neu/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 225
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    packed-switch p3, :pswitch_data_1

    goto/16 :goto_0

    .line 227
    :pswitch_d
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    const-class v2, Lcom/dy/neu/activity/MessageListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "msgFlag"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/dy/neu/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 233
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_e
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    const-class v2, Lcom/dy/neu/activity/MessageListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "msgFlag"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/dy/neu/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 239
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_f
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    const-class v2, Lcom/dy/neu/activity/ProfessionDevelopPlanBatchListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/dy/neu/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 244
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_10
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    const-class v2, Lcom/dy/neu/activity/TeachingTasksActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "isTeacher"

    iget-boolean v2, p0, Lcom/dy/neu/activity/MainActivity$2;->val$isTeacher:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 246
    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/dy/neu/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 250
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_11
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    const-class v2, Lcom/dy/neu/activity/StudentScheduleActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 251
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "isTeacher"

    iget-boolean v2, p0, Lcom/dy/neu/activity/MainActivity$2;->val$isTeacher:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 252
    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/dy/neu/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 256
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_12
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    const-class v2, Lcom/dy/neu/activity/ExamScheduleActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/dy/neu/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 261
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_13
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    const-class v2, Lcom/dy/neu/activity/TeachingEvaluationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 262
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/dy/neu/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 266
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_14
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    const-class v2, Lcom/dy/neu/activity/RollBookTaskActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 267
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/dy/neu/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 271
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_15
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    const-class v2, Lcom/dy/neu/activity/StudentScoreActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/dy/neu/activity/MainActivity$2;->this$0:Lcom/dy/neu/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/dy/neu/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 225
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method
