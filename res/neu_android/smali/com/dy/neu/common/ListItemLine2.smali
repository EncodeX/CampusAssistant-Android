.class public Lcom/dy/neu/common/ListItemLine2;
.super Lcom/dy/neu/common/ListItemLine1;
.source "ListItemLine2.java"


# instance fields
.field private line2:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/dy/neu/common/ListItemLine1;-><init>()V

    return-void
.end method


# virtual methods
.method public getLine2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/dy/neu/common/ListItemLine2;->line2:Ljava/lang/String;

    return-object v0
.end method

.method public setLine2(Ljava/lang/String;)V
    .locals 0
    .param p1, "line2"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/dy/neu/common/ListItemLine2;->line2:Ljava/lang/String;

    .line 17
    return-void
.end method
