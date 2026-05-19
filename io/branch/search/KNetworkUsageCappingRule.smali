.class public final Lio/branch/search/KNetworkUsageCappingRule;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/KNetworkUsageCappingRule$Companion;,
        Lio/branch/search/KNetworkUsageCappingRule$$serializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 !2\u00020\u0001:\u0002\"!B+\u0012\u0006\u0010\u000f\u001a\u00020\u0005\u0012\u0006\u0010\u0015\u001a\u00020\u0010\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u001b\u0010\u001cB?\b\u0017\u0012\u0006\u0010\u001d\u001a\u00020\u0005\u0012\u0006\u0010\u000f\u001a\u00020\u0005\u0012\u0006\u0010\u0015\u001a\u00020\u0010\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\u001e¢\u0006\u0004\b\u001b\u0010 J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\n\u0010\u000bR\u0019\u0010\u000f\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u0007R\u0019\u0010\u0015\u001a\u00020\u00108\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001b\u0010\u0018\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0016\u001a\u0004\b\u0017\u0010\u0004R\u001b\u0010\u001a\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0016\u001a\u0004\b\u0019\u0010\u0004¨\u0006#"
    }
    d2 = {
        "Lio/branch/search/KNetworkUsageCappingRule;",
        "",
        "",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "a",
        "I",
        "f",
        "days",
        "",
        "b",
        "J",
        "c",
        "()J",
        "byte_limit",
        "Ljava/lang/String;",
        "d",
        "channels",
        "e",
        "connection_types",
        "<init>",
        "(IJLjava/lang/String;Ljava/lang/String;)V",
        "seen1",
        "Lz7/g1;",
        "serializationConstructorMarker",
        "(IIJLjava/lang/String;Ljava/lang/String;Lz7/g1;)V",
        "Companion",
        "serializer",
        "BranchSearchSDK_forPartnersRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation

.annotation runtime Lkotlinx/serialization/a;
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/KNetworkUsageCappingRule$Companion;

.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 14

    new-instance v0, Lio/branch/search/KNetworkUsageCappingRule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/KNetworkUsageCappingRule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/KNetworkUsageCappingRule;->Companion:Lio/branch/search/KNetworkUsageCappingRule$Companion;

    const/4 v1, 0x3

    new-array v2, v1, [Lh4/j;

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Object;

    sget-object v5, Lio/branch/search/t5;->y:Lio/branch/search/t5;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v7, Lio/branch/search/t5;->A:Lio/branch/search/t5;

    const/4 v8, 0x1

    aput-object v7, v4, v8

    sget-object v9, Lio/branch/search/t5;->z:Lio/branch/search/t5;

    const/4 v10, 0x2

    aput-object v9, v4, v10

    sget-object v11, Lio/branch/search/t5;->B:Lio/branch/search/t5;

    aput-object v11, v4, v1

    invoke-static {v0, v4}, Lio/branch/search/KNetworkUsageCappingRule$Companion;->a(Lio/branch/search/KNetworkUsageCappingRule$Companion;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v12, Lh4/j;

    const-string v13, "LOCAL_IMAGES"

    invoke-direct {v12, v13, v4}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v2, v6

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v5, v4, v6

    aput-object v7, v4, v8

    invoke-static {v0, v4}, Lio/branch/search/KNetworkUsageCappingRule$Companion;->a(Lio/branch/search/KNetworkUsageCappingRule$Companion;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v12, Lh4/j;

    const-string v13, "ADS_IMAGES"

    invoke-direct {v12, v13, v4}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v2, v8

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v6

    aput-object v7, v4, v8

    aput-object v9, v4, v10

    aput-object v11, v4, v1

    sget-object v5, Lio/branch/search/t5;->p:Lio/branch/search/t5;

    aput-object v5, v4, v3

    invoke-static {v0, v4}, Lio/branch/search/KNetworkUsageCappingRule$Companion;->a(Lio/branch/search/KNetworkUsageCappingRule$Companion;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lh4/j;

    const-string v7, "ALL_LOCAL"

    invoke-direct {v5, v7, v4}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v2, v10

    invoke-static {v2}, Li4/k0;->h([Lh4/j;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lio/branch/search/KNetworkUsageCappingRule;->e:Ljava/util/Map;

    new-array v2, v3, [Lh4/j;

    new-array v3, v10, [Ljava/lang/Object;

    const-string v4, "wifi"

    aput-object v4, v3, v6

    const-string v5, "wifi:metered"

    aput-object v5, v3, v8

    invoke-static {v0, v3}, Lio/branch/search/KNetworkUsageCappingRule$Companion;->a(Lio/branch/search/KNetworkUsageCappingRule$Companion;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lh4/j;

    const-string v9, "ALL_WIFI"

    invoke-direct {v7, v9, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v2, v6

    new-array v3, v10, [Ljava/lang/Object;

    const-string v7, "cellular"

    aput-object v7, v3, v6

    const-string v9, "cellular:metered"

    aput-object v9, v3, v8

    invoke-static {v0, v3}, Lio/branch/search/KNetworkUsageCappingRule$Companion;->a(Lio/branch/search/KNetworkUsageCappingRule$Companion;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v11, Lh4/j;

    const-string v12, "ALL_CELLULAR"

    invoke-direct {v11, v12, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v2, v8

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v5, v3, v6

    aput-object v9, v3, v8

    invoke-static {v0, v3}, Lio/branch/search/KNetworkUsageCappingRule$Companion;->a(Lio/branch/search/KNetworkUsageCappingRule$Companion;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lh4/j;

    const-string v9, "ALL_METERED"

    invoke-direct {v5, v9, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v2, v10

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v4, v3, v6

    aput-object v7, v3, v8

    invoke-static {v0, v3}, Lio/branch/search/KNetworkUsageCappingRule$Companion;->a(Lio/branch/search/KNetworkUsageCappingRule$Companion;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lh4/j;

    const-string v4, "ALL_NONMETERED"

    invoke-direct {v3, v4, v0}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v1

    invoke-static {v2}, Li4/k0;->h([Lh4/j;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/branch/search/KNetworkUsageCappingRule;->f:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(IIJLjava/lang/String;Ljava/lang/String;Lz7/g1;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p7, p1, 0x1

    if-eqz p7, :cond_34

    iput p2, p0, Lio/branch/search/KNetworkUsageCappingRule;->a:I

    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_2c

    iput-wide p3, p0, Lio/branch/search/KNetworkUsageCappingRule;->b:J

    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_24

    iput-object p5, p0, Lio/branch/search/KNetworkUsageCappingRule;->c:Ljava/lang/String;

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_1c

    iput-object p6, p0, Lio/branch/search/KNetworkUsageCappingRule;->d:Ljava/lang/String;

    return-void

    :cond_1c
    new-instance p0, Lw7/b;

    const-string p1, "connection_types"

    invoke-direct {p0, p1}, Lw7/b;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_24
    new-instance p0, Lw7/b;

    const-string p1, "channels"

    invoke-direct {p0, p1}, Lw7/b;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2c
    new-instance p0, Lw7/b;

    const-string p1, "byte_limit"

    invoke-direct {p0, p1}, Lw7/b;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    new-instance p0, Lw7/b;

    const-string p1, "days"

    invoke-direct {p0, p1}, Lw7/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(IJLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/branch/search/KNetworkUsageCappingRule;->a:I

    iput-wide p2, p0, Lio/branch/search/KNetworkUsageCappingRule;->b:J

    iput-object p4, p0, Lio/branch/search/KNetworkUsageCappingRule;->c:Ljava/lang/String;

    iput-object p5, p0, Lio/branch/search/KNetworkUsageCappingRule;->d:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a()Ljava/util/Map;
    .registers 1

    sget-object v0, Lio/branch/search/KNetworkUsageCappingRule;->e:Ljava/util/Map;

    return-object v0
.end method

.method public static final a(Lio/branch/search/KNetworkUsageCappingRule;Ly7/c;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lio/branch/search/KNetworkUsageCappingRule;->a:I

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Ly7/c;->r(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    iget-wide v0, p0, Lio/branch/search/KNetworkUsageCappingRule;->b:J

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v0, v1}, Ly7/c;->B(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    sget-object v0, Lz7/k1;->b:Lz7/k1;

    iget-object v1, p0, Lio/branch/search/KNetworkUsageCappingRule;->c:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {p1, p2, v2, v0, v1}, Ly7/c;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/h;Ljava/lang/Object;)V

    iget-object p0, p0, Lio/branch/search/KNetworkUsageCappingRule;->d:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-interface {p1, p2, v1, v0, p0}, Ly7/c;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/h;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic b()Ljava/util/Map;
    .registers 1

    sget-object v0, Lio/branch/search/KNetworkUsageCappingRule;->f:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final c()J
    .registers 3

    iget-wide v0, p0, Lio/branch/search/KNetworkUsageCappingRule;->b:J

    return-wide v0
.end method

.method public final d()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/KNetworkUsageCappingRule;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/KNetworkUsageCappingRule;->d:Ljava/lang/String;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    if-eq p0, p1, :cond_2d

    instance-of v0, p1, Lio/branch/search/KNetworkUsageCappingRule;

    if-eqz v0, :cond_2b

    check-cast p1, Lio/branch/search/KNetworkUsageCappingRule;

    iget v0, p0, Lio/branch/search/KNetworkUsageCappingRule;->a:I

    iget v1, p1, Lio/branch/search/KNetworkUsageCappingRule;->a:I

    if-ne v0, v1, :cond_2b

    iget-wide v0, p0, Lio/branch/search/KNetworkUsageCappingRule;->b:J

    iget-wide v2, p1, Lio/branch/search/KNetworkUsageCappingRule;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2b

    iget-object v0, p0, Lio/branch/search/KNetworkUsageCappingRule;->c:Ljava/lang/String;

    iget-object v1, p1, Lio/branch/search/KNetworkUsageCappingRule;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object p0, p0, Lio/branch/search/KNetworkUsageCappingRule;->d:Ljava/lang/String;

    iget-object p1, p1, Lio/branch/search/KNetworkUsageCappingRule;->d:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 p0, 0x0

    return p0

    :cond_2d
    :goto_2d
    const/4 p0, 0x1

    return p0
.end method

.method public final f()I
    .registers 1

    iget p0, p0, Lio/branch/search/KNetworkUsageCappingRule;->a:I

    return p0
.end method

.method public hashCode()I
    .registers 6

    iget v0, p0, Lio/branch/search/KNetworkUsageCappingRule;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lio/branch/search/KNetworkUsageCappingRule;->b:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/branch/search/KNetworkUsageCappingRule;->c:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1a

    :cond_19
    move v1, v2

    :goto_1a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lio/branch/search/KNetworkUsageCappingRule;->d:Ljava/lang/String;

    if-eqz p0, :cond_25

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_25
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "KNetworkUsageCappingRule(days="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/branch/search/KNetworkUsageCappingRule;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", byte_limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/branch/search/KNetworkUsageCappingRule;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/KNetworkUsageCappingRule;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", connection_types="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/branch/search/KNetworkUsageCappingRule;->d:Ljava/lang/String;

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
