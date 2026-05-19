.class public Lcom/android/launcher3/util/DisplayController$Info;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/DisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field public final currentSize:Landroid/graphics/Point;

.field public final cutout:Landroid/graphics/Rect;

.field private final densityDpi:I

.field public final displayId:Ljava/lang/String;

.field public final fontScale:F

.field private final mPerDisplayBounds:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Lcom/android/launcher3/util/window/CachedDisplayInfo;",
            "[",
            "Lcom/android/launcher3/util/WindowBounds;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mScreenSizeDp:Lcom/android/launcher3/util/DisplayController$PortraitSize;

.field public metrics:Landroid/util/DisplayMetrics;

.field public final navigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

.field public final rotation:I

.field public final supportedBounds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/launcher3/util/WindowBounds;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .registers 5

    new-instance v0, Lcom/android/launcher3/util/window/WindowManagerProxy;

    invoke-direct {v0}, Lcom/android/launcher3/util/window/WindowManagerProxy;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/launcher3/util/DisplayController$Info;-><init>(Landroid/content/Context;Landroid/view/Display;Lcom/android/launcher3/util/window/WindowManagerProxy;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;Lcom/android/launcher3/util/window/WindowManagerProxy;Landroid/util/ArrayMap;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/Display;",
            "Lcom/android/launcher3/util/window/WindowManagerProxy;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Lcom/android/launcher3/util/window/CachedDisplayInfo;",
            "[",
            "Lcom/android/launcher3/util/WindowBounds;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/util/DisplayController$Info;->mPerDisplayBounds:Landroid/util/ArrayMap;

    invoke-virtual {p3, p1, p2}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDisplayInfo(Landroid/content/Context;Landroid/view/Display;)Lcom/android/launcher3/util/window/CachedDisplayInfo;

    move-result-object v2

    iget v3, v2, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    iput v3, p0, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    iget-object v3, v2, Lcom/android/launcher3/util/window/CachedDisplayInfo;->size:Landroid/graphics/Point;

    iput-object v3, p0, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget-object v4, v2, Lcom/android/launcher3/util/window/CachedDisplayInfo;->id:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/launcher3/util/DisplayController$Info;->displayId:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/launcher3/util/window/CachedDisplayInfo;->cutout:Landroid/graphics/Rect;

    iput-object v5, p0, Lcom/android/launcher3/util/DisplayController$Info;->cutout:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v6, v5, Landroid/content/res/Configuration;->fontScale:F

    iput v6, p0, Lcom/android/launcher3/util/DisplayController$Info;->fontScale:F

    iget v6, v5, Landroid/content/res/Configuration;->densityDpi:I

    iput v6, p0, Lcom/android/launcher3/util/DisplayController$Info;->densityDpi:I

    new-instance v6, Lcom/android/launcher3/util/DisplayController$PortraitSize;

    iget v7, v5, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v5, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-direct {v6, v7, v5}, Lcom/android/launcher3/util/DisplayController$PortraitSize;-><init>(II)V

    iput-object v6, p0, Lcom/android/launcher3/util/DisplayController$Info;->mScreenSizeDp:Lcom/android/launcher3/util/DisplayController$PortraitSize;

    invoke-static {p1}, Lcom/android/launcher3/util/DisplayController;->access$200(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    invoke-virtual {v1, p4}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/util/Pair;

    invoke-virtual {p3, p1, p2, v2}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getRealBounds(Landroid/content/Context;Landroid/view/Display;Lcom/android/launcher3/util/window/CachedDisplayInfo;)Lcom/android/launcher3/util/WindowBounds;

    move-result-object p2

    if-nez p4, :cond_59

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_ab

    :cond_59
    iget-object p3, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, [Lcom/android/launcher3/util/WindowBounds;

    iget v0, v2, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    aget-object p3, p3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expectedBounds = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", realBounds = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", displayId = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "DisplayController"

    invoke-static {v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/android/launcher3/util/WindowBounds;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    iget-object p3, p3, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget-object v0, p2, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    if-eq p3, v0, :cond_ab

    :cond_93
    const/4 p3, 0x4

    new-array v0, p3, [Lcom/android/launcher3/util/WindowBounds;

    iget-object p4, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p4, v5, v0, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p3, v2, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    aput-object p2, v0, p3

    invoke-virtual {v2}, Lcom/android/launcher3/util/window/CachedDisplayInfo;->normalize()Lcom/android/launcher3/util/window/CachedDisplayInfo;

    move-result-object p2

    invoke-static {p2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    invoke-virtual {v1, v4, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ab
    :goto_ab
    invoke-static {p1}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/util/DisplayController$Info;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    new-instance p2, Lcom/android/common/a;

    invoke-direct {p2, p0}, Lcom/android/common/a;-><init>(Lcom/android/launcher3/util/DisplayController$Info;)V

    invoke-interface {p1, p2}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "displayId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", currentSize: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "b/211775278"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "perDisplayBounds: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/util/DisplayController$Info;Landroid/util/Pair;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/DisplayController$Info;->lambda$new$0(Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/util/DisplayController$Info;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->densityDpi:I

    return p0
.end method

.method public static synthetic access$100(Lcom/android/launcher3/util/DisplayController$Info;)Lcom/android/launcher3/util/DisplayController$PortraitSize;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->mScreenSizeDp:Lcom/android/launcher3/util/DisplayController$PortraitSize;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/util/Pair;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [Lcom/android/launcher3/util/WindowBounds;

    invoke-static {p0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_65

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_65

    :cond_12
    check-cast p1, Lcom/android/launcher3/util/DisplayController$Info;

    iget v2, p0, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    iget v3, p1, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    if-ne v2, v3, :cond_63

    iget v2, p1, Lcom/android/launcher3/util/DisplayController$Info;->fontScale:F

    iget v3, p0, Lcom/android/launcher3/util/DisplayController$Info;->fontScale:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_63

    iget v2, p0, Lcom/android/launcher3/util/DisplayController$Info;->densityDpi:I

    iget v3, p1, Lcom/android/launcher3/util/DisplayController$Info;->densityDpi:I

    if-ne v2, v3, :cond_63

    iget-object v2, p0, Lcom/android/launcher3/util/DisplayController$Info;->displayId:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher3/util/DisplayController$Info;->displayId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    iget-object v2, p0, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget-object v3, p1, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    iget-object v2, p0, Lcom/android/launcher3/util/DisplayController$Info;->cutout:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/launcher3/util/DisplayController$Info;->cutout:Landroid/graphics/Rect;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    iget-object v2, p0, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    iget-object v3, p1, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne v2, v3, :cond_63

    iget-object v2, p0, Lcom/android/launcher3/util/DisplayController$Info;->mScreenSizeDp:Lcom/android/launcher3/util/DisplayController$PortraitSize;

    iget-object v3, p1, Lcom/android/launcher3/util/DisplayController$Info;->mScreenSizeDp:Lcom/android/launcher3/util/DisplayController$PortraitSize;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/launcher3/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_63

    goto :goto_64

    :cond_63
    move v0, v1

    :goto_64
    return v0

    :cond_65
    :goto_65
    return v1
.end method

.method public getDensityDpi()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->densityDpi:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/launcher3/util/DisplayController$Info;->displayId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/launcher3/util/DisplayController$Info;->cutout:Landroid/graphics/Rect;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/launcher3/util/DisplayController$Info;->fontScale:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/launcher3/util/DisplayController$Info;->densityDpi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/launcher3/util/DisplayController$Info;->mScreenSizeDp:Lcom/android/launcher3/util/DisplayController$PortraitSize;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    const/16 v1, 0x8

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isTablet(Lcom/android/launcher3/util/WindowBounds;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/DisplayController$Info;->smallestSizeDp(Lcom/android/launcher3/util/WindowBounds;)F

    move-result p0

    const/high16 p1, 0x44160000  # 600.0f

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public smallestSizeDp(Lcom/android/launcher3/util/WindowBounds;)F
    .registers 3

    iget-object v0, p1, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object p1, p1, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    iget p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->densityDpi:I

    invoke-static {p1, p0}, Lcom/android/launcher3/Utilities;->dpiFromPx(FI)F

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "Info{rotation="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", displayId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/util/DisplayController$Info;->displayId:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", currentSize="

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cutout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/util/DisplayController$Info;->cutout:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/util/DisplayController$Info;->fontScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", densityDpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/util/DisplayController$Info;->densityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", navigationMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenSizeDp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/util/DisplayController$Info;->mScreenSizeDp:Lcom/android/launcher3/util/DisplayController$PortraitSize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", supportedBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", metrics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
