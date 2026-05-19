.class public final Lpantanal/app/instant/engine/InstantCardEngine$cardVisibilityState$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/app/instant/internal/InstantCardVisibilityState$IVisibilityStateChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/instant/engine/InstantCardEngine;-><init>(Ljava/lang/String;Lpantanal/app/ILaunchInterceptor;Lpantanal/app/instant/InstantConfiguration;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lpantanal/app/instant/engine/InstantCardEngine;


# direct methods
.method public constructor <init>(Lpantanal/app/instant/engine/InstantCardEngine;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/instant/engine/InstantCardEngine$cardVisibilityState$1;->this$0:Lpantanal/app/instant/engine/InstantCardEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInvisible()V
    .registers 1

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantCardEngine$cardVisibilityState$1;->this$0:Lpantanal/app/instant/engine/InstantCardEngine;

    invoke-virtual {p0}, Lpantanal/app/instant/engine/InstantCardEngine;->onCardInVisible()V

    return-void
.end method

.method public onVisible()V
    .registers 1

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantCardEngine$cardVisibilityState$1;->this$0:Lpantanal/app/instant/engine/InstantCardEngine;

    invoke-virtual {p0}, Lpantanal/app/instant/engine/InstantCardEngine;->onCardVisible()V

    return-void
.end method
