.class public final Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils$initRegionSamplingHelper$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->initRegionSamplingHelper(Landroid/view/View;Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSampledRegion(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 2

    const-string/jumbo p0, "sampledView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->access$getMSampledRegion$p()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public onRegionDarknessChanged(Z)V
    .registers 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onRegionDarknessChanged isRegionDark: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RegionSamplingUtils"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->access$getMIsRegionDarkFromSample$p()Z

    move-result p0

    if-eq p0, p1, :cond_25

    sget-object p0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->INSTANCE:Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->access$setMIsRegionDarkFromSample$p(Z)V

    invoke-static {}, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->access$updateRegionDarkAndDispatchChange()V

    :cond_25
    return-void
.end method
