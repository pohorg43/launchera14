.class public abstract Li4/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation


# instance fields
.field public a:Li4/s0;

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Li4/s0;->b:Li4/s0;

    iput-object v0, p0, Li4/b;->a:Li4/s0;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final b(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Li4/b;->b:Ljava/lang/Object;

    sget-object p1, Li4/s0;->a:Li4/s0;

    iput-object p1, p0, Li4/b;->a:Li4/s0;

    return-void
.end method

.method public hasNext()Z
    .registers 6

    iget-object v0, p0, Li4/b;->a:Li4/s0;

    sget-object v1, Li4/s0;->d:Li4/s0;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_a

    move v4, v2

    goto :goto_b

    :cond_a
    move v4, v3

    :goto_b
    if-eqz v4, :cond_24

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_23

    const/4 v4, 0x2

    if-eq v0, v4, :cond_22

    iput-object v1, p0, Li4/b;->a:Li4/s0;

    invoke-virtual {p0}, Li4/b;->a()V

    iget-object p0, p0, Li4/b;->a:Li4/s0;

    sget-object v0, Li4/s0;->a:Li4/s0;

    if-ne p0, v0, :cond_22

    goto :goto_23

    :cond_22
    move v2, v3

    :cond_23
    :goto_23
    return v2

    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Li4/b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Li4/s0;->b:Li4/s0;

    iput-object v0, p0, Li4/b;->a:Li4/s0;

    iget-object p0, p0, Li4/b;->b:Ljava/lang/Object;

    return-object p0

    :cond_d
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public remove()V
    .registers 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
