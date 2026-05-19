.class public abstract Lio/branch/search/ui/ImageLoadingStrategy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;
.implements Lio/branch/search/ui/Image;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/ui/ImageLoadingStrategy$AppIcon;,
        Lio/branch/search/ui/ImageLoadingStrategy$Url;,
        Lio/branch/search/ui/ImageLoadingStrategy$Shortcut;,
        Lio/branch/search/ui/ImageLoadingStrategy$FromCache;,
        Lio/branch/search/ui/ImageLoadingStrategy$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000 \u00052\u00020\u00012\u00020\u0002:\u0005\u0006\u0007\b\t\nB\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004\u0082\u0001\u0004\u000b\f\r\u000e¨\u0006\u000f"
    }
    d2 = {
        "Lio/branch/search/ui/ImageLoadingStrategy;",
        "Landroid/os/Parcelable;",
        "Lio/branch/search/ui/Image;",
        "<init>",
        "()V",
        "Companion",
        "AppIcon",
        "a",
        "FromCache",
        "Shortcut",
        "Url",
        "Lio/branch/search/ui/ImageLoadingStrategy$AppIcon;",
        "Lio/branch/search/ui/ImageLoadingStrategy$Url;",
        "Lio/branch/search/ui/ImageLoadingStrategy$Shortcut;",
        "Lio/branch/search/ui/ImageLoadingStrategy$FromCache;",
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
.field public static final Companion:Lio/branch/search/ui/ImageLoadingStrategy$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/ui/ImageLoadingStrategy$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/ui/ImageLoadingStrategy$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/ui/ImageLoadingStrategy;->Companion:Lio/branch/search/ui/ImageLoadingStrategy$a;

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
