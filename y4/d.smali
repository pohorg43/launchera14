.class public final Ly4/d;
.super Ly4/b;
.source ""

# interfaces
.implements Ly4/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ly4/b;",
        "Ly4/a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Ly4/d;

.field public static final e:Ly4/d;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Ly4/d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ly4/d;-><init>(II)V

    sput-object v0, Ly4/d;->e:Ly4/d;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ly4/b;-><init>(III)V

    return-void
.end method


# virtual methods
.method public d(I)Z
    .registers 3

    iget v0, p0, Ly4/b;->a:I

    if-gt v0, p1, :cond_a

    iget p0, p0, Ly4/b;->b:I

    if-gt p1, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public e()Ljava/lang/Integer;
    .registers 1

    iget p0, p0, Ly4/b;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Ly4/d;

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Ly4/d;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Ly4/d;

    invoke-virtual {v0}, Ly4/d;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    :cond_13
    iget v0, p0, Ly4/b;->a:I

    check-cast p1, Ly4/d;

    iget v1, p1, Ly4/b;->a:I

    if-ne v0, v1, :cond_23

    iget p0, p0, Ly4/b;->b:I

    iget p1, p1, Ly4/b;->b:I

    if-ne p0, p1, :cond_23

    :cond_21
    const/4 p0, 0x1

    goto :goto_24

    :cond_23
    const/4 p0, 0x0

    :goto_24
    return p0
.end method

.method public bridge synthetic getEndInclusive()Ljava/lang/Comparable;
    .registers 1

    invoke-virtual {p0}, Ly4/d;->e()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getStart()Ljava/lang/Comparable;
    .registers 1

    invoke-virtual {p0}, Ly4/d;->h()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public h()Ljava/lang/Integer;
    .registers 1

    iget p0, p0, Ly4/b;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Ly4/d;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, -0x1

    goto :goto_f

    :cond_8
    iget v0, p0, Ly4/b;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Ly4/b;->b:I

    add-int/2addr p0, v0

    :goto_f
    return p0
.end method

.method public isEmpty()Z
    .registers 2

    iget v0, p0, Ly4/b;->a:I

    iget p0, p0, Ly4/b;->b:I

    if-le v0, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Ly4/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ly4/b;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
