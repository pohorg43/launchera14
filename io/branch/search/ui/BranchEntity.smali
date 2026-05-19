.class public abstract Lio/branch/search/ui/BranchEntity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/ui/BranchEntity$AppEntity;,
        Lio/branch/search/ui/BranchEntity$LinkEntity;,
        Lio/branch/search/ui/BranchEntity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000 \u00042\u00020\u0001:\u0003\u0005\u0006\u0007B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0002\b\t¨\u0006\n"
    }
    d2 = {
        "Lio/branch/search/ui/BranchEntity;",
        "Landroid/os/Parcelable;",
        "<init>",
        "()V",
        "Companion",
        "AppEntity",
        "a",
        "LinkEntity",
        "Lio/branch/search/ui/BranchEntity$AppEntity;",
        "Lio/branch/search/ui/BranchEntity$LinkEntity;",
        "BranchSearchSDK_forPartnersRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/ui/BranchEntity$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/ui/BranchEntity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/ui/BranchEntity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/ui/BranchEntity;->Companion:Lio/branch/search/ui/BranchEntity$a;

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


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Lio/branch/search/ui/ImageLoadingStrategy;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public final e(Landroid/content/Context;)Lio/branch/search/BranchError;
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->j()Lio/branch/search/IBranchIntentHandler;

    move-result-object v0

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    invoke-virtual {p0, p1, v0}, Lio/branch/search/ui/BranchEntity;->f(Landroid/content/Context;Lio/branch/search/IBranchIntentHandler;)Lio/branch/search/BranchError;

    move-result-object p0

    return-object p0
.end method

.method public abstract f(Landroid/content/Context;Lio/branch/search/IBranchIntentHandler;)Lio/branch/search/BranchError;
.end method

.method public abstract g(Landroid/view/View;)V
.end method
