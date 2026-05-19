.class public final Lz5/k;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lz5/j;

.field public final b:Z


# direct methods
.method public constructor <init>(Lz5/j;Z)V
    .registers 4

    const-string v0, "qualifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz5/k;->a:Lz5/j;

    iput-boolean p2, p0, Lz5/k;->b:Z

    return-void
.end method

.method public static a(Lz5/k;Lz5/j;ZI)Lz5/k;
    .registers 5

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_6

    iget-object p1, p0, Lz5/k;->a:Lz5/j;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-boolean p2, p0, Lz5/k;->b:Z

    :cond_c
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "qualifier"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lz5/k;

    invoke-direct {p0, p1, p2}, Lz5/k;-><init>(Lz5/j;Z)V

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lz5/k;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lz5/k;

    iget-object v1, p0, Lz5/k;->a:Lz5/j;

    iget-object v3, p1, Lz5/k;->a:Lz5/j;

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-boolean p0, p0, Lz5/k;->b:Z

    iget-boolean p1, p1, Lz5/k;->b:Z

    if-eq p0, p1, :cond_1a

    return v2

    :cond_1a
    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lz5/k;->a:Lz5/j;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lz5/k;->b:Z

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    :cond_d
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "NullabilityQualifierWithMigrationStatus(qualifier="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lz5/k;->a:Lz5/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isForWarningOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lz5/k;->b:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Ld/b;->a(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
