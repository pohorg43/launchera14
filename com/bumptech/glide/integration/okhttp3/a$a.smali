.class public Lcom/bumptech/glide/integration/okhttp3/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld1/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/integration/okhttp3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld1/o<",
        "Ld1/g;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static volatile b:Le8/d$a;


# instance fields
.field public final a:Le8/d$a;


# direct methods
.method public constructor <init>()V
    .registers 4

    sget-object v0, Lcom/bumptech/glide/integration/okhttp3/a$a;->b:Le8/d$a;

    if-nez v0, :cond_1c

    const-class v0, Lcom/bumptech/glide/integration/okhttp3/a$a;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/bumptech/glide/integration/okhttp3/a$a;->b:Le8/d$a;

    if-nez v1, :cond_17

    new-instance v1, Le8/u;

    new-instance v2, Le8/u$b;

    invoke-direct {v2}, Le8/u$b;-><init>()V

    invoke-direct {v1, v2}, Le8/u;-><init>(Le8/u$b;)V

    sput-object v1, Lcom/bumptech/glide/integration/okhttp3/a$a;->b:Le8/d$a;

    :cond_17
    monitor-exit v0

    goto :goto_1c

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw p0

    :cond_1c
    :goto_1c
    sget-object v0, Lcom/bumptech/glide/integration/okhttp3/a$a;->b:Le8/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/integration/okhttp3/a$a;->a:Le8/d$a;

    return-void
.end method


# virtual methods
.method public build(Ld1/r;)Ld1/n;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld1/r;",
            ")",
            "Ld1/n<",
            "Ld1/g;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/bumptech/glide/integration/okhttp3/a;

    iget-object p0, p0, Lcom/bumptech/glide/integration/okhttp3/a$a;->a:Le8/d$a;

    invoke-direct {p1, p0}, Lcom/bumptech/glide/integration/okhttp3/a;-><init>(Le8/d$a;)V

    return-object p1
.end method

.method public teardown()V
    .registers 1

    return-void
.end method
