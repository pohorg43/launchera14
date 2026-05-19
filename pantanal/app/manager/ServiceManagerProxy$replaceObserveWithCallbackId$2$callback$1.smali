.class public final Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2$callback$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lpantanal/app/manager/ServiceManagerProxy;


# direct methods
.method public constructor <init>(Lpantanal/app/manager/ServiceManagerProxy;Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpantanal/app/manager/ServiceManagerProxy;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2$callback$1;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    iput-object p2, p0, Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2$callback$1;->$cb:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2$callback$1;->invoke([B)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke([B)V
    .registers 11

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2$callback$1;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    const/4 v1, 0x4

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {v0, v1}, Lpantanal/app/manager/ServiceManagerProxy;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    sget-object v3, Lpantanal/app/manager/util/CardScope;->INSTANCE:Lpantanal/app/manager/util/CardScope;

    invoke-static {}, Lpantanal/app/manager/util/DispatchersUtil;->main()Lm7/f0;

    move-result-object v4

    new-instance v6, Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2$callback$1$1;

    iget-object p0, p0, Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2$callback$1;->$cb:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x0

    invoke-direct {v6, p0, p1, v0}, Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2$callback$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/google/protobuf/nano/MessageNano;Ll4/d;)V

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method
