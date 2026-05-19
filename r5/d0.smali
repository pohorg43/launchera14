.class public final Lr5/d0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lr5/k0;

.field public final b:Lr5/k0;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lh6/c;",
            "Lr5/k0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lh4/f;

.field public final e:Z


# direct methods
.method public constructor <init>(Lr5/k0;Lr5/k0;Ljava/util/Map;I)V
    .registers 6

    and-int/lit8 p3, p4, 0x2

    const/4 v0, 0x0

    if-eqz p3, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p3, p4, 0x4

    if-eqz p3, :cond_f

    invoke-static {}, Li4/k0;->e()Ljava/util/Map;

    sget-object v0, Li4/z;->a:Li4/z;

    :cond_f
    const-string p3, "globalLevel"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "userDefinedLevelForSpecificAnnotation"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr5/d0;->a:Lr5/k0;

    iput-object p2, p0, Lr5/d0;->b:Lr5/k0;

    iput-object v0, p0, Lr5/d0;->c:Ljava/util/Map;

    new-instance p3, Lr5/c0;

    invoke-direct {p3, p0}, Lr5/c0;-><init>(Lr5/d0;)V

    invoke-static {p3}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p3

    iput-object p3, p0, Lr5/d0;->d:Lh4/f;

    sget-object p3, Lr5/k0;->b:Lr5/k0;

    if-ne p1, p3, :cond_38

    if-ne p2, p3, :cond_38

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    goto :goto_39

    :cond_38
    const/4 p1, 0x0

    :goto_39
    iput-boolean p1, p0, Lr5/d0;->e:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lr5/d0;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lr5/d0;

    iget-object v1, p0, Lr5/d0;->a:Lr5/k0;

    iget-object v3, p1, Lr5/d0;->a:Lr5/k0;

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lr5/d0;->b:Lr5/k0;

    iget-object v3, p1, Lr5/d0;->b:Lr5/k0;

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget-object p0, p0, Lr5/d0;->c:Ljava/util/Map;

    iget-object p1, p1, Lr5/d0;->c:Ljava/util/Map;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    return v2

    :cond_25
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lr5/d0;->a:Lr5/k0;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lr5/d0;->b:Lr5/k0;

    if-nez v1, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lr5/d0;->c:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "Jsr305Settings(globalLevel="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lr5/d0;->a:Lr5/k0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", migrationLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lr5/d0;->b:Lr5/k0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userDefinedLevelForSpecificAnnotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lr5/d0;->c:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
