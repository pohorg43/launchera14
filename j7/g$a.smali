.class public final Lj7/g$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj7/g;->iterator()Ljava/util/Iterator;
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
.field public a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public b:I

.field public final synthetic c:Lj7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj7/g<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj7/g;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj7/g<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lj7/g$a;->c:Lj7/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x2

    iput p1, p0, Lj7/g$a;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget v0, p0, Lj7/g$a;->b:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lj7/g$a;->c:Lj7/g;

    iget-object v0, v0, Lj7/g;->a:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1b

    :cond_e
    iget-object v0, p0, Lj7/g$a;->c:Lj7/g;

    iget-object v0, v0, Lj7/g;->b:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lj7/g$a;->a:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1b
    iput-object v0, p0, Lj7/g$a;->a:Ljava/lang/Object;

    if-nez v0, :cond_21

    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    const/4 v0, 0x1

    :goto_22
    iput v0, p0, Lj7/g$a;->b:I

    return-void
.end method

.method public hasNext()Z
    .registers 2

    iget v0, p0, Lj7/g$a;->b:I

    if-gez v0, :cond_7

    invoke-virtual {p0}, Lj7/g$a;->a()V

    :cond_7
    iget p0, p0, Lj7/g$a;->b:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget v0, p0, Lj7/g$a;->b:I

    if-gez v0, :cond_7

    invoke-virtual {p0}, Lj7/g$a;->a()V

    :cond_7
    iget v0, p0, Lj7/g$a;->b:I

    if-eqz v0, :cond_16

    iget-object v0, p0, Lj7/g$a;->a:Ljava/lang/Object;

    const-string v1, "null cannot be cast to non-null type T of kotlin.sequences.GeneratorSequence"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, -0x1

    iput v1, p0, Lj7/g$a;->b:I

    return-object v0

    :cond_16
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
