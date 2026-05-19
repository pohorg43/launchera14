.class public abstract Lv3/c0$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv3/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Lv3/c0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/c0$f<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public b:Lv3/c0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/c0$f<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public c:I

.field public final synthetic d:Lv3/c0;


# direct methods
.method public constructor <init>(Lv3/c0;)V
    .registers 3

    iput-object p1, p0, Lv3/c0$e;->d:Lv3/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lv3/c0;->c:Lv3/c0$f;

    iget-object v0, v0, Lv3/c0$f;->d:Lv3/c0$f;

    iput-object v0, p0, Lv3/c0$e;->a:Lv3/c0$f;

    const/4 v0, 0x0

    iput-object v0, p0, Lv3/c0$e;->b:Lv3/c0$f;

    iget p1, p1, Lv3/c0;->e:I

    iput p1, p0, Lv3/c0$e;->c:I

    return-void
.end method


# virtual methods
.method public final a()Lv3/c0$f;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv3/c0$f<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lv3/c0$e;->a:Lv3/c0$f;

    iget-object v1, p0, Lv3/c0$e;->d:Lv3/c0;

    iget-object v2, v1, Lv3/c0;->c:Lv3/c0$f;

    if-eq v0, v2, :cond_1b

    iget v1, v1, Lv3/c0;->e:I

    iget v2, p0, Lv3/c0$e;->c:I

    if-ne v1, v2, :cond_15

    iget-object v1, v0, Lv3/c0$f;->d:Lv3/c0$f;

    iput-object v1, p0, Lv3/c0$e;->a:Lv3/c0$f;

    iput-object v0, p0, Lv3/c0$e;->b:Lv3/c0$f;

    return-object v0

    :cond_15
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :cond_1b
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final hasNext()Z
    .registers 2

    iget-object v0, p0, Lv3/c0$e;->a:Lv3/c0$f;

    iget-object p0, p0, Lv3/c0$e;->d:Lv3/c0;

    iget-object p0, p0, Lv3/c0;->c:Lv3/c0$f;

    if-eq v0, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final remove()V
    .registers 4

    iget-object v0, p0, Lv3/c0$e;->b:Lv3/c0$f;

    if-eqz v0, :cond_14

    iget-object v1, p0, Lv3/c0$e;->d:Lv3/c0;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lv3/c0;->f(Lv3/c0$f;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lv3/c0$e;->b:Lv3/c0$f;

    iget-object v0, p0, Lv3/c0$e;->d:Lv3/c0;

    iget v0, v0, Lv3/c0;->e:I

    iput v0, p0, Lv3/c0$e;->c:I

    return-void

    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
