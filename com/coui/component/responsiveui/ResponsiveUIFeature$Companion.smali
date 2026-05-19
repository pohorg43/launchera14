.class public final Lcom/coui/component/responsiveui/ResponsiveUIFeature$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/component/responsiveui/ResponsiveUIFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
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
.method public final getFoldingState(Landroid/content/Context;)Lcom/coui/component/responsiveui/status/FoldingState;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/coui/component/responsiveui/status/FoldingStateUtil;->getFoldingState(Landroid/content/Context;)Lcom/coui/component/responsiveui/status/FoldingState;

    move-result-object p0

    return-object p0
.end method

.method public final getOrCreate(Landroidx/activity/ComponentActivity;)Lcom/coui/component/responsiveui/IResponsiveUIFeature;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->hashCode()I

    move-result p0

    invoke-static {}, Lcom/coui/component/responsiveui/ResponsiveUIFeature;->access$getFeatureMap$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/component/responsiveui/IResponsiveUIFeature;

    if-nez v0, :cond_2a

    new-instance v0, Lcom/coui/component/responsiveui/ResponsiveUIFeature;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/coui/component/responsiveui/ResponsiveUIFeature;-><init>(Landroidx/activity/ComponentActivity;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {}, Lcom/coui/component/responsiveui/ResponsiveUIFeature;->access$getFeatureMap$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    return-object v0
.end method

.method public final isSupportWindowFeature()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/coui/component/responsiveui/status/WindowFeatureUtil;->isSupportWindowFeature()Z

    move-result p0

    return p0
.end method
