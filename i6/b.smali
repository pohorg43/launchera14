.class public abstract Li6/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li6/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Li6/p;",
        ">",
        "Ljava/lang/Object;",
        "Li6/r<",
        "TMessageType;>;"
    }
.end annotation


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Li6/f;->b:Li6/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Li6/p;)Li6/p;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li6/j;
        }
    .end annotation

    if-eqz p1, :cond_26

    invoke-interface {p1}, Li6/q;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_26

    instance-of p0, p1, Li6/a;

    if-eqz p0, :cond_15

    move-object p0, p1

    check-cast p0, Li6/a;

    new-instance p0, Li6/v;

    invoke-direct {p0}, Li6/v;-><init>()V

    goto :goto_1a

    :cond_15
    new-instance p0, Li6/v;

    invoke-direct {p0}, Li6/v;-><init>()V

    :goto_1a
    new-instance v0, Li6/j;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Li6/j;-><init>(Ljava/lang/String;)V

    iput-object p1, v0, Li6/j;->a:Li6/p;

    throw v0

    :cond_26
    return-object p1
.end method

.method public c(Ljava/io/InputStream;Li6/f;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li6/j;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 p1, 0x0

    goto :goto_43

    :cond_9
    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_e

    goto :goto_3a

    :cond_e
    and-int/lit8 v0, v0, 0x7f

    const/4 v2, 0x7

    :goto_11
    const/16 v3, 0x20

    if-ge v2, v3, :cond_2c

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    if-eq v3, v1, :cond_27

    and-int/lit8 v4, v3, 0x7f

    shl-int/2addr v4, v2

    or-int/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_24

    goto :goto_3a

    :cond_24
    add-int/lit8 v2, v2, 0x7

    goto :goto_11

    :cond_27
    invoke-static {}, Li6/j;->d()Li6/j;

    move-result-object p0

    throw p0

    :cond_2c
    :goto_2c
    const/16 v3, 0x40

    if-ge v2, v3, :cond_4f

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_34} :catch_57

    if-eq v3, v1, :cond_4a

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_47

    :goto_3a
    new-instance v1, Li6/a$a$a;

    invoke-direct {v1, p1, v0}, Li6/a$a$a;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {p0, v1, p2}, Li6/b;->d(Ljava/io/InputStream;Li6/f;)Li6/p;

    move-result-object p1

    :goto_43
    invoke-virtual {p0, p1}, Li6/b;->b(Li6/p;)Li6/p;

    return-object p1

    :cond_47
    add-int/lit8 v2, v2, 0x7

    goto :goto_2c

    :cond_4a
    :try_start_4a
    invoke-static {}, Li6/j;->d()Li6/j;

    move-result-object p0

    throw p0

    :cond_4f
    new-instance p0, Li6/j;

    const-string p1, "CodedInputStream encountered a malformed varint."

    invoke-direct {p0, p1}, Li6/j;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_57} :catch_57

    :catch_57
    move-exception p0

    new-instance p1, Li6/j;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Li6/j;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Ljava/io/InputStream;Li6/f;)Li6/p;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Li6/f;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li6/j;
        }
    .end annotation

    new-instance v0, Li6/d;

    invoke-direct {v0, p1}, Li6/d;-><init>(Ljava/io/InputStream;)V

    invoke-interface {p0, v0, p2}, Li6/r;->a(Li6/d;Li6/f;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li6/p;

    const/4 p1, 0x0

    :try_start_c
    invoke-virtual {v0, p1}, Li6/d;->a(I)V
    :try_end_f
    .catch Li6/j; {:try_start_c .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    move-exception p1

    iput-object p0, p1, Li6/j;->a:Li6/p;

    throw p1
.end method
