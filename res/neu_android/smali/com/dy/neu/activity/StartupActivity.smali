.class public Lcom/dy/neu/activity/StartupActivity;
.super Landroid/app/Activity;
.source "StartupActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const v1, 0x7f03001f

    invoke-virtual {p0, v1}, Lcom/dy/neu/activity/StartupActivity;->setContentView(I)V

    .line 17
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dy/neu/activity/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/dy/neu/activity/StartupActivity;->startActivity(Landroid/content/Intent;)V

    .line 19
    invoke-virtual {p0}, Lcom/dy/neu/activity/StartupActivity;->finish()V

    .line 20
    return-void
.end method
