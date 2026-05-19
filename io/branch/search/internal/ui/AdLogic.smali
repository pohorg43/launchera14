.class public abstract Lio/branch/search/internal/ui/AdLogic;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/internal/ui/AdLogic$Static;,
        Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;,
        Lio/branch/search/internal/ui/AdLogic$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/a;
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/internal/ui/AdLogic$Companion;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/internal/ui/AdLogic$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/internal/ui/AdLogic$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/internal/ui/AdLogic;->Companion:Lio/branch/search/internal/ui/AdLogic$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lio/branch/search/internal/ui/LinkEntityResolver;
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lio/branch/search/internal/ui/AdLogic;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    instance-of v0, p0, Lio/branch/search/internal/ui/AdLogic$Static;

    if-eqz v0, :cond_1d

    instance-of v0, p1, Lio/branch/search/internal/ui/AdLogic$Static;

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lio/branch/search/internal/ui/AdLogic;->a()Lio/branch/search/internal/ui/LinkEntityResolver;

    move-result-object p0

    check-cast p1, Lio/branch/search/internal/ui/AdLogic;

    invoke-virtual {p1}, Lio/branch/search/internal/ui/AdLogic;->a()Lio/branch/search/internal/ui/LinkEntityResolver;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1d
    instance-of v0, p0, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;

    if-eqz v0, :cond_41

    instance-of v0, p1, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;

    if-eqz v0, :cond_41

    invoke-virtual {p0}, Lio/branch/search/internal/ui/AdLogic;->a()Lio/branch/search/internal/ui/LinkEntityResolver;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Lio/branch/search/internal/ui/AdLogic;

    invoke-virtual {v2}, Lio/branch/search/internal/ui/AdLogic;->a()Lio/branch/search/internal/ui/LinkEntityResolver;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    check-cast p0, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;

    iget p0, p0, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;->a:I

    check-cast p1, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;

    iget p1, p1, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;->a:I

    if-ne p0, p1, :cond_41

    const/4 v1, 0x1

    :cond_41
    return v1
.end method
