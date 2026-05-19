.class public final Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;
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
    name = "FlatLinkContainerResolver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$Companion;,
        Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$$serializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00122\u00020\u00012\u00020\u0002:\u0002\u0013\u0012B7\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0010\b\u0002\u0010\n\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\t¢\u0006\u0004\b\u000b\u0010\fBI\b\u0017\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0010\n\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\t\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u000b\u0010\u0011¨\u0006\u0014"
    }
    d2 = {
        "Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;",
        "Lio/branch/search/internal/ui/ContainerResolver;",
        "Lio/branch/search/s4;",
        "",
        "header",
        "Lio/branch/search/internal/ui/LinkEntityResolver;",
        "entities",
        "Lio/branch/search/internal/ui/AppEntityResolver;",
        "includeAppAtTop",
        "Lio/branch/search/internal/shared/BncContainerCategory;",
        "containerType",
        "<init>",
        "(Ljava/lang/String;Lio/branch/search/internal/ui/LinkEntityResolver;Lio/branch/search/internal/ui/AppEntityResolver;Ljava/lang/String;)V",
        "",
        "seen1",
        "Lz7/g1;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Lio/branch/search/internal/ui/LinkEntityResolver;Lio/branch/search/internal/ui/AppEntityResolver;Ljava/lang/String;Lz7/g1;)V",
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
.field public static final Companion:Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lio/branch/search/internal/ui/LinkEntityResolver;

.field public final c:Lio/branch/search/internal/ui/AppEntityResolver;

.field public final d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->Companion:Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lio/branch/search/internal/ui/LinkEntityResolver;Lio/branch/search/internal/ui/AppEntityResolver;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0, p1}, Lio/branch/search/internal/ui/ContainerResolver;-><init>(I)V

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_2b

    iput-object p2, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->a:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_23

    iput-object p3, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->b:Lio/branch/search/internal/ui/LinkEntityResolver;

    and-int/lit8 p2, p1, 0x4

    const/4 p3, 0x0

    if-eqz p2, :cond_17

    iput-object p4, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->c:Lio/branch/search/internal/ui/AppEntityResolver;

    goto :goto_19

    :cond_17
    iput-object p3, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->c:Lio/branch/search/internal/ui/AppEntityResolver;

    :goto_19
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_20

    iput-object p5, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->d:Ljava/lang/String;

    goto :goto_22

    :cond_20
    iput-object p3, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->d:Ljava/lang/String;

    :goto_22
    return-void

    :cond_23
    new-instance p0, Lw7/b;

    const-string p1, "entities"

    invoke-direct {p0, p1}, Lw7/b;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2b
    new-instance p0, Lw7/b;

    const-string p1, "header"

    invoke-direct {p0, p1}, Lw7/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Lio/branch/search/internal/ui/LinkEntityResolver;Lio/branch/search/internal/ui/AppEntityResolver;Ljava/lang/String;)V
    .registers 5

    const-string p1, "entities"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lio/branch/search/internal/ui/ContainerResolver;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->b:Lio/branch/search/internal/ui/LinkEntityResolver;

    iput-object p3, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->c:Lio/branch/search/internal/ui/AppEntityResolver;

    iput-object p4, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lio/branch/search/internal/ui/AppEntityResolver;
    .registers 1

    iget-object p0, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->c:Lio/branch/search/internal/ui/AppEntityResolver;

    return-object p0
.end method

.method public b()Lio/branch/search/internal/ui/LinkEntityResolver;
    .registers 1

    iget-object p0, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->b:Lio/branch/search/internal/ui/LinkEntityResolver;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->d:Ljava/lang/String;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_33

    instance-of v0, p1, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;

    if-eqz v0, :cond_31

    check-cast p1, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;

    iget-object v0, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->a:Ljava/lang/String;

    iget-object v1, p1, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->b:Lio/branch/search/internal/ui/LinkEntityResolver;

    iget-object v1, p1, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->b:Lio/branch/search/internal/ui/LinkEntityResolver;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->c:Lio/branch/search/internal/ui/AppEntityResolver;

    iget-object v1, p1, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->c:Lio/branch/search/internal/ui/AppEntityResolver;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object p0, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->d:Ljava/lang/String;

    iget-object p1, p1, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->d:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    goto :goto_33

    :cond_31
    const/4 p0, 0x0

    return p0

    :cond_33
    :goto_33
    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->b:Lio/branch/search/internal/ui/LinkEntityResolver;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lio/branch/search/internal/ui/LinkEntityResolver;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    move v2, v1

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->c:Lio/branch/search/internal/ui/AppEntityResolver;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Lio/branch/search/internal/ui/AppEntityResolver;->hashCode()I

    move-result v2

    goto :goto_24

    :cond_23
    move v2, v1

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->d:Ljava/lang/String;

    if-eqz p0, :cond_2f

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2f
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "FlatLinkContainerResolver(header="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->b:Lio/branch/search/internal/ui/LinkEntityResolver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", includeAppAtTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->c:Lio/branch/search/internal/ui/AppEntityResolver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", containerType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->d:Ljava/lang/String;

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
