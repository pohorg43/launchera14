.class public final enum Le8/v;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le8/v;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Le8/v;

.field public static final enum c:Le8/v;

.field public static final enum d:Le8/v;

.field public static final enum e:Le8/v;

.field public static final enum f:Le8/v;

.field public static final enum g:Le8/v;

.field public static final synthetic h:[Le8/v;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 14

    new-instance v0, Le8/v;

    const-string v1, "HTTP_1_0"

    const/4 v2, 0x0

    const-string v3, "http/1.0"

    invoke-direct {v0, v1, v2, v3}, Le8/v;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Le8/v;->b:Le8/v;

    new-instance v1, Le8/v;

    const-string v3, "HTTP_1_1"

    const/4 v4, 0x1

    const-string v5, "http/1.1"

    invoke-direct {v1, v3, v4, v5}, Le8/v;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Le8/v;->c:Le8/v;

    new-instance v3, Le8/v;

    const-string v5, "SPDY_3"

    const/4 v6, 0x2

    const-string v7, "spdy/3.1"

    invoke-direct {v3, v5, v6, v7}, Le8/v;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Le8/v;->d:Le8/v;

    new-instance v5, Le8/v;

    const-string v7, "HTTP_2"

    const/4 v8, 0x3

    const-string v9, "h2"

    invoke-direct {v5, v7, v8, v9}, Le8/v;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Le8/v;->e:Le8/v;

    new-instance v7, Le8/v;

    const-string v9, "H2_PRIOR_KNOWLEDGE"

    const/4 v10, 0x4

    const-string v11, "h2_prior_knowledge"

    invoke-direct {v7, v9, v10, v11}, Le8/v;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Le8/v;->f:Le8/v;

    new-instance v9, Le8/v;

    const-string v11, "QUIC"

    const/4 v12, 0x5

    const-string v13, "quic"

    invoke-direct {v9, v11, v12, v13}, Le8/v;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Le8/v;->g:Le8/v;

    const/4 v11, 0x6

    new-array v11, v11, [Le8/v;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Le8/v;->h:[Le8/v;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Le8/v;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Le8/v;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Le8/v;->b:Le8/v;

    const-string v1, "http/1.0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    :cond_b
    sget-object v0, Le8/v;->c:Le8/v;

    const-string v1, "http/1.1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    return-object v0

    :cond_16
    sget-object v0, Le8/v;->f:Le8/v;

    const-string v1, "h2_prior_knowledge"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    return-object v0

    :cond_21
    sget-object v0, Le8/v;->e:Le8/v;

    const-string v1, "h2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    return-object v0

    :cond_2c
    sget-object v0, Le8/v;->d:Le8/v;

    const-string v1, "spdy/3.1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    return-object v0

    :cond_37
    sget-object v0, Le8/v;->g:Le8/v;

    const-string v1, "quic"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    return-object v0

    :cond_42
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected protocol: "

    invoke-static {v1, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Le8/v;
    .registers 2

    const-class v0, Le8/v;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le8/v;

    return-object p0
.end method

.method public static values()[Le8/v;
    .registers 1

    sget-object v0, Le8/v;->h:[Le8/v;

    invoke-virtual {v0}, [Le8/v;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le8/v;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Le8/v;->a:Ljava/lang/String;

    return-object p0
.end method
