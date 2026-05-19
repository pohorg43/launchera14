.class public final Lio/branch/search/internal/ui/UISkeletonResolver$Default;
.super Lio/branch/search/internal/ui/UISkeletonResolver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/ui/UISkeletonResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/internal/ui/UISkeletonResolver$Default$Companion;,
        Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bB5\b\u0017\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0010"
    }
    d2 = {
        "Lio/branch/search/internal/ui/UISkeletonResolver$Default;",
        "Lio/branch/search/internal/ui/UISkeletonResolver;",
        "",
        "Lio/branch/search/internal/ui/ContainerResolver;",
        "containers",
        "Lio/branch/search/internal/ui/AdLogic;",
        "adLogic",
        "<init>",
        "(Ljava/util/List;Lio/branch/search/internal/ui/AdLogic;)V",
        "",
        "seen1",
        "Lz7/g1;",
        "serializationConstructorMarker",
        "(ILjava/util/List;Lio/branch/search/internal/ui/AdLogic;Lz7/g1;)V",
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
.field public static final Companion:Lio/branch/search/internal/ui/UISkeletonResolver$Default$Companion;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/branch/search/internal/ui/ContainerResolver;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lio/branch/search/internal/ui/AdLogic;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/internal/ui/UISkeletonResolver$Default$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/internal/ui/UISkeletonResolver$Default$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/internal/ui/UISkeletonResolver$Default;->Companion:Lio/branch/search/internal/ui/UISkeletonResolver$Default$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Lio/branch/search/internal/ui/AdLogic;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lio/branch/search/internal/ui/ContainerResolver;",
            ">;",
            "Lio/branch/search/internal/ui/AdLogic;",
            "Lz7/g1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/branch/search/internal/ui/UISkeletonResolver;-><init>(I)V

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_18

    iput-object p2, p0, Lio/branch/search/internal/ui/UISkeletonResolver$Default;->a:Ljava/util/List;

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_10

    iput-object p3, p0, Lio/branch/search/internal/ui/UISkeletonResolver$Default;->b:Lio/branch/search/internal/ui/AdLogic;

    return-void

    :cond_10
    new-instance p0, Lw7/b;

    const-string p1, "adLogic"

    invoke-direct {p0, p1}, Lw7/b;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    new-instance p0, Lw7/b;

    const-string p1, "containers"

    invoke-direct {p0, p1}, Lw7/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/util/List;Lio/branch/search/internal/ui/AdLogic;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/branch/search/internal/ui/ContainerResolver;",
            ">;",
            "Lio/branch/search/internal/ui/AdLogic;",
            ")V"
        }
    .end annotation

    const-string v0, "containers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adLogic"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/branch/search/internal/ui/UISkeletonResolver;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lio/branch/search/internal/ui/UISkeletonResolver$Default;->a:Ljava/util/List;

    iput-object p2, p0, Lio/branch/search/internal/ui/UISkeletonResolver$Default;->b:Lio/branch/search/internal/ui/AdLogic;

    return-void
.end method


# virtual methods
.method public a()Lio/branch/search/internal/ui/AdLogic;
    .registers 1

    iget-object p0, p0, Lio/branch/search/internal/ui/UISkeletonResolver$Default;->b:Lio/branch/search/internal/ui/AdLogic;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_1f

    instance-of v0, p1, Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    if-eqz v0, :cond_1d

    check-cast p1, Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    iget-object v0, p0, Lio/branch/search/internal/ui/UISkeletonResolver$Default;->a:Ljava/util/List;

    iget-object v1, p1, Lio/branch/search/internal/ui/UISkeletonResolver$Default;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p0, p0, Lio/branch/search/internal/ui/UISkeletonResolver$Default;->b:Lio/branch/search/internal/ui/AdLogic;

    iget-object p1, p1, Lio/branch/search/internal/ui/UISkeletonResolver$Default;->b:Lio/branch/search/internal/ui/AdLogic;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    return p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lio/branch/search/internal/ui/UISkeletonResolver$Default;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lio/branch/search/internal/ui/UISkeletonResolver$Default;->b:Lio/branch/search/internal/ui/AdLogic;

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_15
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "Default(containers="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/internal/ui/UISkeletonResolver$Default;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adLogic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/branch/search/internal/ui/UISkeletonResolver$Default;->b:Lio/branch/search/internal/ui/AdLogic;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
