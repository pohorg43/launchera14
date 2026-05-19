.class public final Lpantanal/app/instant/InstantCardImpl$cardVisibilityState$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/app/instant/internal/InstantCardVisibilityState$IVisibilityStateChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/instant/InstantCardImpl;-><init>(Landroid/content/Context;Lpantanal/app/bean/CardViewInfo;Lpantanal/app/bean/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lpantanal/app/instant/InstantCardImpl;


# direct methods
.method public constructor <init>(Lpantanal/app/instant/InstantCardImpl;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/instant/InstantCardImpl$cardVisibilityState$1;->this$0:Lpantanal/app/instant/InstantCardImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInvisible()V
    .registers 1

    iget-object p0, p0, Lpantanal/app/instant/InstantCardImpl$cardVisibilityState$1;->this$0:Lpantanal/app/instant/InstantCardImpl;

    invoke-static {p0}, Lpantanal/app/instant/InstantCardImpl;->access$getCardEngine$p(Lpantanal/app/instant/InstantCardImpl;)Lpantanal/app/instant/engine/InstantCardEngine;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lpantanal/app/instant/engine/InstantCardEngine;->onCardInVisible()V

    :cond_b
    return-void
.end method

.method public onVisible()V
    .registers 1

    iget-object p0, p0, Lpantanal/app/instant/InstantCardImpl$cardVisibilityState$1;->this$0:Lpantanal/app/instant/InstantCardImpl;

    invoke-static {p0}, Lpantanal/app/instant/InstantCardImpl;->access$getCardEngine$p(Lpantanal/app/instant/InstantCardImpl;)Lpantanal/app/instant/engine/InstantCardEngine;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lpantanal/app/instant/engine/InstantCardEngine;->onCardVisible()V

    :cond_b
    return-void
.end method
