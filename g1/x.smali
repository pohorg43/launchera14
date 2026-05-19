.class public Lg1/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg1/x$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/f<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lg1/m;

.field public final b:La1/b;


# direct methods
.method public constructor <init>(Lg1/m;La1/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg1/x;->a:Lg1/m;

    iput-object p2, p0, Lg1/x;->b:La1/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILw0/e;)Lz0/w;
    .registers 15
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Lw0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/io/InputStream;

    instance-of v0, p1, Lg1/w;

    if-eqz v0, :cond_a

    check-cast p1, Lg1/w;

    const/4 v0, 0x0

    goto :goto_15

    :cond_a
    new-instance v0, Lg1/w;

    iget-object v1, p0, Lg1/x;->b:La1/b;

    invoke-direct {v0, p1, v1}, Lg1/w;-><init>(Ljava/io/InputStream;La1/b;)V

    const/4 p1, 0x1

    move-object v9, v0

    move v0, p1

    move-object p1, v9

    :goto_15
    sget-object v1, Lcom/bumptech/glide/util/c;->c:Ljava/util/Queue;

    monitor-enter v1

    :try_start_18
    move-object v2, v1

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/util/c;

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_51

    if-nez v2, :cond_29

    new-instance v2, Lcom/bumptech/glide/util/c;

    invoke-direct {v2}, Lcom/bumptech/glide/util/c;-><init>()V

    :cond_29
    iput-object p1, v2, Lcom/bumptech/glide/util/c;->a:Ljava/io/InputStream;

    new-instance v4, Lcom/bumptech/glide/util/d;

    invoke-direct {v4, v2}, Lcom/bumptech/glide/util/d;-><init>(Ljava/io/InputStream;)V

    new-instance v8, Lg1/x$a;

    invoke-direct {v8, p1, v2}, Lg1/x$a;-><init>(Lg1/w;Lcom/bumptech/glide/util/c;)V

    :try_start_35
    iget-object v3, p0, Lg1/x;->a:Lg1/m;

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v3 .. v8}, Lg1/m;->b(Ljava/io/InputStream;IILw0/e;Lg1/m$b;)Lz0/w;

    move-result-object p0
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_47

    invoke-virtual {v2}, Lcom/bumptech/glide/util/c;->a()V

    if-eqz v0, :cond_46

    invoke-virtual {p1}, Lg1/w;->b()V

    :cond_46
    return-object p0

    :catchall_47
    move-exception p0

    invoke-virtual {v2}, Lcom/bumptech/glide/util/c;->a()V

    if-eqz v0, :cond_50

    invoke-virtual {p1}, Lg1/w;->b()V

    :cond_50
    throw p0

    :catchall_51
    move-exception p0

    :try_start_52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw p0
.end method

.method public b(Ljava/lang/Object;Lw0/e;)Z
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lw0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/io/InputStream;

    iget-object p0, p0, Lg1/x;->a:Lg1/m;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method
