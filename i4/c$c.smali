.class public Li4/c$c;
.super Li4/c$b;
.source ""

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li4/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li4/c<",
        "TE;>.b;",
        "Ljava/util/ListIterator<",
        "TE;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation


# instance fields
.field public final synthetic c:Li4/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li4/c<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li4/c;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iput-object p1, p0, Li4/c$c;->c:Li4/c;

    invoke-direct {p0, p1}, Li4/c$b;-><init>(Li4/c;)V

    sget-object v0, Li4/c;->Companion:Li4/c$a;

    invoke-virtual {p1}, Li4/a;->size()I

    move-result p1

    invoke-virtual {v0, p2, p1}, Li4/c$a;->b(II)V

    iput p2, p0, Li4/c$b;->a:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasPrevious()Z
    .registers 1

    iget p0, p0, Li4/c$b;->a:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public nextIndex()I
    .registers 1

    iget p0, p0, Li4/c$b;->a:I

    return p0
.end method

.method public previous()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Li4/c$c;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Li4/c$c;->c:Li4/c;

    iget v1, p0, Li4/c$b;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Li4/c$b;->a:I

    invoke-virtual {v0, v1}, Li4/c;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_13
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public previousIndex()I
    .registers 1

    iget p0, p0, Li4/c$b;->a:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
