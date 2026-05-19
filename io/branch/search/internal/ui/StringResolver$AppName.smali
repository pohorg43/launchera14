.class public final Lio/branch/search/internal/ui/StringResolver$AppName;
.super Lio/branch/search/internal/ui/StringResolver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/ui/StringResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppName"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002HÆ\u0001¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0007"
    }
    d2 = {
        "Lio/branch/search/internal/ui/StringResolver$AppName;",
        "Lio/branch/search/internal/ui/StringResolver;",
        "Lkotlinx/serialization/KSerializer;",
        "serializer",
        "()Lkotlinx/serialization/KSerializer;",
        "<init>",
        "()V",
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
.field public static final a:Lio/branch/search/internal/ui/StringResolver$AppName;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/branch/search/internal/ui/StringResolver$AppName;

    invoke-direct {v0}, Lio/branch/search/internal/ui/StringResolver$AppName;-><init>()V

    sput-object v0, Lio/branch/search/internal/ui/StringResolver$AppName;->a:Lio/branch/search/internal/ui/StringResolver$AppName;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/branch/search/internal/ui/StringResolver;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lio/branch/search/internal/ui/StringResolver$AppName;",
            ">;"
        }
    .end annotation

    new-instance p0, Lz7/t0;

    sget-object v0, Lio/branch/search/internal/ui/StringResolver$AppName;->a:Lio/branch/search/internal/ui/StringResolver$AppName;

    const-string v1, "AppName"

    invoke-direct {p0, v1, v0}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
