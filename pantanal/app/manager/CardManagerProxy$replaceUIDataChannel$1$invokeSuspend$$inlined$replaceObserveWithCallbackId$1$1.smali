.class public final Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1$invokeSuspend$$inlined$replaceObserveWithCallbackId$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1$invokeSuspend$$inlined$replaceObserveWithCallbackId$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "[B",
        "Lh4/z;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nServiceManagerProxy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ServiceManagerProxy.kt\npantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2$callback$1\n*L\n1#1,452:1\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $cb:Lkotlin/jvm/functions/Function1;

.field public final synthetic this$0:Lpantanal/app/manager/ServiceManagerProxy;


# direct methods
.method public constructor <init>(Lpantanal/app/manager/ServiceManagerProxy;Lkotlin/jvm/functions/Function1;)V
    .registers 3

    iput-object p1, p0, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1$invokeSuspend$$inlined$replaceObserveWithCallbackId$1$1;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    iput-object p2, p0, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1$invokeSuspend$$inlined$replaceObserveWithCallbackId$1$1;->$cb:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1$invokeSuspend$$inlined$replaceObserveWithCallbackId$1$1;->invoke([B)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke([B)V
    .registers 8

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1$invokeSuspend$$inlined$replaceObserveWithCallbackId$1$1;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    const-class v1, Lpantanal/app/nano/UIDataProto;

    invoke-virtual {v0, v1}, Lpantanal/app/manager/ServiceManagerProxy;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type pantanal.app.nano.UIDataProto"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lpantanal/app/nano/UIDataProto;

    sget-object v0, Lpantanal/app/manager/util/CardScope;->INSTANCE:Lpantanal/app/manager/util/CardScope;

    invoke-static {}, Lpantanal/app/manager/util/DispatchersUtil;->main()Lm7/f0;

    move-result-object v1

    new-instance v3, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1$invokeSuspend$$inlined$replaceObserveWithCallbackId$1$1$1;

    iget-object p0, p0, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1$invokeSuspend$$inlined$replaceObserveWithCallbackId$1$1;->$cb:Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1$invokeSuspend$$inlined$replaceObserveWithCallbackId$1$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/google/protobuf/nano/MessageNano;Ll4/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method
