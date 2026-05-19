.class public final Lio/branch/search/internal/control/FeatureRule$Constant;
.super Lio/branch/search/internal/control/FeatureRule;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/control/FeatureRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Constant"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/internal/control/FeatureRule$Constant$Companion;,
        Lio/branch/search/internal/control/FeatureRule$Constant$$serializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u0000 \n2\u00020\u0001:\u0002\u000b\nB#\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\f"
    }
    d2 = {
        "Lio/branch/search/internal/control/FeatureRule$Constant;",
        "Lio/branch/search/internal/control/FeatureRule;",
        "",
        "seen1",
        "",
        "value",
        "Lz7/g1;",
        "serializationConstructorMarker",
        "<init>",
        "(IZLz7/g1;)V",
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
.field public static final Companion:Lio/branch/search/internal/control/FeatureRule$Constant$Companion;


# instance fields
.field public final a:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/internal/control/FeatureRule$Constant$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/internal/control/FeatureRule$Constant$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/internal/control/FeatureRule$Constant;->Companion:Lio/branch/search/internal/control/FeatureRule$Constant$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .registers 3

    invoke-direct {p0, p1}, Lio/branch/search/internal/control/FeatureRule;-><init>(I)V

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_a

    iput-boolean p2, p0, Lio/branch/search/internal/control/FeatureRule$Constant;->a:Z

    return-void

    :cond_a
    new-instance p0, Lw7/b;

    const-string p1, "value"

    invoke-direct {p0, p1}, Lw7/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public b(Lio/branch/search/r0;)Z
    .registers 3

    const-string v0, "userData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p0, Lio/branch/search/internal/control/FeatureRule$Constant;->a:Z

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_11

    instance-of v0, p1, Lio/branch/search/internal/control/FeatureRule$Constant;

    if-eqz v0, :cond_f

    check-cast p1, Lio/branch/search/internal/control/FeatureRule$Constant;

    iget-boolean p0, p0, Lio/branch/search/internal/control/FeatureRule$Constant;->a:Z

    iget-boolean p1, p1, Lio/branch/search/internal/control/FeatureRule$Constant;->a:Z

    if-ne p0, p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .registers 1

    iget-boolean p0, p0, Lio/branch/search/internal/control/FeatureRule$Constant;->a:Z

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    :cond_5
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Constant(value="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Lio/branch/search/internal/control/FeatureRule$Constant;->a:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
