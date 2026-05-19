.class public final Lpantanal/app/ICardLifecycle$DefaultImpls;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/ICardLifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static onForceUpdate(Lpantanal/app/ICardLifecycle;Lpantanal/app/ICardLifecycle$LifeCycleValue;)V
    .registers 2

    const-string p0, "lifecycle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onScrollState(Lpantanal/app/ICardLifecycle;I)V
    .registers 2

    return-void
.end method
