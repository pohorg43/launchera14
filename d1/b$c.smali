.class public Ld1/b$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lx0/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
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
.field public final a:[B

.field public final b:Ld1/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld1/b$b<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([BLd1/b$b;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ld1/b$b<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld1/b$c;->a:[B

    iput-object p2, p0, Ld1/b$c;->b:Ld1/b$b;

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

    iget-object p0, p0, Ld1/b$c;->b:Ld1/b$b;

    invoke-interface {p0}, Ld1/b$b;->a()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public c(Lcom/bumptech/glide/e;Lx0/d$a;)V
    .registers 3
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

    iget-object p1, p0, Ld1/b$c;->b:Ld1/b$b;

    iget-object p0, p0, Ld1/b$c;->a:[B

    invoke-interface {p1, p0}, Ld1/b$b;->b([B)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lx0/d$a;->f(Ljava/lang/Object;)V

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
