.class public final Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;
.super Lio/branch/search/internal/ui/AdLogic;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/ui/AdLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DingBasedOnOrganic"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic$Companion;,
        Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic$$serializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000 \u000b2\u00020\u0001:\u0002\f\u000bB-\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\r"
    }
    d2 = {
        "Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;",
        "Lio/branch/search/internal/ui/AdLogic;",
        "",
        "seen1",
        "toRank",
        "Lio/branch/search/internal/ui/LinkEntityResolver;",
        "resolver",
        "Lz7/g1;",
        "serializationConstructorMarker",
        "<init>",
        "(IILio/branch/search/internal/ui/LinkEntityResolver;Lz7/g1;)V",
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
.field public static final Companion:Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic$Companion;


# instance fields
.field public final a:I

.field public final b:Lio/branch/search/internal/ui/LinkEntityResolver;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;->Companion:Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IILio/branch/search/internal/ui/LinkEntityResolver;)V
    .registers 5

    invoke-direct {p0, p1}, Lio/branch/search/internal/ui/AdLogic;-><init>(I)V

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_8

    goto :goto_a

    :cond_8
    const/16 p2, 0x3e8

    :goto_a
    iput p2, p0, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;->a:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_13

    iput-object p3, p0, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;->b:Lio/branch/search/internal/ui/LinkEntityResolver;

    return-void

    :cond_13
    new-instance p0, Lw7/b;

    const-string p1, "resolver"

    invoke-direct {p0, p1}, Lw7/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Lio/branch/search/internal/ui/LinkEntityResolver;
    .registers 1

    iget-object p0, p0, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;->b:Lio/branch/search/internal/ui/LinkEntityResolver;

    return-object p0
.end method
