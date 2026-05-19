.class public final Lr5/z;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr5/z$a;
    }
.end annotation


# static fields
.field public static final d:Lr5/z$a;

.field public static final e:Lr5/z;


# instance fields
.field public final a:Lr5/k0;

.field public final b:Lh4/e;

.field public final c:Lr5/k0;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lr5/z$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr5/z$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lr5/z;->d:Lr5/z$a;

    new-instance v0, Lr5/z;

    sget-object v2, Lr5/k0;->d:Lr5/k0;

    const/4 v3, 0x6

    invoke-direct {v0, v2, v1, v1, v3}, Lr5/z;-><init>(Lr5/k0;Lh4/e;Lr5/k0;I)V

    sput-object v0, Lr5/z;->e:Lr5/z;

    return-void
.end method

.method public constructor <init>(Lr5/k0;Lh4/e;Lr5/k0;)V
    .registers 5

    const-string v0, "reportLevelBefore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportLevelAfter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr5/z;->a:Lr5/k0;

    iput-object p2, p0, Lr5/z;->b:Lh4/e;

    iput-object p3, p0, Lr5/z;->c:Lr5/k0;

    return-void
.end method

.method public constructor <init>(Lr5/k0;Lh4/e;Lr5/k0;I)V
    .registers 7

    and-int/lit8 p2, p4, 0x2

    const/4 p3, 0x0

    if-eqz p2, :cond_d

    new-instance p2, Lh4/e;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, v1}, Lh4/e;-><init>(III)V

    goto :goto_e

    :cond_d
    move-object p2, p3

    :goto_e
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_13

    move-object p3, p1

    :cond_13
    invoke-direct {p0, p1, p2, p3}, Lr5/z;-><init>(Lr5/k0;Lh4/e;Lr5/k0;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lr5/z;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lr5/z;

    iget-object v1, p0, Lr5/z;->a:Lr5/k0;

    iget-object v3, p1, Lr5/z;->a:Lr5/k0;

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lr5/z;->b:Lh4/e;

    iget-object v3, p1, Lr5/z;->b:Lh4/e;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object p0, p0, Lr5/z;->c:Lr5/k0;

    iget-object p1, p1, Lr5/z;->c:Lr5/k0;

    if-eq p0, p1, :cond_25

    return v2

    :cond_25
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lr5/z;->a:Lr5/k0;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lr5/z;->b:Lh4/e;

    if-nez v1, :cond_e

    const/4 v1, 0x0

    goto :goto_10

    :cond_e
    iget v1, v1, Lh4/e;->d:I

    :goto_10
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lr5/z;->c:Lr5/k0;

    invoke-virtual {p0}, Ljava/lang/Enum;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "JavaNullabilityAnnotationsStatus(reportLevelBefore="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lr5/z;->a:Lr5/k0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sinceVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lr5/z;->b:Lh4/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reportLevelAfter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lr5/z;->c:Lr5/k0;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
