.class public final Lio/branch/search/internal/ui/AdLogic$Static;
.super Lio/branch/search/internal/ui/AdLogic;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/ui/AdLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Static"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/internal/ui/AdLogic$Static$Companion;,
        Lio/branch/search/internal/ui/AdLogic$Static$$serializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 \u000b2\u00020\u0001:\u0002\f\u000bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0004\u0010\n¨\u0006\r"
    }
    d2 = {
        "Lio/branch/search/internal/ui/AdLogic$Static;",
        "Lio/branch/search/internal/ui/AdLogic;",
        "Lio/branch/search/internal/ui/LinkEntityResolver;",
        "resolver",
        "<init>",
        "(Lio/branch/search/internal/ui/LinkEntityResolver;)V",
        "",
        "seen1",
        "Lz7/g1;",
        "serializationConstructorMarker",
        "(ILio/branch/search/internal/ui/LinkEntityResolver;Lz7/g1;)V",
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
.field public static final Companion:Lio/branch/search/internal/ui/AdLogic$Static$Companion;


# instance fields
.field public final a:Lio/branch/search/internal/ui/LinkEntityResolver;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/internal/ui/AdLogic$Static$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/internal/ui/AdLogic$Static$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/internal/ui/AdLogic$Static;->Companion:Lio/branch/search/internal/ui/AdLogic$Static$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILio/branch/search/internal/ui/LinkEntityResolver;)V
    .registers 3

    invoke-direct {p0, p1}, Lio/branch/search/internal/ui/AdLogic;-><init>(I)V

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_a

    iput-object p2, p0, Lio/branch/search/internal/ui/AdLogic$Static;->a:Lio/branch/search/internal/ui/LinkEntityResolver;

    return-void

    :cond_a
    new-instance p0, Lw7/b;

    const-string p1, "resolver"

    invoke-direct {p0, p1}, Lw7/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lio/branch/search/internal/ui/LinkEntityResolver;)V
    .registers 3

    const-string v0, "resolver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/branch/search/internal/ui/AdLogic;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lio/branch/search/internal/ui/AdLogic$Static;->a:Lio/branch/search/internal/ui/LinkEntityResolver;

    return-void
.end method


# virtual methods
.method public a()Lio/branch/search/internal/ui/LinkEntityResolver;
    .registers 1

    iget-object p0, p0, Lio/branch/search/internal/ui/AdLogic$Static;->a:Lio/branch/search/internal/ui/LinkEntityResolver;

    return-object p0
.end method
