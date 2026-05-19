.class public abstract Lio/branch/search/internal/ui/ImageResolver;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/internal/ui/ImageResolver$FromApp;,
        Lio/branch/search/internal/ui/ImageResolver$FromLink;,
        Lio/branch/search/internal/ui/ImageResolver$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/a;
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/internal/ui/ImageResolver$Companion;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/internal/ui/ImageResolver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/internal/ui/ImageResolver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/internal/ui/ImageResolver;->Companion:Lio/branch/search/internal/ui/ImageResolver$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
