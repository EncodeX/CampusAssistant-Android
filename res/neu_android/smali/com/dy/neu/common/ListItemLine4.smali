.class public Lcom/dy/neu/common/ListItemLine4;
.super Lcom/dy/neu/common/ListItemLine3;
.source "ListItemLine4.java"


# instance fields
.field line4:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/dy/neu/common/ListItemLine3;-><init>()V

    return-void
.end method


# virtual methods
.method public getLine4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/dy/neu/common/ListItemLine4;->line4:Ljava/lang/String;

    return-object v0
.end method

.method public setLine4(Ljava/lang/String;)V
    .locals 0
    .param p1, "line4"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/dy/neu/common/ListItemLine4;->line4:Ljava/lang/String;

    .line 15
    return-void
.end method
