.class public final Lcom/coui/component/responsiveui/ResponsiveUIFeature$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# instance fields
.field public final synthetic a:Lcom/coui/component/responsiveui/ResponsiveUIFeature;


# direct methods
.method public constructor <init>(Lcom/coui/component/responsiveui/ResponsiveUIFeature;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/component/responsiveui/ResponsiveUIFeature$2;->a:Lcom/coui/component/responsiveui/ResponsiveUIFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object p0, p0, Lcom/coui/component/responsiveui/ResponsiveUIFeature$2;->a:Lcom/coui/component/responsiveui/ResponsiveUIFeature;

    invoke-static {p0}, Lcom/coui/component/responsiveui/ResponsiveUIFeature;->access$getActivityReference$p(Lcom/coui/component/responsiveui/ResponsiveUIFeature;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    if-eqz p0, :cond_25

    invoke-static {}, Lcom/coui/component/responsiveui/ResponsiveUIFeature;->access$getFeatureMap$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    return-void
.end method
