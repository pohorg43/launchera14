.class public Li/d;
.super Li/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li/f<",
        "Lm/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final i:Lm/c;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls/a<",
            "Lm/c;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Li/f;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls/a;

    iget-object p1, p1, Ls/a;->b:Ljava/lang/Object;

    check-cast p1, Lm/c;

    if-nez p1, :cond_11

    goto :goto_14

    :cond_11
    iget-object p1, p1, Lm/c;->b:[I

    array-length v0, p1

    :goto_14
    new-instance p1, Lm/c;

    new-array v1, v0, [F

    new-array v0, v0, [I

    invoke-direct {p1, v1, v0}, Lm/c;-><init>([F[I)V

    iput-object p1, p0, Li/d;->i:Lm/c;

    return-void
.end method


# virtual methods
.method public f(Ls/a;F)Ljava/lang/Object;
    .registers 9

    iget-object v0, p0, Li/d;->i:Lm/c;

    iget-object v1, p1, Ls/a;->b:Ljava/lang/Object;

    check-cast v1, Lm/c;

    iget-object p1, p1, Ls/a;->c:Ljava/lang/Object;

    check-cast p1, Lm/c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lm/c;->b:[I

    array-length v2, v2

    iget-object v3, p1, Lm/c;->b:[I

    array-length v3, v3

    if-ne v2, v3, :cond_41

    const/4 v2, 0x0

    :goto_16
    iget-object v3, v1, Lm/c;->b:[I

    array-length v3, v3

    if-ge v2, v3, :cond_3e

    iget-object v3, v0, Lm/c;->a:[F

    iget-object v4, v1, Lm/c;->a:[F

    aget v4, v4, v2

    iget-object v5, p1, Lm/c;->a:[F

    aget v5, v5, v2

    invoke-static {v4, v5, p2}, Lr/g;->e(FFF)F

    move-result v4

    aput v4, v3, v2

    iget-object v3, v0, Lm/c;->b:[I

    iget-object v4, v1, Lm/c;->b:[I

    aget v4, v4, v2

    iget-object v5, p1, Lm/c;->b:[I

    aget v5, v5, v2

    invoke-static {p2, v4, v5}, Lr/b;->c(FII)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_3e
    iget-object p0, p0, Li/d;->i:Lm/c;

    return-object p0

    :cond_41
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot interpolate between gradients. Lengths vary ("

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, v1, Lm/c;->b:[I

    array-length v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " vs "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lm/c;->b:[I

    array-length p1, p1

    const-string v0, ")"

    invoke-static {p2, p1, v0}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
