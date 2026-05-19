.class public final Lj7/e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj7/e;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final synthetic d:Lj7/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj7/e<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj7/e;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj7/e<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lj7/e$a;->d:Lj7/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lj7/e;->a:Lj7/h;

    invoke-interface {p1}, Lj7/h;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lj7/e$a;->a:Ljava/util/Iterator;

    const/4 p1, -0x1

    iput p1, p0, Lj7/e$a;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    :cond_0
    iget-object v0, p0, Lj7/e$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lj7/e$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lj7/e$a;->d:Lj7/e;

    iget-object v1, v1, Lj7/e;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lj7/e$a;->d:Lj7/e;

    iget-boolean v2, v2, Lj7/e;->b:Z

    if-ne v1, v2, :cond_0

    iput-object v0, p0, Lj7/e$a;->c:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lj7/e$a;->b:I

    return-void

    :cond_28
    const/4 v0, 0x0

    iput v0, p0, Lj7/e$a;->b:I

    return-void
.end method

.method public hasNext()Z
    .registers 3

    iget v0, p0, Lj7/e$a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lj7/e$a;->a()V

    :cond_8
    iget p0, p0, Lj7/e$a;->b:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget v0, p0, Lj7/e$a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lj7/e$a;->a()V

    :cond_8
    iget v0, p0, Lj7/e$a;->b:I

    if-eqz v0, :cond_14

    iget-object v0, p0, Lj7/e$a;->c:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, p0, Lj7/e$a;->c:Ljava/lang/Object;

    iput v1, p0, Lj7/e$a;->b:I

    return-object v0

    :cond_14
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
