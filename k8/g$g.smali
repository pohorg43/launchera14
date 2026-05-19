.class public Lk8/g$g;
.super Lf8/b;
.source ""

# interfaces
.implements Lk8/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk8/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public final b:Lk8/p;

.field public final synthetic c:Lk8/g;


# direct methods
.method public constructor <init>(Lk8/g;Lk8/p;)V
    .registers 5

    iput-object p1, p0, Lk8/g$g;->c:Lk8/g;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p1, p1, Lk8/g;->d:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Lf8/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, Lk8/g$g;->b:Lk8/p;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    sget-object v0, Lk8/b;->d:Lk8/b;

    :try_start_2
    iget-object v1, p0, Lk8/g$g;->b:Lk8/p;

    invoke-virtual {v1, p0}, Lk8/p;->c(Lk8/p$b;)V

    :goto_7
    iget-object v1, p0, Lk8/g$g;->b:Lk8/p;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Lk8/p;->b(ZLk8/p$b;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_7

    :cond_11
    sget-object v1, Lk8/b;->b:Lk8/b;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_1e
    .catchall {:try_start_2 .. :try_end_13} :catchall_1b

    :try_start_13
    sget-object v0, Lk8/b;->g:Lk8/b;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_15} :catch_1f
    .catchall {:try_start_13 .. :try_end_15} :catchall_2c

    :try_start_15
    iget-object v2, p0, Lk8/g$g;->c:Lk8/g;

    invoke-virtual {v2, v1, v0}, Lk8/g;->b(Lk8/b;Lk8/b;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_26

    goto :goto_26

    :catchall_1b
    move-exception v2

    move-object v1, v0

    goto :goto_2d

    :catch_1e
    move-object v1, v0

    :catch_1f
    :try_start_1f
    sget-object v0, Lk8/b;->c:Lk8/b;
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_2c

    :try_start_21
    iget-object v1, p0, Lk8/g$g;->c:Lk8/g;

    invoke-virtual {v1, v0, v0}, Lk8/g;->b(Lk8/b;Lk8/b;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_26} :catch_26

    :catch_26
    :goto_26
    iget-object p0, p0, Lk8/g$g;->b:Lk8/p;

    invoke-static {p0}, Lf8/c;->e(Ljava/io/Closeable;)V

    return-void

    :catchall_2c
    move-exception v2

    :goto_2d
    :try_start_2d
    iget-object v3, p0, Lk8/g$g;->c:Lk8/g;

    invoke-virtual {v3, v1, v0}, Lk8/g;->b(Lk8/b;Lk8/b;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_32} :catch_32

    :catch_32
    iget-object p0, p0, Lk8/g$g;->b:Lk8/p;

    invoke-static {p0}, Lf8/c;->e(Ljava/io/Closeable;)V

    throw v2
.end method
