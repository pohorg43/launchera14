.class final Lpantanal/app/instant/InstantCardImpl$cardCallback$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/instant/InstantCardImpl;-><init>(Landroid/content/Context;Lpantanal/app/bean/CardViewInfo;Lpantanal/app/bean/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lpantanal/app/instant/IInstantCardCallback;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lpantanal/app/instant/InstantCardImpl;


# direct methods
.method public constructor <init>(Lpantanal/app/instant/InstantCardImpl;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/instant/InstantCardImpl$cardCallback$1;->this$0:Lpantanal/app/instant/InstantCardImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lpantanal/app/instant/IInstantCardCallback;

    invoke-virtual {p0, p1}, Lpantanal/app/instant/InstantCardImpl$cardCallback$1;->invoke(Lpantanal/app/instant/IInstantCardCallback;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke(Lpantanal/app/instant/IInstantCardCallback;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lpantanal/app/instant/InstantCardImpl$cardCallback$1;->this$0:Lpantanal/app/instant/InstantCardImpl;

    invoke-static {p0}, Lpantanal/app/instant/InstantCardImpl;->access$getCardEngine$p(Lpantanal/app/instant/InstantCardImpl;)Lpantanal/app/instant/engine/InstantCardEngine;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-virtual {p0, p1}, Lpantanal/app/instant/engine/InstantCardEngine;->setCardMessageCallback(Lpantanal/app/instant/IInstantCardCallback;)V

    :cond_10
    return-void
.end method
