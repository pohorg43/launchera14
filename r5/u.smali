.class public final Lr5/u;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lz5/k;

.field public final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lr5/c;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Z


# direct methods
.method public constructor <init>(Lz5/k;Ljava/util/Collection;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz5/k;",
            "Ljava/util/Collection<",
            "+",
            "Lr5/c;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "nullabilityQualifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qualifierApplicabilityTypes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr5/u;->a:Lz5/k;

    iput-object p2, p0, Lr5/u;->b:Ljava/util/Collection;

    iput-boolean p3, p0, Lr5/u;->c:Z

    return-void
.end method

.method public constructor <init>(Lz5/k;Ljava/util/Collection;ZI)V
    .registers 5

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_d

    iget-object p3, p1, Lz5/k;->a:Lz5/j;

    sget-object p4, Lz5/j;->c:Lz5/j;

    if-ne p3, p4, :cond_c

    const/4 p3, 0x1

    goto :goto_d

    :cond_c
    const/4 p3, 0x0

    :cond_d
    :goto_d
    invoke-direct {p0, p1, p2, p3}, Lr5/u;-><init>(Lz5/k;Ljava/util/Collection;Z)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lr5/u;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lr5/u;

    iget-object v1, p0, Lr5/u;->a:Lz5/k;

    iget-object v3, p1, Lr5/u;->a:Lz5/k;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lr5/u;->b:Ljava/util/Collection;

    iget-object v3, p1, Lr5/u;->b:Ljava/util/Collection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-boolean p0, p0, Lr5/u;->c:Z

    iget-boolean p1, p1, Lr5/u;->c:Z

    if-eq p0, p1, :cond_29

    return v2

    :cond_29
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lr5/u;->a:Lz5/k;

    invoke-virtual {v0}, Lz5/k;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lr5/u;->b:Ljava/util/Collection;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean p0, p0, Lr5/u;->c:Z

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    :cond_16
    add-int/2addr v1, p0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "JavaDefaultQualifiers(nullabilityQualifier="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lr5/u;->a:Lz5/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", qualifierApplicabilityTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lr5/u;->b:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", definitelyNotNull="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lr5/u;->c:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Ld/b;->a(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
