.class public final Lk7/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk7/c;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ly4/d;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Ly4/d;

.field public e:I

.field public final synthetic f:Lk7/c;


# direct methods
.method public constructor <init>(Lk7/c;)V
    .registers 5

    iput-object p1, p0, Lk7/c$a;->f:Lk7/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lk7/c$a;->a:I

    iget v0, p1, Lk7/c;->b:I

    iget-object p1, p1, Lk7/c;->a:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v1, 0x0

    if-ltz p1, :cond_1f

    if-gez v0, :cond_17

    move v0, v1

    goto :goto_1a

    :cond_17
    if-le v0, p1, :cond_1a

    move v0, p1

    :cond_1a
    :goto_1a
    iput v0, p0, Lk7/c$a;->b:I

    iput v0, p0, Lk7/c$a;->c:I

    return-void

    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot coerce value to an empty range: maximum "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is less than minimum "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()V
    .registers 8

    iget v0, p0, Lk7/c$a;->c:I

    const/4 v1, 0x0

    if-gez v0, :cond_c

    iput v1, p0, Lk7/c$a;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lk7/c$a;->d:Ly4/d;

    goto/16 :goto_82

    :cond_c
    iget-object v2, p0, Lk7/c$a;->f:Lk7/c;

    iget v3, v2, Lk7/c;->c:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-lez v3, :cond_1b

    iget v6, p0, Lk7/c$a;->e:I

    add-int/2addr v6, v5

    iput v6, p0, Lk7/c$a;->e:I

    if-ge v6, v3, :cond_23

    :cond_1b
    iget-object v2, v2, Lk7/c;->a:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v0, v2, :cond_37

    :cond_23
    new-instance v0, Ly4/d;

    iget v1, p0, Lk7/c$a;->b:I

    iget-object v2, p0, Lk7/c$a;->f:Lk7/c;

    iget-object v2, v2, Lk7/c;->a:Ljava/lang/CharSequence;

    invoke-static {v2}, Lk7/q;->x(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Ly4/d;-><init>(II)V

    iput-object v0, p0, Lk7/c$a;->d:Ly4/d;

    iput v4, p0, Lk7/c$a;->c:I

    goto :goto_80

    :cond_37
    iget-object v0, p0, Lk7/c$a;->f:Lk7/c;

    iget-object v2, v0, Lk7/c;->d:Lkotlin/jvm/functions/Function2;

    iget-object v0, v0, Lk7/c;->a:Ljava/lang/CharSequence;

    iget v3, p0, Lk7/c$a;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/j;

    if-nez v0, :cond_5f

    new-instance v0, Ly4/d;

    iget v1, p0, Lk7/c$a;->b:I

    iget-object v2, p0, Lk7/c$a;->f:Lk7/c;

    iget-object v2, v2, Lk7/c;->a:Ljava/lang/CharSequence;

    invoke-static {v2}, Lk7/q;->x(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Ly4/d;-><init>(II)V

    iput-object v0, p0, Lk7/c$a;->d:Ly4/d;

    iput v4, p0, Lk7/c$a;->c:I

    goto :goto_80

    :cond_5f
    iget-object v2, v0, Lh4/j;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object v0, v0, Lh4/j;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v3, p0, Lk7/c$a;->b:I

    invoke-static {v3, v2}, Ly4/h;->e(II)Ly4/d;

    move-result-object v3

    iput-object v3, p0, Lk7/c$a;->d:Ly4/d;

    add-int/2addr v2, v0

    iput v2, p0, Lk7/c$a;->b:I

    if-nez v0, :cond_7d

    move v1, v5

    :cond_7d
    add-int/2addr v2, v1

    iput v2, p0, Lk7/c$a;->c:I

    :goto_80
    iput v5, p0, Lk7/c$a;->a:I

    :goto_82
    return-void
.end method

.method public hasNext()Z
    .registers 3

    iget v0, p0, Lk7/c$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lk7/c$a;->a()V

    :cond_8
    iget p0, p0, Lk7/c$a;->a:I

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

    iget v0, p0, Lk7/c$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lk7/c$a;->a()V

    :cond_8
    iget v0, p0, Lk7/c$a;->a:I

    if-eqz v0, :cond_19

    iget-object v0, p0, Lk7/c$a;->d:Ly4/d;

    const-string v2, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lk7/c$a;->d:Ly4/d;

    iput v1, p0, Lk7/c$a;->a:I

    return-object v0

    :cond_19
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
