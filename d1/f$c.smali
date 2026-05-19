.class public final Ld1/f$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lx0/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld1/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lx0/d<",
        "TData;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Ld1/f$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld1/f$d<",
            "TData;>;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TData;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;Ld1/f$d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ld1/f$d<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld1/f$c;->a:Ljava/io/File;

    iput-object p2, p0, Ld1/f$c;->b:Ld1/f$d;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    iget-object p0, p0, Ld1/f$c;->b:Ld1/f$d;

    invoke-interface {p0}, Ld1/f$d;->a()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Ld1/f$c;->c:Ljava/lang/Object;

    if-eqz v0, :cond_9

    :try_start_4
    iget-object p0, p0, Ld1/f$c;->b:Ld1/f$d;

    invoke-interface {p0, v0}, Ld1/f$d;->c(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_9

    :catch_9
    :cond_9
    return-void
.end method

.method public c(Lcom/bumptech/glide/e;Lx0/d$a;)V
    .registers 4
    .param p1  # Lcom/bumptech/glide/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lx0/d$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e;",
            "Lx0/d$a<",
            "-TData;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Ld1/f$c;->b:Ld1/f$d;

    iget-object v0, p0, Ld1/f$c;->a:Ljava/io/File;

    invoke-interface {p1, v0}, Ld1/f$d;->b(Ljava/io/File;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ld1/f$c;->c:Ljava/lang/Object;
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_a} :catch_e

    invoke-interface {p2, p1}, Lx0/d$a;->f(Ljava/lang/Object;)V

    return-void

    :catch_e
    move-exception p0

    const/4 p1, 0x3

    const-string v0, "FileLoader"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1d

    const-string p1, "Failed to open file"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d
    invoke-interface {p2, p0}, Lx0/d$a;->d(Ljava/lang/Exception;)V

    return-void
.end method

.method public cancel()V
    .registers 1

    return-void
.end method

.method public e()Lcom/bumptech/glide/load/a;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p0, Lcom/bumptech/glide/load/a;->a:Lcom/bumptech/glide/load/a;

    return-object p0
.end method
