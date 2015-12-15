.class public Lcom/dy/neu/common/ListItemLine5;
.super Lcom/dy/neu/common/ListItemLine4;
.source "ListItemLine5.java"


# instance fields
.field line5:Ljava/lang/String;

.field line5Visibility:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/dy/neu/common/ListItemLine4;-><init>()V

    return-void
.end method


# virtual methods
.method public getLine5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/dy/neu/common/ListItemLine5;->line5:Ljava/lang/String;

    return-object v0
.end method

.method public getLine5Visibility()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/dy/neu/common/ListItemLine5;->line5Visibility:I

    return v0
.end method

.method public setLine5(Ljava/lang/String;)V
    .locals 0
    .param p1, "line5"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/dy/neu/common/ListItemLine5;->line5:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public setLine5Visibility(I)V
    .locals 0
    .param p1, "line5Visibility"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/dy/neu/common/ListItemLine5;->line5Visibility:I

    .line 23
    return-void
.end method
