.class public Lcom/dy/neu/util/MD5;
.super Ljava/lang/Object;
.source "MD5.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dy/neu/common/MD5Exception;
        }
    .end annotation

    .prologue
    .line 17
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 18
    .local v7, "md5":Ljava/security/MessageDigest;
    const-string v8, "UTF-8"

    invoke-virtual {p0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 24
    .local v6, "m":[B
    new-instance v3, Ljava/lang/StringBuilder;

    array-length v8, v6

    mul-int/lit8 v8, v8, 0x2

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 25
    .local v3, "hex":Ljava/lang/StringBuilder;
    move-object v0, v6

    .local v0, "arr$":[B
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-byte v1, v0, v4

    .line 26
    .local v1, "b":B
    and-int/lit16 v8, v1, 0xff

    const/16 v9, 0x10

    if-ge v8, v9, :cond_0

    .line 27
    const-string v8, "0"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    :cond_0
    and-int/lit16 v8, v1, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 19
    .end local v0    # "arr$":[B
    .end local v1    # "b":B
    .end local v3    # "hex":Ljava/lang/StringBuilder;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "m":[B
    .end local v7    # "md5":Ljava/security/MessageDigest;
    :catch_0
    move-exception v2

    .line 20
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v8, Lcom/dy/neu/common/MD5Exception;

    invoke-direct {v8}, Lcom/dy/neu/common/MD5Exception;-><init>()V

    throw v8

    .line 21
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v2

    .line 22
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v8, Lcom/dy/neu/common/MD5Exception;

    invoke-direct {v8}, Lcom/dy/neu/common/MD5Exception;-><init>()V

    throw v8

    .line 31
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "arr$":[B
    .restart local v3    # "hex":Ljava/lang/StringBuilder;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "m":[B
    .restart local v7    # "md5":Ljava/security/MessageDigest;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method
