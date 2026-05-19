.class public final enum Le8/d0;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le8/d0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Le8/d0;

.field public static final enum c:Le8/d0;

.field public static final enum d:Le8/d0;

.field public static final enum e:Le8/d0;

.field public static final enum f:Le8/d0;

.field public static final synthetic g:[Le8/d0;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 12

    new-instance v0, Le8/d0;

    const-string v1, "TLS_1_3"

    const/4 v2, 0x0

    const-string v3, "TLSv1.3"

    invoke-direct {v0, v1, v2, v3}, Le8/d0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Le8/d0;->b:Le8/d0;

    new-instance v1, Le8/d0;

    const-string v3, "TLS_1_2"

    const/4 v4, 0x1

    const-string v5, "TLSv1.2"

    invoke-direct {v1, v3, v4, v5}, Le8/d0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Le8/d0;->c:Le8/d0;

    new-instance v3, Le8/d0;

    const-string v5, "TLS_1_1"

    const/4 v6, 0x2

    const-string v7, "TLSv1.1"

    invoke-direct {v3, v5, v6, v7}, Le8/d0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Le8/d0;->d:Le8/d0;

    new-instance v5, Le8/d0;

    const-string v7, "TLS_1_0"

    const/4 v8, 0x3

    const-string v9, "TLSv1"

    invoke-direct {v5, v7, v8, v9}, Le8/d0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Le8/d0;->e:Le8/d0;

    new-instance v7, Le8/d0;

    const-string v9, "SSL_3_0"

    const/4 v10, 0x4

    const-string v11, "SSLv3"

    invoke-direct {v7, v9, v10, v11}, Le8/d0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Le8/d0;->f:Le8/d0;

    const/4 v9, 0x5

    new-array v9, v9, [Le8/d0;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Le8/d0;->g:[Le8/d0;

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

    iput-object p3, p0, Le8/d0;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Le8/d0;
    .registers 3

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_64

    goto :goto_45

    :sswitch_f
    const-string v1, "TLSv1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_45

    :cond_18
    const/4 v0, 0x4

    goto :goto_45

    :sswitch_1a
    const-string v1, "SSLv3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    goto :goto_45

    :cond_23
    const/4 v0, 0x3

    goto :goto_45

    :sswitch_25
    const-string v1, "TLSv1.3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    goto :goto_45

    :cond_2e
    const/4 v0, 0x2

    goto :goto_45

    :sswitch_30
    const-string v1, "TLSv1.2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    goto :goto_45

    :cond_39
    const/4 v0, 0x1

    goto :goto_45

    :sswitch_3b
    const-string v1, "TLSv1.1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    goto :goto_45

    :cond_44
    const/4 v0, 0x0

    :goto_45
    packed-switch v0, :pswitch_data_7a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected TLS version: "

    invoke-static {v1, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_54  #0x4
    sget-object p0, Le8/d0;->e:Le8/d0;

    return-object p0

    :pswitch_57  #0x3
    sget-object p0, Le8/d0;->f:Le8/d0;

    return-object p0

    :pswitch_5a  #0x2
    sget-object p0, Le8/d0;->b:Le8/d0;

    return-object p0

    :pswitch_5d  #0x1
    sget-object p0, Le8/d0;->c:Le8/d0;

    return-object p0

    :pswitch_60  #0x0
    sget-object p0, Le8/d0;->d:Le8/d0;

    return-object p0

    nop

    :sswitch_data_64
    .sparse-switch
        -0x1dfc3f27 -> :sswitch_3b
        -0x1dfc3f26 -> :sswitch_30
        -0x1dfc3f25 -> :sswitch_25
        0x4b88569 -> :sswitch_1a
        0x4c38896 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_60  #00000000
        :pswitch_5d  #00000001
        :pswitch_5a  #00000002
        :pswitch_57  #00000003
        :pswitch_54  #00000004
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Le8/d0;
    .registers 2

    const-class v0, Le8/d0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le8/d0;

    return-object p0
.end method

.method public static values()[Le8/d0;
    .registers 1

    sget-object v0, Le8/d0;->g:[Le8/d0;

    invoke-virtual {v0}, [Le8/d0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le8/d0;

    return-object v0
.end method
