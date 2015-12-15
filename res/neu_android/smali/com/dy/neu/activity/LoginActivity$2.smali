.class Lcom/dy/neu/activity/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dy/neu/activity/LoginActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dy/neu/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/dy/neu/activity/LoginActivity;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/dy/neu/activity/LoginActivity$2;->this$0:Lcom/dy/neu/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dy/neu/activity/LoginActivity$2;->this$0:Lcom/dy/neu/activity/LoginActivity;

    const-class v2, Lcom/dy/neu/activity/HelpActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/dy/neu/activity/LoginActivity$2;->this$0:Lcom/dy/neu/activity/LoginActivity;

    invoke-virtual {v1, v0}, Lcom/dy/neu/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 127
    return-void
.end method
