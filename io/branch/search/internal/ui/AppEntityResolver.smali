.class public final Lio/branch/search/internal/ui/AppEntityResolver;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/internal/ui/AppEntityResolver$Companion;,
        Lio/branch/search/internal/ui/AppEntityResolver$$serializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010BM\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0012"
    }
    d2 = {
        "Lio/branch/search/internal/ui/AppEntityResolver;",
        "",
        "",
        "seen1",
        "Lio/branch/search/internal/ui/StringResolver;",
        "name",
        "description",
        "Lio/branch/search/internal/ui/ImageResolver;",
        "primaryImage",
        "secondaryImage",
        "Lio/branch/search/internal/ui/ExtraResolver;",
        "extra",
        "Lz7/g1;",
        "serializationConstructorMarker",
        "<init>",
        "(ILio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/ExtraResolver;Lz7/g1;)V",
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
.field public static final Companion:Lio/branch/search/internal/ui/AppEntityResolver$Companion;


# instance fields
.field public final a:Lio/branch/search/internal/ui/StringResolver;

.field public final b:Lio/branch/search/internal/ui/StringResolver;

.field public final c:Lio/branch/search/internal/ui/ImageResolver;

.field public final d:Lio/branch/search/internal/ui/ImageResolver;

.field public final e:Lio/branch/search/internal/ui/ExtraResolver;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/internal/ui/AppEntityResolver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/internal/ui/AppEntityResolver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/internal/ui/AppEntityResolver;->Companion:Lio/branch/search/internal/ui/AppEntityResolver$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/ExtraResolver;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_31

    iput-object p2, p0, Lio/branch/search/internal/ui/AppEntityResolver;->a:Lio/branch/search/internal/ui/StringResolver;

    and-int/lit8 p2, p1, 0x2

    const/4 v0, 0x0

    if-eqz p2, :cond_11

    iput-object p3, p0, Lio/branch/search/internal/ui/AppEntityResolver;->b:Lio/branch/search/internal/ui/StringResolver;

    goto :goto_13

    :cond_11
    iput-object v0, p0, Lio/branch/search/internal/ui/AppEntityResolver;->b:Lio/branch/search/internal/ui/StringResolver;

    :goto_13
    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_1a

    iput-object p4, p0, Lio/branch/search/internal/ui/AppEntityResolver;->c:Lio/branch/search/internal/ui/ImageResolver;

    goto :goto_1e

    :cond_1a
    sget-object p2, Lio/branch/search/internal/ui/ImageResolver$FromApp;->a:Lio/branch/search/internal/ui/ImageResolver$FromApp;

    iput-object p2, p0, Lio/branch/search/internal/ui/AppEntityResolver;->c:Lio/branch/search/internal/ui/ImageResolver;

    :goto_1e
    and-int/lit8 p2, p1, 0x8

    if-eqz p2, :cond_25

    iput-object p5, p0, Lio/branch/search/internal/ui/AppEntityResolver;->d:Lio/branch/search/internal/ui/ImageResolver;

    goto :goto_27

    :cond_25
    iput-object v0, p0, Lio/branch/search/internal/ui/AppEntityResolver;->d:Lio/branch/search/internal/ui/ImageResolver;

    :goto_27
    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_2e

    iput-object p6, p0, Lio/branch/search/internal/ui/AppEntityResolver;->e:Lio/branch/search/internal/ui/ExtraResolver;

    goto :goto_30

    :cond_2e
    iput-object v0, p0, Lio/branch/search/internal/ui/AppEntityResolver;->e:Lio/branch/search/internal/ui/ExtraResolver;

    :goto_30
    return-void

    :cond_31
    new-instance p0, Lw7/b;

    const-string p1, "name"

    invoke-direct {p0, p1}, Lw7/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/ExtraResolver;I)V
    .registers 7

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_6

    sget-object p3, Lio/branch/search/internal/ui/ImageResolver$FromApp;->a:Lio/branch/search/internal/ui/ImageResolver$FromApp;

    :cond_6
    const-string p2, "name"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "primaryImage"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/internal/ui/AppEntityResolver;->a:Lio/branch/search/internal/ui/StringResolver;

    const/4 p1, 0x0

    iput-object p1, p0, Lio/branch/search/internal/ui/AppEntityResolver;->b:Lio/branch/search/internal/ui/StringResolver;

    iput-object p3, p0, Lio/branch/search/internal/ui/AppEntityResolver;->c:Lio/branch/search/internal/ui/ImageResolver;

    iput-object p1, p0, Lio/branch/search/internal/ui/AppEntityResolver;->d:Lio/branch/search/internal/ui/ImageResolver;

    iput-object p1, p0, Lio/branch/search/internal/ui/AppEntityResolver;->e:Lio/branch/search/internal/ui/ExtraResolver;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_3d

    instance-of v0, p1, Lio/branch/search/internal/ui/AppEntityResolver;

    if-eqz v0, :cond_3b

    check-cast p1, Lio/branch/search/internal/ui/AppEntityResolver;

    iget-object v0, p0, Lio/branch/search/internal/ui/AppEntityResolver;->a:Lio/branch/search/internal/ui/StringResolver;

    iget-object v1, p1, Lio/branch/search/internal/ui/AppEntityResolver;->a:Lio/branch/search/internal/ui/StringResolver;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lio/branch/search/internal/ui/AppEntityResolver;->b:Lio/branch/search/internal/ui/StringResolver;

    iget-object v1, p1, Lio/branch/search/internal/ui/AppEntityResolver;->b:Lio/branch/search/internal/ui/StringResolver;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lio/branch/search/internal/ui/AppEntityResolver;->c:Lio/branch/search/internal/ui/ImageResolver;

    iget-object v1, p1, Lio/branch/search/internal/ui/AppEntityResolver;->c:Lio/branch/search/internal/ui/ImageResolver;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lio/branch/search/internal/ui/AppEntityResolver;->d:Lio/branch/search/internal/ui/ImageResolver;

    iget-object v1, p1, Lio/branch/search/internal/ui/AppEntityResolver;->d:Lio/branch/search/internal/ui/ImageResolver;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object p0, p0, Lio/branch/search/internal/ui/AppEntityResolver;->e:Lio/branch/search/internal/ui/ExtraResolver;

    iget-object p1, p1, Lio/branch/search/internal/ui/AppEntityResolver;->e:Lio/branch/search/internal/ui/ExtraResolver;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3b

    goto :goto_3d

    :cond_3b
    const/4 p0, 0x0

    return p0

    :cond_3d
    :goto_3d
    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lio/branch/search/internal/ui/AppEntityResolver;->a:Lio/branch/search/internal/ui/StringResolver;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/internal/ui/AppEntityResolver;->b:Lio/branch/search/internal/ui/StringResolver;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    move v2, v1

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/internal/ui/AppEntityResolver;->c:Lio/branch/search/internal/ui/ImageResolver;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_24

    :cond_23
    move v2, v1

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/internal/ui/AppEntityResolver;->d:Lio/branch/search/internal/ui/ImageResolver;

    if-eqz v2, :cond_30

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_31

    :cond_30
    move v2, v1

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lio/branch/search/internal/ui/AppEntityResolver;->e:Lio/branch/search/internal/ui/ExtraResolver;

    if-eqz p0, :cond_3c

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3c
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "AppEntityResolver(name="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/internal/ui/AppEntityResolver;->a:Lio/branch/search/internal/ui/StringResolver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/internal/ui/AppEntityResolver;->b:Lio/branch/search/internal/ui/StringResolver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", primaryImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/internal/ui/AppEntityResolver;->c:Lio/branch/search/internal/ui/ImageResolver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secondaryImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/internal/ui/AppEntityResolver;->d:Lio/branch/search/internal/ui/ImageResolver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/branch/search/internal/ui/AppEntityResolver;->e:Lio/branch/search/internal/ui/ExtraResolver;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
