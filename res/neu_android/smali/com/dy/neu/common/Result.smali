.class public Lcom/dy/neu/common/Result;
.super Ljava/lang/Object;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final SUCCESS:I


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private errCode:Ljava/lang/String;

.field private errMsg:Ljava/lang/String;

.field private success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    .local p0, "this":Lcom/dy/neu/common/Result;, "Lcom/dy/neu/common/Result<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/dy/neu/common/Result;, "Lcom/dy/neu/common/Result<TT;>;"
    iget-object v0, p0, Lcom/dy/neu/common/Result;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getErrCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    .local p0, "this":Lcom/dy/neu/common/Result;, "Lcom/dy/neu/common/Result<TT;>;"
    iget-object v0, p0, Lcom/dy/neu/common/Result;->errCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lcom/dy/neu/common/Result;, "Lcom/dy/neu/common/Result<TT;>;"
    iget-object v0, p0, Lcom/dy/neu/common/Result;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 14
    .local p0, "this":Lcom/dy/neu/common/Result;, "Lcom/dy/neu/common/Result<TT;>;"
    iget-boolean v0, p0, Lcom/dy/neu/common/Result;->success:Z

    return v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/dy/neu/common/Result;, "Lcom/dy/neu/common/Result<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/dy/neu/common/Result;->data:Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public setErrCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "errCode"    # Ljava/lang/String;

    .prologue
    .line 26
    .local p0, "this":Lcom/dy/neu/common/Result;, "Lcom/dy/neu/common/Result<TT;>;"
    iput-object p1, p0, Lcom/dy/neu/common/Result;->errCode:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setErrMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 34
    .local p0, "this":Lcom/dy/neu/common/Result;, "Lcom/dy/neu/common/Result<TT;>;"
    iput-object p1, p0, Lcom/dy/neu/common/Result;->errMsg:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 18
    .local p0, "this":Lcom/dy/neu/common/Result;, "Lcom/dy/neu/common/Result<TT;>;"
    iput-boolean p1, p0, Lcom/dy/neu/common/Result;->success:Z

    .line 19
    return-void
.end method
