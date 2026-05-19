.class public Lcom/oplus/log/desc/common/LogParser;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "AES"

.field private static final ALGORITHM_TYPE:Ljava/lang/String; = "AES/CBC/NoPadding"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const-string v1, "AES"

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_b
    invoke-static {p4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    new-instance p4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-direct {p4, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p3, 0x2

    invoke-virtual {p2, p3, v0, p4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1c} :catch_e9

    new-instance p4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_25
    :try_start_25
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_33

    invoke-virtual {p4, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->flush()V

    goto :goto_25

    :cond_33
    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    move p4, v2

    :goto_3b
    array-length v1, p0

    if-ge p4, v1, :cond_e8

    aget-byte v1, p0, p4

    const/4 v3, 0x1

    if-ne v1, v3, :cond_ce

    add-int/lit8 p4, p4, 0x1

    aget-byte v1, p0, p4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v4, p4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v1, v4

    add-int/lit8 v4, p4, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v1, v4

    add-int/lit8 p4, p4, 0x3

    aget-byte v4, p0, p4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v1, v4

    if-lez v1, :cond_ce

    add-int v4, p4, v1

    add-int/lit8 v5, v4, 0x1

    array-length v6, p0

    sub-int/2addr v6, p4

    sub-int/2addr v6, v3

    if-ne v6, v1, :cond_71

    move v6, v2

    goto :goto_86

    :cond_71
    array-length v6, p0

    sub-int/2addr v6, p4

    sub-int/2addr v6, v3

    if-le v6, v1, :cond_7c

    aget-byte v6, p0, v5

    if-nez v6, :cond_7c

    move v6, v3

    goto :goto_86

    :cond_7c
    array-length v6, p0

    sub-int/2addr v6, p4

    sub-int/2addr v6, v3

    if-le v6, v1, :cond_cc

    aget-byte v6, p0, v5

    if-ne v3, v6, :cond_cc

    move v6, p3

    :goto_86
    new-array v7, v1, [B

    add-int/lit8 p4, p4, 0x1

    invoke-static {p0, p4, v7, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_92} :catch_d1

    const/4 v1, 0x0

    :try_start_93
    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->reset()V

    new-instance v8, Ljava/util/zip/GZIPInputStream;

    new-instance v9, Ljavax/crypto/CipherInputStream;

    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v9, v10, p2}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v8, v9}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_a5} :catch_b1

    :goto_a5
    :try_start_a5
    invoke-virtual {v8, v0}, Ljava/util/zip/InflaterInputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_b7

    invoke-virtual {p4, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_ae} :catch_af

    goto :goto_a5

    :catch_af
    move-exception v1

    goto :goto_b4

    :catch_b1
    move-exception v7

    move-object v8, v1

    move-object v1, v7

    :goto_b4
    :try_start_b4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b7
    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->reset()V

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    if-eqz v8, :cond_c6

    invoke-virtual {v8}, Ljava/util/zip/InflaterInputStream;->close()V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_c6} :catch_d1

    :cond_c6
    if-ne v6, v3, :cond_ca

    move p4, v5

    goto :goto_ce

    :cond_ca
    move p4, v4

    goto :goto_ce

    :cond_cc
    add-int/lit8 p4, p4, -0x4

    :cond_ce
    :goto_ce
    add-int/2addr p4, v3

    goto/16 :goto_3b

    :catch_d1
    move-exception p0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "流处理出错"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_e8
    return-void

    :catch_e9
    move-exception p0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "init Cipher error "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
