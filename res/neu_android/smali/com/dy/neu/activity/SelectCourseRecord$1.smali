.class Lcom/dy/neu/activity/SelectCourseRecord$1;
.super Ljava/lang/Object;
.source "SelectCourseRecord.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dy/neu/activity/SelectCourseRecord;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dy/neu/activity/SelectCourseRecord;


# direct methods
.method constructor <init>(Lcom/dy/neu/activity/SelectCourseRecord;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/dy/neu/activity/SelectCourseRecord$1;->this$0:Lcom/dy/neu/activity/SelectCourseRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dy/neu/activity/SelectCourseRecord$1;->this$0:Lcom/dy/neu/activity/SelectCourseRecord;

    invoke-virtual {v0}, Lcom/dy/neu/activity/SelectCourseRecord;->finish()V

    .line 35
    return-void
.end method
