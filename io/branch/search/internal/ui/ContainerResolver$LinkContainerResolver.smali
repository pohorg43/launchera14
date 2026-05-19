.class public final Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;
.super Lio/branch/search/internal/ui/ContainerResolver;
.source ""

# interfaces
.implements Lio/branch/search/s4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/ui/ContainerResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LinkContainerResolver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver$Companion;,
        Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver$$serializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00152\u00020\u00012\u00020\u0002:\u0002\u0016\u0015BA\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0010\b\u0002\u0010\r\u001a\n\u0018\u00010\u000bj\u0004\u0018\u0001`\f¢\u0006\u0004\b\u000e\u0010\u000fBS\b\u0017\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u000e\u0010\r\u001a\n\u0018\u00010\u000bj\u0004\u0018\u0001`\f\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u000e\u0010\u0014¨\u0006\u0017"
    }
    d2 = {
        "Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;",
        "Lio/branch/search/internal/ui/ContainerResolver;",
        "Lio/branch/search/s4;",
        "Lio/branch/search/internal/ui/StringResolver;",
        "header",
        "Lio/branch/search/internal/ui/ImageResolver;",
        "primaryImage",
        "Lio/branch/search/internal/ui/LinkEntityResolver;",
        "entities",
        "Lio/branch/search/internal/ui/AppEntityResolver;",
        "includeAppAtTop",
        "",
        "Lio/branch/search/internal/shared/BncContainerCategory;",
        "containerType",
        "<init>",
        "(Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/LinkEntityResolver;Lio/branch/search/internal/ui/AppEntityResolver;Ljava/lang/String;)V",
        "",
        "seen1",
        "Lz7/g1;",
        "serializationConstructorMarker",
        "(ILio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/LinkEntityResolver;Lio/branch/search/internal/ui/AppEntityResolver;Ljava/lang/String;Lz7/g1;)V",
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
.field public static final Companion:Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver$Companion;


# instance fields
.field public final a:Lio/branch/search/internal/ui/StringResolver;

.field public final b:Lio/branch/search/internal/ui/ImageResolver;

.field public final c:Lio/branch/search/internal/ui/LinkEntityResolver;

.field public final d:Lio/branch/search/internal/ui/AppEntityResolver;

.field public final e:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->Companion:Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/LinkEntityResolver;Lio/branch/search/internal/ui/AppEntityResolver;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0, p1}, Lio/branch/search/internal/ui/ContainerResolver;-><init>(I)V

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_39

    iput-object p2, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->a:Lio/branch/search/internal/ui/StringResolver;

    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_31

    iput-object p3, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->b:Lio/branch/search/internal/ui/ImageResolver;

    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_29

    iput-object p4, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->c:Lio/branch/search/internal/ui/LinkEntityResolver;

    and-int/lit8 p2, p1, 0x8

    const/4 p3, 0x0

    if-eqz p2, :cond_1d

    iput-object p5, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->d:Lio/branch/search/internal/ui/AppEntityResolver;

    goto :goto_1f

    :cond_1d
    iput-object p3, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->d:Lio/branch/search/internal/ui/AppEntityResolver;

    :goto_1f
    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_26

    iput-object p6, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->e:Ljava/lang/String;

    goto :goto_28

    :cond_26
    iput-object p3, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->e:Ljava/lang/String;

    :goto_28
    return-void

    :cond_29
    new-instance p0, Lw7/b;

    const-string p1, "entities"

    invoke-direct {p0, p1}, Lw7/b;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_31
    new-instance p0, Lw7/b;

    const-string p1, "primaryImage"

    invoke-direct {p0, p1}, Lw7/b;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_39
    new-instance p0, Lw7/b;

    const-string p1, "header"

    invoke-direct {p0, p1}, Lw7/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/LinkEntityResolver;Lio/branch/search/internal/ui/AppEntityResolver;Ljava/lang/String;)V
    .registers 7

    const-string v0, "entities"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/branch/search/internal/ui/ContainerResolver;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->a:Lio/branch/search/internal/ui/StringResolver;

    iput-object p2, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->b:Lio/branch/search/internal/ui/ImageResolver;

    iput-object p3, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->c:Lio/branch/search/internal/ui/LinkEntityResolver;

    iput-object p4, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->d:Lio/branch/search/internal/ui/AppEntityResolver;

    iput-object p5, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lio/branch/search/internal/ui/AppEntityResolver;
    .registers 1

    iget-object p0, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->d:Lio/branch/search/internal/ui/AppEntityResolver;

    return-object p0
.end method

.method public b()Lio/branch/search/internal/ui/LinkEntityResolver;
    .registers 1

    iget-object p0, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->c:Lio/branch/search/internal/ui/LinkEntityResolver;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->e:Ljava/lang/String;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_3d

    instance-of v0, p1, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;

    if-eqz v0, :cond_3b

    check-cast p1, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;

    iget-object v0, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->a:Lio/branch/search/internal/ui/StringResolver;

    iget-object v1, p1, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->a:Lio/branch/search/internal/ui/StringResolver;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->b:Lio/branch/search/internal/ui/ImageResolver;

    iget-object v1, p1, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->b:Lio/branch/search/internal/ui/ImageResolver;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->c:Lio/branch/search/internal/ui/LinkEntityResolver;

    iget-object v1, p1, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->c:Lio/branch/search/internal/ui/LinkEntityResolver;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->d:Lio/branch/search/internal/ui/AppEntityResolver;

    iget-object v1, p1, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->d:Lio/branch/search/internal/ui/AppEntityResolver;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object p0, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->e:Ljava/lang/String;

    iget-object p1, p1, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->e:Ljava/lang/String;

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

    iget-object v0, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->a:Lio/branch/search/internal/ui/StringResolver;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->b:Lio/branch/search/internal/ui/ImageResolver;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    move v2, v1

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->c:Lio/branch/search/internal/ui/LinkEntityResolver;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Lio/branch/search/internal/ui/LinkEntityResolver;->hashCode()I

    move-result v2

    goto :goto_24

    :cond_23
    move v2, v1

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->d:Lio/branch/search/internal/ui/AppEntityResolver;

    if-eqz v2, :cond_30

    invoke-virtual {v2}, Lio/branch/search/internal/ui/AppEntityResolver;->hashCode()I

    move-result v2

    goto :goto_31

    :cond_30
    move v2, v1

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->e:Ljava/lang/String;

    if-eqz p0, :cond_3c

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3c
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "LinkContainerResolver(header="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->a:Lio/branch/search/internal/ui/StringResolver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", primaryImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->b:Lio/branch/search/internal/ui/ImageResolver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->c:Lio/branch/search/internal/ui/LinkEntityResolver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", includeAppAtTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->d:Lio/branch/search/internal/ui/AppEntityResolver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", containerType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->e:Ljava/lang/String;

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
