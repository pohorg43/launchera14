.class public final Lj7/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj7/f;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;",
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

.field public b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lj7/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj7/f<",
            "TT;TR;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj7/f;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj7/f<",
            "TT;TR;TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lj7/f$a;->c:Lj7/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lj7/f;->a:Lj7/h;

    invoke-interface {p1}, Lj7/h;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lj7/f$a;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 6

    iget-object v0, p0, Lj7/f$a;->b:Ljava/util/Iterator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    if-eqz v0, :cond_14

    const/4 v0, 0x0

    iput-object v0, p0, Lj7/f$a;->b:Ljava/util/Iterator;

    :cond_14
    iget-object v0, p0, Lj7/f$a;->b:Ljava/util/Iterator;

    if-nez v0, :cond_3f

    iget-object v0, p0, Lj7/f$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_21

    return v2

    :cond_21
    iget-object v0, p0, Lj7/f$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lj7/f$a;->c:Lj7/f;

    iget-object v4, v3, Lj7/f;->c:Lkotlin/jvm/functions/Function1;

    iget-object v3, v3, Lj7/f;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {v3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    iput-object v0, p0, Lj7/f$a;->b:Ljava/util/Iterator;

    :cond_3f
    return v1
.end method

.method public hasNext()Z
    .registers 1

    invoke-virtual {p0}, Lj7/f$a;->a()Z

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lj7/f$a;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lj7/f$a;->b:Ljava/util/Iterator;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_10
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
